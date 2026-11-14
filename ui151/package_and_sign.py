"""Package149 over exact148 and preserve its verified signing certificate."""
from pathlib import Path, PurePosixPath
import hashlib
import json
import os
import re
import struct
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parent.parent
TARGET = Path(__file__).resolve().parent
BASE = ROOT / 'output/150-gTouchPal-6.2.7.1.apk'
BASE_SHA256 = 'd93a417b7bd2e0d601fbffcd1ab0c9266aeb0cace36bc0fbb8fdf6b23144eb54'
SIGNED = ROOT / 'output/151-gTouchPal-6.2.7.1.apk'
SIGNER = ROOT / 'tools/apksigner.jar'
KEYSTORE = Path(os.environ['TOUCHPAL_KEYSTORE']) if os.environ.get('TOUCHPAL_KEYSTORE') else None
SIGNATURE_SUFFIXES = ('.SF', '.RSA', '.DSA', '.EC')
DEX_NAME = r'classes(?:[2-9]|[1-9][0-9]+)?\.dex'
REMOVED = set()


def sha(data):
    return hashlib.sha256(data).hexdigest()


def signature_entry(name):
    upper = name.upper()
    return upper.startswith('META-INF/') and (
        upper.endswith(SIGNATURE_SUFFIXES) or upper == 'META-INF/MANIFEST.MF')


def collect_payload():
    """Return explicit APK-path -> source-file mapping; reject hidden collisions."""
    result = {}

    def add(name, source):
        path = PurePosixPath(name)
        assert not path.is_absolute() and '..' not in path.parts, name
        assert name.startswith(('assets/', 'res/')), name
        assert source.is_file() and not source.is_symlink(), source
        if name in result:
            assert result[name].read_bytes() == source.read_bytes(), 'Conflicting overlay: ' + name
        result[name] = source

    asset_dir = TARGET / 'overlay/assets'
    if asset_dir.exists():
        for p in sorted(asset_dir.rglob('*')):
            if p.is_file():
                add('assets/' + str(p.relative_to(asset_dir)), p)
    raw_dir = TARGET / 'overlay/apk'
    if raw_dir.exists():
        for p in sorted(raw_dir.rglob('*')):
            if p.is_file():
                add(str(p.relative_to(raw_dir)), p)
    for name in ['touchpal_history.html', 'touchpal_features.html']:
        p = TARGET / 'assets' / name
        if p.exists():
            add('assets/' + name, p)
    return result


def write_entry(output, name, data, source):
    info = zipfile.ZipInfo(name, source.date_time)
    info.compress_type = zipfile.ZIP_STORED if name.endswith(('.lua.png', '.sur.png')) else source.compress_type
    info.external_attr = source.external_attr
    if name.endswith('.tpl'): info._compresslevel = 9
    if info.compress_type == zipfile.ZIP_STORED:
        alignment = 16384 if name.startswith('lib/') and name.endswith('.so') else 4
        padding = (-(output.fp.tell() + 30 + len(name.encode('utf-8')))) % alignment
        if padding:
            if padding < 4:
                padding += alignment
            info.extra = struct.pack('<HH', 0xd935, padding - 4) + bytes(padding - 4)
    output.writestr(info, data)


def verify_alignment(path):
    with path.open('rb') as stream, zipfile.ZipFile(path) as apk:
        for info in apk.infolist():
            if info.compress_type != zipfile.ZIP_STORED:
                continue
            stream.seek(info.header_offset)
            header = stream.read(30)
            name_size, extra_size = struct.unpack_from('<HH', header, 26)
            offset = info.header_offset + 30 + name_size + extra_size
            alignment = 16384 if info.filename.startswith('lib/') and info.filename.endswith('.so') else 4
            assert offset % alignment == 0, (info.filename, offset, alignment)


