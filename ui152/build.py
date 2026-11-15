"""Build152 over exact151: separate height and manual Android activation."""
from pathlib import Path
import hashlib
import json
import re
import shutil
import subprocess
import sys

from package_and_sign import BASE, BASE_SHA256, ROOT, TARGET, collect_payload

APKTOOL = ROOT / 'tools/apktool_2.12.1.jar'
VERSION_LABELS = ['ui/KeyboardBuildMark', 'settings/VoiceReportExport', 'voice/VoiceTrace']


def run(*args):
    subprocess.run([str(arg) for arg in args], check=True)


def main():
    assert not (TARGET / 'SOURCE_PUBLISHED.json').exists(), 'Published SOURCE is immutable'
    assert not (TARGET / 'APK_PUBLISHED.json').exists(), 'Published APK is immutable'
    (ROOT / 'output').mkdir(parents=True, exist_ok=True)
    (ROOT / 'framework').mkdir(parents=True, exist_ok=True)
    assert hashlib.sha256(BASE.read_bytes()).hexdigest() == BASE_SHA256
    sources = sorted((TARGET / 'src').rglob('*.java'))
    compiled = {'families': [], 'source_sha256': {}}
    if sources:
        compiled = json.loads((TARGET / 'HELPERS_COMPILED.json').read_text())
        assert {p.relative_to(TARGET).as_posix(): hashlib.sha256(p.read_bytes()).hexdigest()
                for p in sources} == compiled['source_sha256'], 'Recompile changed helpers first'

    decoded = TARGET / 'decoded'
    assert decoded.parent == TARGET and not decoded.is_symlink()
    if decoded.exists():
        shutil.rmtree(decoded)
    run('java', '-jar', APKTOOL, 'd', '-f', '-r', '-p', ROOT / 'framework',
        '-o', decoded, BASE)

    from activation152 import apply
    apply(decoded,TARGET / 'ACTIVATION_PATCH.json')

    # Recompiled top-level helpers may change anonymous-class numbering. Remove
    # only their own declared family, never the vendor skin or backup package.
    removed_families = []
    retired=json.loads((TARGET / "REMOVED_FAMILIES.json").read_text())
    for family in compiled.get('families', [])+retired:
        assert re.fullmatch(r'com/cootek/smartinput5/[A-Za-z0-9_/]+', family), family
        base = Path(family)
        for dex_dir in decoded.glob('smali*'):
            folder = dex_dir / base.parent
            if not folder.exists():
                continue
            for item in folder.iterdir():
                if item.name == base.name + '.smali' or (
                        item.name.startswith(base.name + '$') and item.suffix == '.smali'):
                    item.unlink()
        removed_families.append(family)

    applied = []
    overlay = TARGET / 'overlay'
    for source_dir in sorted(overlay.iterdir()):
        if source_dir.name in ('assets', 'apk'):
            continue
        assert source_dir.is_dir() and re.fullmatch(
            r'smali(?:_classes(?:[2-9]|[1-9][0-9]+))?', source_dir.name), source_dir
        for source in sorted(source_dir.rglob('*')):
            if not source.is_file():
                continue
            assert source.suffix == '.smali' and not source.is_symlink(), source
            dest = decoded / source.relative_to(overlay)
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(source, dest)
            applied.append(source.relative_to(TARGET).as_posix())

    payload = collect_payload()
    for name, source in sorted(payload.items()):
        dest = decoded / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, dest)
    labels = []
    for name in VERSION_LABELS:
        path = decoded / 'smali/com/cootek/smartinput5' / (name + '.smali')
        text = path.read_text()
        assert '151' in text, name
        path.write_text(''.join(
            line.replace('151', '152') if re.match(r'\s*(?:\.field|const-string)', line) else line
            for line in text.splitlines(keepends=True)))
        labels.append(path.relative_to(decoded).as_posix())
    manifest = {
        'base': BASE.relative_to(ROOT).as_posix(), 'base_sha256': BASE_SHA256,
        'version': '152', 'version_code': 10065, 'version_labels': labels,
        'replacement_helper_families': removed_families, 'smali_overlay': applied,
        'apk_overlay': {name: {'source': source.relative_to(TARGET).as_posix(),
                              'bytes': source.stat().st_size,
                              'sha256': hashlib.sha256(source.read_bytes()).hexdigest()}
                        for name, source in sorted(payload.items())},
    }
    (TARGET / 'OVERLAY_MANIFEST.json').write_text(json.dumps(manifest, indent=2) + '\n')
    run('java', '-jar', APKTOOL, 'b', '-p', ROOT / 'framework',
        '-o', TARGET / 'rebuilt.apk', decoded)
    run(sys.executable, TARGET / 'package_and_sign.py')


if __name__ == '__main__':
    main()
