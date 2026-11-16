"""Independently read the signed resources with Android aapt2 and compare to152."""
from pathlib import Path
import hashlib
import json
import re
import subprocess
import sys
import zipfile

T = Path(__file__).resolve().parents[1]
R = T.parent
sys.path.insert(0, str(T))
from input_method_labels153 import METHODS, replacements


def dump(*args):
    return subprocess.run([str(R/'tools/aapt2'), 'dump', *map(str,args)],
                          check=True,capture_output=True,text=True).stdout


def main():
    base = R/'output/152-gTouchPal-6.2.7.1.apk'
    apk = R/'output/153-gTouchPal-6.2.7.1.apk'
    with zipfile.ZipFile(base) as before, zipfile.ZipFile(apk) as after:
        expected, report = replacements(before)
        for name, value in expected.items():
            assert after.read(name) == value, name
    original = dump('resources', base).splitlines()
    modified = dump('resources', apk).splitlines()
    old_type = next(line for line in original if re.search(r'type string id=0f entryCount=',line))
    new_type = next(line for line in modified if re.search(r'type string id=0f entryCount=',line))
    assert int(new_type.rsplit('=',1)[1]) == int(old_type.rsplit('=',1)[1])+2
    normal = []
    removed = 0
    for line in modified:
        if re.search(r'resource 0x7f0f0c0[67] string/tp153_ime_(?:en_ru|ru_en)$', line):
            removed += 1
            continue
        if line.strip() in ('() "gTouchPal EN/ru"', '() "gTouchPal RU/en"'):
            removed += 1
            continue
        normal.append(old_type if line == new_type else line)
    assert removed == 4
    assert original == normal, 'An old resource ID/name/configuration/value changed'
    for name in METHODS:
        old = dump('xmltree','--file',name,base).splitlines()
        new = dump('xmltree','--file',name,apk).splitlines()
        labels = [line for line in new if ':label(0x01010001)=' in line]
        assert len(labels) == 2
        assert old == [line for line in new if line not in labels]
    report.update(status='PASS',all_old_resource_ids_names_configs_values_unchanged=True,
                  all_three_xml_variants_only_add_labels=True,
                  independent_reader='Android build-tools36.1 aapt2',
                  apk_sha256=hashlib.sha256(apk.read_bytes()).hexdigest())
    (T/'RESOURCE_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
    print('PASS: all old resource IDs/names/configurations/values preserved; three XML variants only add labels')


if __name__ == '__main__':
    main()