def main():
    assert not (TARGET / 'SOURCE_PUBLISHED.json').exists(), 'Published SOURCE is immutable'
    assert not (TARGET / 'APK_PUBLISHED.json').exists(), 'Published APK is immutable'
    assert KEYSTORE is not None and KEYSTORE.is_file(), 'Set TOUCHPAL_KEYSTORE to the verified downloaded key'
    assert sha(BASE.read_bytes()) == BASE_SHA256
    payload = collect_payload()
    replacements = {name: path.read_bytes() for name, path in payload.items()}
    with zipfile.ZipFile(TARGET / 'rebuilt.apk') as built:
        dex_files = [n for n in built.namelist() if re.fullmatch(DEX_NAME, n)]
        assert 'classes.dex' in dex_files
        for name in dex_files:
            replacements[name] = built.read(name)
    from patch_version import patch
    with zipfile.ZipFile(BASE) as base:
        replacements['AndroidManifest.xml'], version = patch(base.read('AndroidManifest.xml'))
        expected = {n for n in base.namelist() if not signature_entry(n) and n not in REMOVED} | set(replacements)
        assert len(base.namelist()) == len(set(base.namelist())), 'Duplicate base ZIP entry'
        for n in base.namelist():
            if re.fullmatch(DEX_NAME, n):
                assert n in replacements, 'Rebuild dropped DEX: ' + n
        with zipfile.ZipFile(TARGET / 'unsigned.apk', 'w') as output:
            for info in base.infolist():
                name = info.filename
                if signature_entry(name) or name in REMOVED:
                    continue
                write_entry(output, name, replacements.get(name, base.read(name)), info)
            for name in sorted(set(replacements) - set(base.namelist())):
                info = zipfile.ZipInfo(name, (2026, 11, 8, 0, 0, 0))
                info.compress_type = zipfile.ZIP_DEFLATED if name.endswith('.tpl') else zipfile.ZIP_STORED if name.startswith('assets/') else zipfile.ZIP_DEFLATED
                info.external_attr = 0o100644 << 16
                write_entry(output, name, replacements[name], info)
    (TARGET / 'VERSION.json').write_text(json.dumps(version, indent=2) + '\n')
    verify_alignment(TARGET / 'unsigned.apk')

    # Read private signing data only at signing time; temporary files are owner-only.
    info = Path(os.environ.get('TOUCHPAL_SIGNING_INFO',str(ROOT / 'signing-info.private'))).read_text()

    def value(label):
        match = re.search(r'^' + re.escape(label) + r':\s*(.+)$', info, re.M)
        assert match, 'Missing signing field'
        return match.group(1).strip()

    passwords = []
    try:
        for label, filename in [('Store password', 'store.pass'), ('Key password', 'key.pass')]:
            p = TARGET / filename
            fd = os.open(p, os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o600)
            passwords.append(p)
            with os.fdopen(fd, 'w') as stream:
                stream.write(value(label))
        subprocess.run([
            'java', '-jar', str(SIGNER), 'sign', '--ks', str(KEYSTORE),
            '--ks-key-alias', value('Alias'), '--ks-pass', 'file:' + str(TARGET / 'store.pass'),
            '--key-pass', 'file:' + str(TARGET / 'key.pass'), '--min-sdk-version', '15',
            '--v1-signing-enabled', 'true', '--v2-signing-enabled', 'true',
            '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
            '--alignment-preserved', 'true', '--lib-page-alignment', '16384',
            '--out', str(SIGNED), str(TARGET / 'unsigned.apk'),
        ], check=True)
    finally:
        for p in passwords:
            p.unlink(missing_ok=True)

    with zipfile.ZipFile(BASE) as base, zipfile.ZipFile(SIGNED) as signed:
        assert signed.testzip() is None
        actual = {n for n in signed.namelist() if not signature_entry(n)}
        assert actual == expected, (sorted(expected - actual), sorted(actual - expected))
        changed, unchanged = [], 0
        for name in base.namelist():
            if signature_entry(name) or name in REMOVED:
                continue
            original, result = base.read(name), signed.read(name)
            if name in replacements:
                assert result == replacements[name], name
                if result != original:
                    changed.append(name)
            else:
                assert result == original, 'Unexpected change: ' + name
                unchanged += 1
            if name.startswith('lib/'):
                assert result == original, 'Native library changed: ' + name
        for name, data in replacements.items():
            assert signed.read(name) == data, name
    verify_alignment(SIGNED)
    result = {
        'apk': str(SIGNED.relative_to(ROOT)), 'bytes': SIGNED.stat().st_size,
        'sha256': sha(SIGNED.read_bytes()), 'base_sha256': BASE_SHA256,
        'changed_existing_entries': sorted(changed),
        'new_entries': sorted(set(replacements) - set(base.namelist())),
        'removed_entries': sorted(REMOVED),
        'unchanged_entries_verified': unchanged, 'native_libraries_unchanged': True,
        'overlay': {n: {'source': str(p.relative_to(TARGET)), 'sha256': sha(p.read_bytes())}
                    for n, p in sorted(payload.items())},
    }
    (TARGET / 'PACKAGE_VERIFIED.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
