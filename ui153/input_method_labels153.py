"""Rename the two existing Android IME subtypes without changing their identities.

Append two default string resources, preserving every old resource ID/value.
The binary XML change adds only android:label to each subtype, for all SDK variants.
"""
import hashlib
import struct
from axml_tools import U32, append_pool, chunks, strings

LABELS = {1001: ('tp153_ime_en_ru', 'gTouchPal EN/ru'),
          1002: ('tp153_ime_ru_en', 'gTouchPal RU/en')}
METHODS = ['res/xml/touchpal_method.xml', 'res/xml-v16/touchpal_method.xml',
           'res/xml-v24/touchpal_method.xml']


def resize(data):
    result = bytearray(data)
    struct.pack_into('<I', result, 4, len(result))
    return bytes(result)


def add_strings(data):
    header = struct.unpack_from('<H', data, 2)[0]
    nodes = list(chunks(data, header))
    poolpos, _, _, poolsize = next(n for n in nodes if n[1] == 1)
    original_pool = strings(data, poolpos)
    values = [value for key, value in LABELS.values()]
    new_pool = append_pool(data[poolpos:poolpos+poolsize], values)
    packages = [n for n in nodes if n[1] == 0x200]
    assert len(packages) == 1
    pos, _, ph, size = packages[0]
    package = data[pos:pos+size]
    assert U32(package, 8) == 0x7f and ph == 288 and U32(package, 284) == 0
    type_pool_at, key_pool_at = U32(package, 268), U32(package, 276)
    types = strings(package, type_pool_at)
    string_type = types.index('string') + 1
    keys = strings(package, key_pool_at)
    names = [key for key, value in LABELS.values()]
    assert not set(names).intersection(keys), 'Already patched resources'
    key_size = U32(package, key_pool_at+4)
    key_pool = append_pool(package[key_pool_at:key_pool_at+key_size], names)
    children = list(chunks(package, ph))
    spec = next(n for n in children if n[1] == 0x202 and package[n[0]+8] == string_type)
    count = U32(package, spec[0]+12)
    assert count + 2 < 65536
    ids = {subtype: 0x7f000000 | (string_type << 16) | (count+i)
           for i, subtype in enumerate(LABELS)}
    new_package = bytearray(package[:ph])
    defaults = 0
    for at, typ, head, length in children:
        part = package[at:at+length]
        if at == key_pool_at:
            part = key_pool
        elif typ == 0x202 and part[8] == string_type:
            assert U32(part, 12) == count and head == 16
            part = bytearray(part)
            struct.pack_into('<I', part, 12, count+2)
            part += struct.pack('<II', 0, 0)
            part = resize(part)
        elif typ == 0x201 and part[8] == string_type:
            assert part[9] == 0 and U32(part, 12) == count, 'Only dense original types supported'
            start = U32(part, 16)
            assert start == head+count*4
            body = part[start:]
            default = not any(part[24:head])
            extra_offsets = [0xffffffff, 0xffffffff]
            if default:
                defaults += 1
                for i in range(2):
                    extra_offsets[i] = len(body)
                    body += struct.pack('<HHI', 8, 0, len(keys)+i)
                    body += struct.pack('<HBBI', 8, 0, 3, len(original_pool)+i)
            new_part = bytearray(part[:head])
            struct.pack_into('<II', new_part, 12, count+2, start+8)
            new_part += part[head:start] + struct.pack('<II', *extra_offsets) + body
            assert new_part[start+8:start+8+len(part[start:])] == part[start:]
            part = resize(new_part)
        new_package += part
    assert defaults == 1
    new_package = resize(new_package)
    output = bytearray(data[:header])
    for at, typ, head, length in nodes:
        output += new_pool if at == poolpos else new_package if at == pos else data[at:at+length]
    return resize(output), ids


def attributes(part, pool):
    start, size, count = struct.unpack_from('<HHH', part, 24)
    assert size == 20
    return [(pool[U32(part, 16+start+i*size+4)], part[16+start+i*size:16+start+(i+1)*size])
            for i in range(count)]


def subtype_snapshot(data):
    pool_at = next(n[0] for n in chunks(data) if n[1] == 1)
    pool = strings(data, pool_at)
    result = {}
    for pos, typ, head, size in chunks(data):
        if typ != 0x102 or pool[U32(data, pos+20)] != 'subtype':
            continue
        attrs = dict(attributes(data[pos:pos+size], pool))
        subtype = U32(attrs['subtypeId'], 16)
        result[subtype] = {key: (raw[15], pool[U32(raw, 16)] if raw[15] == 3 else U32(raw, 16))
                           for key, raw in attrs.items()}
    return result


def label_method(data, ids):
    nodes = list(chunks(data))
    poolpos, _, _, poolsize = next(n for n in nodes if n[1] == 1)
    pool = strings(data, poolpos)
    assert 'label' not in pool, 'Unexpected original label attribute'
    label_index = len(pool)
    new_pool = append_pool(data[poolpos:poolpos+poolsize], ['label'])
    resource_node = next(n for n in nodes if n[1] == 0x180)
    rp, _, rh, rs = resource_node
    resource_map = list(struct.unpack_from('<' + str((rs-rh)//4) + 'I', data, rp+rh))
    resource_map += [0]*(label_index+1-len(resource_map))
    resource_map[label_index] = 0x01010001
    new_resource_map = resize(data[rp:rp+rh]+struct.pack('<' + str(len(resource_map)) + 'I', *resource_map))
    android_ns = pool.index('http://schemas.android.com/apk/res/android')
    output = bytearray(data[:8])
    changed = set()
    before = subtype_snapshot(data)
    assert set(before) == set(LABELS)
    for pos, typ, head, size in nodes:
        part = data[pos:pos+size]
        if pos == poolpos:
            part = new_pool
        elif pos == rp:
            part = new_resource_map
        elif typ == 0x102 and pool[U32(part, 20)] == 'subtype':
            attrs = attributes(part, pool)
            subtype = U32(dict(attrs)['subtypeId'], 16)
            assert subtype in ids and subtype not in changed
            assert struct.unpack_from('<HHH', part, 30) == (0, 0, 0)
            label = struct.pack('<IIIHBBI', android_ns, label_index, 0xffffffff, 8, 0, 1, ids[subtype])
            start = struct.unpack_from('<H', part, 24)[0]
            ordered = sorted([raw for _, raw in attrs]+[label], key=lambda raw: resource_map[U32(raw, 4)])
            part = bytearray(part[:16+start]) + b''.join(ordered)
            struct.pack_into('<H', part, 28, len(ordered))
            part = resize(part)
            changed.add(subtype)
        output += part
    output = resize(output)
    after = subtype_snapshot(output)
    assert changed == set(LABELS)
    for subtype, attrs in before.items():
        assert after[subtype].pop('label') == (1, ids[subtype])
        assert after[subtype] == attrs, 'Subtype identity/behaviour changed'
    return output


def replacements(apk):
    original = apk.read('resources.arsc')
    table, ids = add_strings(original)
    result = {'resources.arsc': table}
    for name in METHODS:
        result[name] = label_method(apk.read(name), ids)
    return result, {
        'labels': {str(k): value for k, (name, value) in LABELS.items()},
        'resource_ids': {str(k): hex(v) for k, v in ids.items()},
        'subtype_identity_and_attributes_preserved': True,
        'physical_keyboard_code_unchanged': True,
        'changed_entries': {name: hashlib.sha256(value).hexdigest() for name, value in result.items()},
    }
