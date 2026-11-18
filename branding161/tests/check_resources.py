"""Verify only approved label/icon changes; preserve resource IDs and subtype XML."""
from pathlib import Path
import hashlib,io,json,subprocess,sys,zipfile
from PIL import Image
T=Path(__file__).resolve().parents[1];R=T.parent
sys.path.insert(0,str(T))
from patch_version import patch
from prepare_branding161 import patch_resources,REPLACEMENTS,ICONS
from axml_tools import chunks,strings
def sha(data):return hashlib.sha256(data).hexdigest()
base=R/'output/160-gTouchPal-6.2.7.1.apk';apk=R/'output/161-TouchPalG-6.2.7.1.apk'
checked={};changed={};allowed={'resources.arsc',*ICONS}
with zipfile.ZipFile(base) as a,zipfile.ZipFile(apk) as b:
    for name in a.namelist():
        if name=='resources.arsc' or name.startswith('res/'):
            old,new=a.read(name),b.read(name)
            if name in allowed:
                assert new==(T/'overlay/apk'/name).read_bytes(),name
                assert old!=new,name
                changed[name]=sha(new)
            else:assert old==new,name
            checked[name]=sha(b.read(name))
    assert set(changed)==allowed
    assert b.read('resources.arsc')==patch_resources(a.read('resources.arsc'))
    oldnodes=list(chunks(a.read('resources.arsc'),12));newnodes=list(chunks(b.read('resources.arsc'),12))
    assert len(oldnodes)==len(newnodes)
    for oldnode,newnode in zip(oldnodes,newnodes):
        p,typ,h,n=oldnode;q,typ2,h2,m=newnode
        assert (typ,h)==(typ2,h2)
        if typ!=1:assert a.read('resources.arsc')[p:p+n]==b.read('resources.arsc')[q:q+m]
        else:assert strings(b.read('resources.arsc'),q)==[REPLACEMENTS.get(s,s) for s in strings(a.read('resources.arsc'),p)]
    for name,dimension in ICONS.items():
        old=Image.open(io.BytesIO(a.read(name))).convert('RGBA');new=Image.open(io.BytesIO(b.read(name))).convert('RGBA')
        assert new.size==old.size==(dimension,dimension)
        assert old.getchannel('A').tobytes()==new.getchannel('A').tobytes(),name
        opaque=[rgb[:3] for rgb in new.getdata() if rgb[3]==255]
        assert sum(r>180 and g>120 and blue<100 for r,g,blue in opaque)>len(opaque)*.55,name
        assert sum(max(rgb)<75 for rgb in opaque)>len(opaque)*.08,name
    expected,version=patch(a.read('AndroidManifest.xml'))
    assert b.read('AndroidManifest.xml')==expected
    assert version['all_components_unchanged'] and version['direct_display_labels']=={'TouchPal':'TouchPalG'}
    assert {n for n in b.namelist() if n.startswith('res/')}=={n for n in a.namelist() if n.startswith('res/')}
    for name in ['assets/touchpal_features.html','assets/touchpal_history.html']:
        assert b.read(name)==(T/'assets'/Path(name).name).read_bytes()
        assert 'TouchPalG · 161' in b.read(name).decode()
badging=subprocess.check_output([str(R/'tools/aapt2'),'dump','badging',str(apk)],text=True)
assert "application-label:'TouchPalG'" in badging
assert "package: name='com.cootek.smartinputv5' versionCode='10074' versionName='6.2.7.1-161'" in badging
result=dict(status='PASS',apk_sha256=sha(apk.read_bytes()),base_sha256=sha(base.read_bytes()),
    checked_resource_files=len(checked),all_other_resource_bytes_unchanged=True,
    resource_indices_and_package_chunks_unchanged=True,exact_string_replacements=REPLACEMENTS,
    subtype_display_labels_changed=True,subtype_xml_and_identities_unchanged=True,permissions_and_components_unchanged=True,
    original_icon_alpha_masks_and_dimensions_preserved=True,aapt_application_label='TouchPalG',
    journal_assets_match_sources=True,changed_entries=changed,resource_sha256=checked)
(T/'RESOURCE_VERIFICATION.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS161:3 exact label values and3 icon densities; resource IDs/subtype identities/components preserved')
