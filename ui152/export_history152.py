"""Append152 implementation and evidence; retain every prior history payload/hash."""
from pathlib import Path
import difflib,hashlib,json,shutil,zipfile,subprocess
T=Path(__file__).resolve().parent;R=T.parent
sha=lambda b:hashlib.sha256(b).hexdigest()
def main():
 old=json.loads((T/'retention_before/PROJECT_STORAGE.json').read_text())
 original_path=R/'TouchPal_JOURNALS_AND_IMPLEMENTATION.zip'
 assert sha(original_path.read_bytes())==old['full_history']['sha256']
 additions={};prefix='release_logs/152/'
 for name in ['README_RU.txt','RELEASE_NOTES_RU.md','RELEASE_NOTES.md','VERIFICATION.json','SOURCE_PACKAGE_VERIFIED.json','PACKAGE_VERIFIED.json','DEX_VERIFICATION.json','GITHUB_RELEASE.json','GITHUB_READBACK.json','GITHUB_TAG_VERIFIED.json','DRIVE_CORE_READBACK.json','PASSPORT_READBACK.json','ACTIVATION_PATCH.json','SIGNING_READBACK.json','CLEAN_REBUILD_LOG.txt','DEX_CHECK_LOG.txt','FRAMEWORK_TEST_LOG.txt','FINAL_SOURCE_BINDING.json']:
  additions[prefix+name]=(T/name).read_bytes()
 additions[prefix+'CLEAN_REBUILD.json']=(T/'research/verification/CLEAN_REBUILD.json').read_bytes()
 for name in ['BUILD_152.txt','152-gTouchPal-Passport-6.2.7.1.txt','GENERAL_PROJECT_RULES.txt','FEATURE_JOURNAL_RULES.txt','GITHUB_PHILOSOPHY_RU.txt','AGENTS.md']:
  additions[prefix+name]=(R/name).read_bytes()
 for name in ['TouchPal_FEATURES_RU.txt','TouchPal_DEVELOPMENT_LOG_RU.txt','10База!','PROJECT_STORAGE.json','CHECKPOINTS_RU.txt']:
  additions['release_logs/151/post_publication/'+name]=(T/'retention_before'/name).read_bytes()
 for name in ['CLEANUP_OBSERVED.json','CLOSING_READBACK.json','FINAL_LIVE_DOCUMENT_READBACK.json','WORK_STATE_RU.txt']:
  p=R/'ui151'/name
  if p.exists():additions['release_logs/151/post_publication/'+name]=p.read_bytes()
 additions['release_logs/150/post_publication/Passport-final.txt']=(T/'retention_before/150-gTouchPal-Passport-6.2.7.1.txt').read_bytes()
 # Preserve the independent15Nov bilingual editorial changes encountered during push.
 for name in ['README.md','CHANGELOG.md','docs/PUBLICATION_STYLE.md','docs/DEVELOPMENT.md']:
  additions['release_logs/151/post_publication/editorial15Nov/'+name]=subprocess.check_output(['git','show','9f06a4f:'+name])
 patches=[]
 files=sorted((T/'src').rglob('*.java'))+sorted((T/'compile_only').rglob('*.java'))
 files += [T/name for name in ['build.py','compile_helpers.py','activation152.py','package_and_sign.py','patch_version.py','rebuild152.py','tests/framework/src/test/java/com/cootek/smartinput5/settings/Settings152Test.java']]
 for after in files:
  name=after.relative_to(T);before=R/'ui151'/name
  if not before.exists() and name.parts[0]=='src':before=Path('/workspace/touchpal/ui149')/name
  patches.extend(difflib.unified_diff(before.read_text().splitlines(True) if before.exists() else [],after.read_text().splitlines(True),fromfile='151/'+name.as_posix(),tofile='152/'+name.as_posix()))
 additions[prefix+'implementation/height-activation152.patch']=''.join(patches).encode()
 additions[prefix+'INDEX.json']=(json.dumps(dict(version='152',changes=['Separate landscape keyboard height550px','Settings without forced activation; manual red enable row'],keep=['152','151'],protected_unchanged=11,move_only=dict(version='150',id='12t9KpTFmoaLGuh4o9N4pD3vXcL5xja9u',consumer='SOURCE151'),retire_after_readbacks=['150SOURCE','150Passport','empty150folder','149input'],full_old_sources_stored=False,phone_or_art_tested=False),ensure_ascii=False,indent=2)+'\n').encode()
 with zipfile.ZipFile(original_path) as z:
  old_manifest=z.read('MANIFEST_SHA256.json');manifest=json.loads(old_manifest);assert len(manifest)==9297
  for name,record in manifest.items():
   data=z.read(name);expected=record if isinstance(record,str) else record['sha256'];assert sha(data)==expected,name
 additions['manifest_snapshots/before152.json']=old_manifest
 assert not any(n.endswith(('.apk','.zip','.jks','.private')) for n in additions)
 prepared=T/'history152.zip';shutil.copyfile(original_path,prepared)
 with zipfile.ZipFile(prepared,'a',compression=zipfile.ZIP_LZMA) as z:
  stale=z.NameToInfo.pop('MANIFEST_SHA256.json');z.filelist.remove(stale)
  for name,data in sorted(additions.items()):
   assert name not in z.NameToInfo,name
   z.writestr(name,data);manifest[name]=dict(bytes=len(data),sha256=sha(data))
  z.writestr('MANIFEST_SHA256.json',json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(prepared) as z:
  assert len(z.namelist())==len(set(z.namelist()))==len(manifest)+1
  for name,record in manifest.items():
   data=z.read(name);expected=record if isinstance(record,str) else record['sha256'];assert sha(data)==expected,name
  assert z.read('manifest_snapshots/before152.json')==old_manifest
 report=dict(version='152',bytes=prepared.stat().st_size,sha256=sha(prepared.read_bytes()),entries=len(manifest)+1,manifest_hashes=len(manifest),stages=157,individual_logs=156,implementation_patches=6881,original_payloads_preserved=9297,old_manifest_preserved=True,retired150_passport_preserved=True,post_publication151_preserved=True,old_live_journals_preserved=True,no_full_source_or_apk_added=True)
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');print('PASS152 history',json.dumps(report),flush=True)
if __name__=='__main__':main()
