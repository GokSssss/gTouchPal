"""Append151 evidence and one implementation patch; preserve every old payload."""
from pathlib import Path
import hashlib,json,shutil,zipfile,difflib,os
T=Path(__file__).resolve().parent;R=T.parent;external=Path('/workspace/touchpal/TouchPal_JOURNALS_AND_IMPLEMENTATION.zip')
def sha(b):return hashlib.sha256(b).hexdigest()
def main():
 old=json.loads((T/'retention_before/PROJECT_STORAGE.json').read_text());expected=old['full_history']['sha256'];frozen=T/'retention_before/history_before151.zip'
 if not frozen.exists():assert sha(external.read_bytes())==expected;shutil.copyfile(external,frozen)
 assert sha(frozen.read_bytes())==expected
 assert len(json.loads((T/'GITHUB_READBACK.json').read_text())['assets'])==3
 additions={};prefix='release_logs/151/'
 names=['README_RU.txt','RELEASE_NOTES_RU.md','VERIFICATION.json','SOURCE_PACKAGE_VERIFIED.json','PACKAGE_VERIFIED.json','DEX_VERIFICATION.json','GITHUB_RELEASE.json','GITHUB_READBACK.json','GITHUB_TAG_VERIFIED.json','DRIVE_CORE_READBACK.json','PASSPORT_READBACK.json','RETENTION_INPUT_READBACK.json','WAVE_PATCH.json','ALIGNMENT_REGRESSION.json','SIGNING_READBACK.json','CLEAN_REBUILD_LOG.txt','DEX_CHECK_LOG.txt','FRAMEWORK_TEST_LOG.txt']
 for name in names:additions[prefix+name]=(T/name).read_bytes()
 for name in ['verification/CLEAN_REBUILD.json','WAVE_COLOR_AUDIT.json','BUILD_ITERATIONS.json','compile-first-attempt.txt']:additions[prefix+Path(name).name]=(T/'research'/name).read_bytes()
 additions[prefix+'BUILD_151.txt']=(R/'BUILD_151.txt').read_bytes();additions[prefix+'Passport.txt']=(R/'151-gTouchPal-Passport-6.2.7.1.txt').read_bytes()
 for name in ['GENERAL_PROJECT_RULES.txt','10База!','FEATURE_JOURNAL_RULES.txt']:additions[prefix+'rules/'+name]=(R/name).read_bytes()
 patches=[]
 files=['src/com/cootek/smartinput5/settings/CompactSettings.java','compile_only/app/com/cootek/smartinput5/settings/ServiceSettings150.java','wave151.py','tests/framework/src/test/java/com/cootek/smartinput5/settings/Settings151AlignmentTest.java','tests/framework/src/test/java/com/cootek/smartinput5/settings/Settings149VisualTest.java']
 for name in files:
  before=R/'ui150'/name;after=T/name
  patches.extend(difflib.unified_diff(before.read_text().splitlines(True) if before.exists() else [],after.read_text().splitlines(True),fromfile='150/'+name,tofile='151/'+name))
 additions[prefix+'implementation/settings-wave151.patch']=''.join(patches).encode()
 for name in ['CLEANUP_OBSERVED.json','CLOSING_READBACK.json','FINAL_LIVE_DOCUMENT_READBACK.json','LISTING_OBSERVED.json','WORK_STATE_RU.txt','GITHUB_READBACK.json','GITHUB_TAG_VERIFIED.json','SOURCE_PACKAGE_VERIFIED.json']:
  p=R/'ui150'/name
  if p.exists():additions['release_logs/150/post_publication/'+name]=p.read_bytes()
 for name in ['TouchPal_FEATURES_RU.txt','TouchPal_DEVELOPMENT_LOG_RU.txt','10База!','PROJECT_STORAGE.json']:
  additions['release_logs/150/post_publication/'+name]=(T/'retention_before'/name).read_bytes()
 with zipfile.ZipFile(frozen) as z:
  original=json.loads(z.read('MANIFEST_SHA256.json'));old_names=set(z.namelist())-{'MANIFEST_SHA256.json'};assert len(original)==len(old_names)==9255
  old_manifest=z.read('MANIFEST_SHA256.json');passport=(T/'retention_before/149-gTouchPal-Passport-6.2.7.1.txt').read_bytes()
  matches=[n for n in old_names if '/149/' in n and n.endswith('.txt') and z.getinfo(n).file_size==len(passport) and z.read(n)==passport]
  if matches:passport_entry=matches[0]
  else:passport_entry='release_logs/149/post_publication/Passport-final.txt';additions[passport_entry]=passport
 additions['manifest_snapshots/before151.json']=old_manifest
 additions[prefix+'INDEX.json']=(json.dumps(dict(version='151',changes=['Common settings text alignment','Yellow Wave trace#F6D333'],keep=['151','150'],protected_unchanged=11,move_only={'version':'149','id':'1qm47RSZPPJbaHAhBblD2Y5KxbgwZp8GE','consumer':'SOURCE150'},retire_after_readbacks=['149SOURCE','149Passport','empty149folder','148input'],retired149_passport_entry=passport_entry,full_old_sources_stored=False,phone_or_art_tested=False),ensure_ascii=False,indent=2)+'\n').encode()
 assert not any(n.endswith(('.apk','.zip','.jks','.private')) for n in additions)
 prepared=T/'history151.zip';shutil.copyfile(frozen,prepared)
 with zipfile.ZipFile(prepared,'a',compression=zipfile.ZIP_LZMA) as z:
  stale=z.NameToInfo.pop('MANIFEST_SHA256.json');z.filelist.remove(stale)
  for n,b in sorted(additions.items()):
   if n in z.NameToInfo:assert z.read(n)==b,n
   else:z.writestr(n,b)
  manifest={n:dict(bytes=z.getinfo(n).file_size,sha256=original[n] if isinstance(original[n],str) else original[n]['sha256']) for n in old_names}
  for n,b in additions.items():manifest[n]=dict(bytes=len(b),sha256=sha(b))
  z.writestr('MANIFEST_SHA256.json',json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(prepared) as z:
  assert len(z.namelist())==len(set(z.namelist()))==len(manifest)+1
  for n,r in manifest.items():b=z.read(n);assert len(b)==r['bytes'] and sha(b)==r['sha256'],n
  assert old_names<=set(manifest);assert z.read('manifest_snapshots/before151.json')==old_manifest;assert z.read(passport_entry)==passport
 report=dict(version='151',bytes=prepared.stat().st_size,sha256=sha(prepared.read_bytes()),entries=len(manifest)+1,manifest_hashes=len(manifest),stages=156,individual_logs=155,implementation_patches=old['full_history']['implementation_patches']+1,original_payloads_preserved=9255,old_manifest_preserved=True,retired149_passport_preserved=True,retired149_passport_entry=passport_entry,post_publication150_preserved=True,old_live_journals_preserved=True,no_full_source_or_apk_added=True)
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');shutil.copyfile(prepared,external)
 local=R/'TouchPal_JOURNALS_AND_IMPLEMENTATION.zip'
 if local.exists():local.unlink()
 os.link(external,local)
 print('PASS151 history',json.dumps(report),flush=True)
if __name__=='__main__':main()
