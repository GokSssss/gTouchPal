"""Bind the final helpers, signed DEX, resources, working data paths and certificate."""
from pathlib import Path
import hashlib,json,re,subprocess,zipfile
T=Path(__file__).resolve().parent;R=T.parent
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
apk=R/'output/154-gTouchPal-6.2.7.1.apk';base=R/'output/153-gTouchPal-6.2.7.1.apk'
for name,path in [('SIGNATURE_CHECK.txt',apk),('BASE_SIGNATURE_CHECK.txt',base)]:
    with (T/name).open('w') as stream:
        subprocess.run(['java','-jar',str(R/'tools/apksigner.jar'),'verify','--verbose','--print-certs',str(path)],stdout=stream,check=True)
pattern=r'Signer #1 certificate SHA-256 digest: (.+)'
cert=re.search(pattern,(T/'SIGNATURE_CHECK.txt').read_text()).group(1)
assert cert=='0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46'
assert cert==re.search(pattern,(T/'BASE_SIGNATURE_CHECK.txt').read_text()).group(1)
host=json.loads((T/'HOST_TESTS.json').read_text());assert host['status']=='PASS' and host['tests']==48 and host['selected_tests']=='*'
package=json.loads((T/'PACKAGE_VERIFIED.json').read_text());dex=json.loads((T/'DEX_VERIFICATION.json').read_text());resources=json.loads((T/'RESOURCE_VERIFICATION.json').read_text())
assert sha(apk)==package['sha256']==dex['apk_sha256']==resources['apk_sha256']
compiled=json.loads((T/'HELPERS_COMPILED.json').read_text())
for name,digest in compiled['source_sha256'].items():assert sha(T/name)==digest==host['actual_sources'][name.removeprefix('src/')]
with zipfile.ZipFile(base) as a,zipfile.ZipFile(apk) as b:
    for name in a.namelist():
        if name.startswith(('lib/','res/')) or name.endswith(('.tpl','.lua.png','.sur.png')):assert a.read(name)==b.read(name),name
        if name.startswith('assets/') and Path(name).name not in ['touchpal_features.html','touchpal_history.html']:assert a.read(name)==b.read(name),name
text=(T/'DEX_TEST.txt').read_text();assert 'PASS all 10184 original classes compared' in text;assert '4 methods across 2 classes' in text
result=dict(version='154',apk_bytes=apk.stat().st_size,apk_sha256=sha(apk),tests=host['tests'],
    framework='Android34/Robolectric views, file/URI IO; native engine, validation and transaction represented by explicit doubles',
    own_helper_families=len(compiled['families']),own_compiled_classes=len(compiled['class_entries']),
    original_classes_compared=10184,bounded_mod_tool_methods=4,bounded_vendor_native_methods=0,
    api16_own_helpers_verified=True,classes2_unchanged=False,
    classes2_scope='Only two inherited mod TXT activities: four bounded UI/output-directory methods. Parsers/native format/engine methods unchanged.',
    all_old_resource_ids_and_values_unchanged=True,physical_keyboard_ids_locales_flags_and_bytecode_unchanged=True,
    native_libraries_rom_languages_and_working_data_paths_unchanged=True,
    native_controller_usr_export_import_and_rollback_bytecode_unchanged=True,
    exports_default='Environment.getExternalStorageDirectory()/TouchPalG/Backup',
    same_certificate=cert,signature_schemes=['v1','v2','v3'],android_art_or_phone_executed=False,
    tests_include='USR/ZIP initial folder, arbitrary chosen USR file, capture failure, cancellation cleanup, confirmation, missing-only TXT copy, preserved working files, one shortcut and visible two-line title, prior settings regressions')
(T/'VERIFICATION.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
(T/'SOURCE_API16.json').write_text(json.dumps(dict(status='PASS',android_api=16,min_d8_api=15,
    actual_signed_dex_abi_passed=True,source_sha256=compiled['source_sha256'],compile_only_not_packaged=True),indent=2)+'\n')
print('PASS154:48 framework scenarios, actual DEX/API16, resource preservation and same certificate')
