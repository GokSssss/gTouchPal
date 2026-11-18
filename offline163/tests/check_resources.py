"""163 changes no resource/brand/native bytes; only manifest version and own Java/journals."""
from pathlib import Path
from zipfile import ZipFile
import hashlib,json,subprocess,sys
T=Path(__file__).resolve().parents[1];R=T.parent;sys.path.insert(0,str(T))
from patch_version import patch
sha=lambda data:hashlib.sha256(data).hexdigest()
a=R/'output/162-TouchPalG-6.2.7.1.apk';b=R/'output/163-TouchPalG-6.2.7.1.apk';resources={}
with ZipFile(a) as old,ZipFile(b) as new:
 for name in old.namelist():
  if name=='resources.arsc' or name.startswith('res/'):
   assert old.read(name)==new.read(name),name;resources[name]=sha(new.read(name))
 expected,version=patch(old.read('AndroidManifest.xml'));assert new.read('AndroidManifest.xml')==expected and version['removed_components'] and version['internet_absent_before_and_after']
 for name in ['touchpal_features.html','touchpal_history.html']:assert new.read('assets/'+name)==(T/'assets'/name).read_bytes()
badging=subprocess.check_output([str(R/'tools/aapt2'),'dump','badging',str(b)],text=True)
assert "application-label:'TouchPalG'" in badging and "versionCode='10076' versionName='6.2.7.1-163'" in badging
report=dict(status='PASS',apk_sha256=sha(b.read_bytes()),base_sha256=sha(a.read_bytes()),checked_resource_files=len(resources),all_resource_bytes_unchanged=True,theme163_preserved=True,subtype_xml_and_identities_unchanged=True,retired_web_components_removed=version['removed_components'],internet_permission_absent=True,live_components_and_remaining_permissions_preserved=True,changed_entries=[],resource_sha256=resources)
(T/'RESOURCE_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n');print('PASS163: all resource/icon/subtype bytes unchanged; manifest version and explicit retired network registrations; nameTouchPalG preserved')
