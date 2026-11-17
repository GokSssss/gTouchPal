"""Check actual157 APK resources/permissions against immutable156."""
from pathlib import Path
import hashlib,json,sys,zipfile
T=Path(__file__).resolve().parents[1];R=T.parent
sys.path.insert(0,str(T))
from patch_version import patch
def sha(data):return hashlib.sha256(data).hexdigest()
base=R/'output/158-gTouchPal-6.2.7.1.apk';apk=R/'output/159-gTouchPal-6.2.7.1.apk'
checked={}
with zipfile.ZipFile(base) as a,zipfile.ZipFile(apk) as b:
    for name in a.namelist():
        if name=='resources.arsc' or name.startswith('res/'):
            assert a.read(name)==b.read(name),name
            checked[name]=sha(b.read(name))
    expected,version=patch(a.read('AndroidManifest.xml'))
    assert b.read('AndroidManifest.xml')==expected
    assert version['all_components_unchanged']
    assert {n for n in b.namelist() if n.startswith('res/')}=={n for n in a.namelist() if n.startswith('res/')}
    for name in ['assets/touchpal_features.html','assets/touchpal_history.html']:
        assert b.read(name)==(T/'assets'/Path(name).name).read_bytes()
        assert 'gTouchPal · 159' in b.read(name).decode()
result=dict(status='PASS',apk_sha256=sha(apk.read_bytes()),base_sha256=sha(base.read_bytes()),
    checked_resource_files=len(checked),all_old_resource_bytes_unchanged=True,
    subtype_labels_and_identities_unchanged=True,permissions_and_components_unchanged=True,
    journal_assets_match_sources=True,changed_entries=[],resource_sha256=checked)
(T/'RESOURCE_VERIFICATION.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS159: all resources identical to156, manifest changes limited to version; journal assets match')
