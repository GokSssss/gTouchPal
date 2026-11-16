"""Change only155 binary manifest version fields to156."""
import struct
from axml_tools import strings, append_pool, chunks

ACTIVITY = 'com.cootek.smartinput5.backup.BackupActivity'


def attributes(data, pos, pool):
    start, attrsize, count = struct.unpack_from('<HHH', data, pos + 24)
    assert attrsize == 20
    return {pool[struct.unpack_from('<I', data, pos + 16 + start + i * attrsize + 4)[0]]:
            pos + 16 + start + i * attrsize for i in range(count)}


def string_attribute(data, at, pool):
    assert data[at + 15] == 3
    return pool[struct.unpack_from('<I', data, at + 16)[0]]


def patch(data):
    nodes = list(chunks(data))
    poolpos, _, _, poolsize = next(n for n in nodes if n[1] == 1)
    pool = strings(data, poolpos)
    rootpos, _, _, rootsize = next(n for n in nodes if n[1] == 0x102)
    assert pool[struct.unpack_from('<I', data, rootpos + 20)[0]] == 'manifest'
    attrs = attributes(data, rootpos, pool)
    vc, vn = attrs['versionCode'], attrs['versionName']
    oldcode = struct.unpack_from('<I', data, vc + 16)[0]
    oldname = string_attribute(data, vn, pool)
    assert (oldcode, oldname) == (10068, '6.2.7.1-155')
    assert data[vc + 15] in (0x10, 0x11)
    code, name = 10069, '6.2.7.1-156'
    newpool = append_pool(data[poolpos:poolpos + poolsize], [str(code), name])
    rootnode = bytearray(data[rootpos:rootpos + rootsize])
    for at, raw, value in [(vc, len(pool), code), (vn, len(pool) + 1, len(pool) + 1)]:
        offset = at - rootpos
        struct.pack_into('<I', rootnode, offset + 8, raw)
        struct.pack_into('<I', rootnode, offset + 16, value)
    out = bytearray(data[:8])
    for pos, typ, header, size in nodes:
        out += newpool if pos == poolpos else rootnode if pos == rootpos else data[pos:pos + size]
    struct.pack_into('<I', out, 4, len(out))
    assert len(list(chunks(out))) == len(nodes)
    return bytes(out), dict(old_version_code=oldcode, version_code=code,
                            old_version_name=oldname, version_name=name,
                            activity_added=None, all_components_unchanged=True)
