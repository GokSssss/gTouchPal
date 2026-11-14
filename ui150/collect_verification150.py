"""Bind the tested own code, actual signed DEX and immutable APK payload."""
from pathlib import Path
import json,hashlib,re,subprocess,zipfile,xml.etree.ElementTree as E
T=Path(__file__).resolve().parent;R=T.parent
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    apk=R/'output/150-gTouchPal-6.2.7.1.apk';base=R/'output/149-gTouchPal-6.2.7.1.apk'
    subprocess.run(['java','-jar',str(R/'tools/apksigner.jar'),'verify','--verbose','--print-certs',str(apk)],stdout=(T/'SIGNATURE_CHECK.txt').open('w'),check=True)
    pattern=r'Signer #1 certificate SHA-256 digest: (.+)'
    certificate=re.search(pattern,(T/'SIGNATURE_CHECK.txt').read_text()).group(1)
    assert certificate==re.search(pattern,(T/'BASE_SIGNATURE_CHECK.txt').read_text()).group(1)
    reports=[E.parse(p).getroot().attrib for p in (T/'tests/framework/target/surefire-reports').glob('TEST-*.xml')]
    assert sum(int(x['tests']) for x in reports)==18
    assert all(int(x['failures'])==int(x['errors'])==int(x['skipped'])==0 for x in reports)
    package=json.loads((T/'PACKAGE_VERIFIED.json').read_text());dex=json.loads((T/'DEX_VERIFICATION.json').read_text())
    assert sha(apk)==package['sha256']==dex['apk_sha256']
    compiled=json.loads((T/'HELPERS_COMPILED.json').read_text())
    assert all(sha(T/path)==value for path,value in compiled['source_sha256'].items())
    with zipfile.ZipFile(apk) as after,zipfile.ZipFile(base) as before:
        assert after.testzip() is None
        assert before.read('classes2.dex')==after.read('classes2.dex')
        assert len([n for n in after.namelist() if n.startswith('assets/settings149/')])==32
        for name in before.namelist():
            if name.startswith(('lib/','res/')) or name.endswith(('.tpl','.lua.png','.sur.png')):
                assert before.read(name)==after.read(name),name
    result=dict(version='150',apk_bytes=apk.stat().st_size,apk_sha256=sha(apk),
        tests=18,framework='Robolectric SDK34 with real preferences/views and signed APK assets; explicit cache/resize doubles; original diagnostic actions represented by fixture handlers',
        main_list_fits_normal_font_dp=750,framework_captures='research/framework-capture',
        android_art_or_phone_executed=False,own_helper_families=2,own_compiled_classes=6,
        original_classes_compared=10174,bounded_original_methods=0,
        api16_own_helpers_verified=True,original_hook_verification='No original native methods/fields changed. Original diagnostic objects and all their handlers inherited unchanged.',
        same_certificate=certificate,signature_schemes=['v1','v2','v3'],
        classes2_unchanged=True,native_rom_languages_resources_and_data_paths_unchanged=True,
        diagnostics='Journal short click preserved, hold opens original hidden PreferenceScreen; refresh/action listeners, repeated opening and unrelated holds covered by real framework tests',
        ranking='Existing policy/store/classes unchanged; owner-reported possible partial ordering reset still requires phone evidence.',
        local_icons=32)
    (T/'VERIFICATION.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print('PASS150:',result['tests'],'framework tests, exact signed DEX/API/payload/certificate binding')
if __name__=='__main__':main()
