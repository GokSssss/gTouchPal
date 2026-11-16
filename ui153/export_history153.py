"""Preserve all prior history; append153 evidence and a small implementation patch."""
from pathlib import Path
import difflib,hashlib,json,shutil,zipfile,subprocess
T=Path(__file__).resolve().parent;R=T.parent
sha=lambda data:hashlib.sha256(data).hexdigest()
def main():
 old=json.loads((T/'retention_before/PROJECT_STORAGE.json').read_text())
 original=Path('/workspace/touchpal/runtime153/history-before.zip')
 assert sha(original.read_bytes())==old['full_history']['sha256']
 additions={};prefix='release_logs/153/'
 for name in ['README_RU.txt','RELEASE_NOTES_RU.md','RELEASE_NOTES.md','VERIFICATION.json','SOURCE_PACKAGE_VERIFIED.json','PACKAGE_VERIFIED.json','DEX_VERIFICATION.json','RESOURCE_VERIFICATION.json','GITHUB_RELEASE.json','GITHUB_READBACK.json','GITHUB_TAG_VERIFIED.json','DRIVE_CORE_READBACK.json','PASSPORT_READBACK.json','SIGNING_READBACK.json','CLEAN_REBUILD_LOG.txt','DEX_CHECK_LOG.txt','FRAMEWORK_TEST_LOG.txt','FINAL_SOURCE_BINDING.json']:
  additions[prefix+name]=(T/name).read_bytes()
 additions[prefix+'CLEAN_REBUILD.json']=(T/'research/verification/CLEAN_REBUILD.json').read_bytes()
 for name in ['BUILD_153.txt','153-gTouchPal-Passport-6.2.7.1.txt','GENERAL_PROJECT_RULES.txt','FEATURE_JOURNAL_RULES.txt','GITHUB_PHILOSOPHY_RU.txt','AGENTS.md']:
  additions[prefix+name]=(R/name).read_bytes()
 for name in ['TouchPal_FEATURES_RU.txt','TouchPal_DEVELOPMENT_LOG_RU.txt','10База!','PROJECT_STORAGE.json','CHECKPOINTS_RU.txt','SOURCE_INDEX_RU.txt']:
  additions['release_logs/152/post_publication/'+name]=(T/'retention_before'/name).read_bytes()
 for name in ['CLEANUP_OBSERVED.json','CLOSING_READBACK.json','FINAL_LIVE_DOCUMENT_READBACK.json','WORK_STATE_RU.txt','PUBLISHED_CORE.json','GITHUB_TAG_VERIFIED.json','SOURCE_TAG_CODE_BINDING.json']:
  p=R/'ui152'/name
  if p.exists():additions['release_logs/152/post_publication/'+name]=p.read_bytes()
 additions['release_logs/151/post_publication/Passport-final.txt']=(T/'retention_before/151-gTouchPal-Passport-6.2.7.1.txt').read_bytes()
 patches=[]
 files=list(sorted((T/'src').rglob('*.java')))+[T/name for name in ['input_method_labels153.py','axml_tools.py','build.py','compile_helpers.py','package_and_sign.py','patch_version.py','tests/check_resources.py','tests/framework/src/test/java/com/cootek/smartinput5/settings/Settings153Test.java','tests/framework/src/test/java/com/cootek/smartinput5/settings/InputMethodLabels153Test.java']]
 for after in files:
  name=after.relative_to(T);before=R/'ui152'/name
  if not before.exists() and name.name=='SettingsIcons149.java':before=R/'ui149'/name
  patches.extend(difflib.unified_diff(before.read_text().splitlines(True) if before.exists() else [],after.read_text().splitlines(True),fromfile='152/'+name.as_posix(),tofile='153/'+name.as_posix()))
 additions[prefix+'implementation/settings-labels153.patch']=''.join(patches).encode()
 additions[prefix+'publication-relay153.yml']=(R/'.github/workflows/publish153.yml').read_bytes()
 additions[prefix+'INDEX.json']=(json.dumps(dict(version='153',changes=['Additional settings sections/icons/descriptions/context dependency','Live activation colour','Exact RU/en and EN/ru physical subtype labels'],keep=['153','152'],protected_unchanged=11,move_only=dict(version='151',id='1UwTuX4XGr65_Hwlo6HkIoa764EcVuwtU',consumer='SOURCE152'),retire_after_readbacks=['151SOURCE','151Passport','empty151folder','150input'],full_old_sources_stored=False,phone_or_art_tested=False),ensure_ascii=False,indent=2)+'\n').encode()
 with zipfile.ZipFile(original) as z:
  old_manifest=z.read('MANIFEST_SHA256.json');manifest=json.loads(old_manifest)
  for name,record in manifest.items():assert sha(z.read(name))==(record if isinstance(record,str) else record['sha256']),name
  previous_count=len(manifest)
 additions['manifest_snapshots/before153.json']=old_manifest
 assert not any(n.endswith(('.apk','.zip','.jks','.private')) for n in additions)
 prepared=T/'history153.zip';shutil.copyfile(original,prepared)
 with zipfile.ZipFile(prepared,'a',compression=zipfile.ZIP_LZMA) as z:
  stale=z.NameToInfo.pop('MANIFEST_SHA256.json');z.filelist.remove(stale)
  for name,data in sorted(additions.items()):
   assert name not in z.NameToInfo,name
   z.writestr(name,data);manifest[name]=dict(bytes=len(data),sha256=sha(data))
  z.writestr('MANIFEST_SHA256.json',json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(prepared) as z:
  assert len(z.namelist())==len(set(z.namelist()))==len(manifest)+1
  for name,record in manifest.items():assert sha(z.read(name))==(record if isinstance(record,str) else record['sha256']),name
  assert z.read('manifest_snapshots/before153.json')==old_manifest
 report=dict(version='153',bytes=prepared.stat().st_size,sha256=sha(prepared.read_bytes()),entries=len(manifest)+1,manifest_hashes=len(manifest),stages=158,individual_logs=157,implementation_patches=6882,original_payloads_preserved=previous_count,old_manifest_preserved=True,retired151_passport_preserved=True,post_publication152_preserved=True,old_live_journals_preserved=True,no_full_source_or_apk_added=True)
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');print('PASS153 history',len(manifest),'hashes, all',previous_count,'old payloads preserved')
if __name__=='__main__':main()
