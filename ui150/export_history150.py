"""Append150 routing patch and receipts; preserve all prior history payloads."""
from pathlib import Path
import hashlib,json,shutil,zipfile,difflib
T=Path(__file__).resolve().parent;R=T.parent
def sha(b):return hashlib.sha256(b).hexdigest()
def main():
 old=R/'TouchPal_JOURNALS_AND_IMPLEMENTATION.zip';frozen=T/'retention_before/history_before150.zip';expected='7bed5c41fd966c511ba420fff1208c87b569ae6c13d7a86499c33097adec8acf'
 if not frozen.exists():assert sha(old.read_bytes())==expected;shutil.copyfile(old,frozen)
 assert sha(frozen.read_bytes())==expected
 assert len(json.loads((T/'GITHUB_READBACK.json').read_text())['assets'])==3
 additions={};prefix='release_logs/150/'
 for name in ['README_RU.txt','RELEASE_NOTES_RU.md','VERIFICATION.json','SOURCE_PACKAGE_VERIFIED.json','PACKAGE_VERIFIED.json','DEX_VERIFICATION.json','GITHUB_RELEASE.json','GITHUB_READBACK.json','GITHUB_TAG_VERIFIED.json','DRIVE_CORE_READBACK.json','PASSPORT_READBACK.json','RETENTION_INPUT_READBACK.json']:
  additions[prefix+name]=(T/name).read_bytes()
 additions[prefix+'CLEAN_REBUILD.json']=(T/'research/verification/CLEAN_REBUILD.json').read_bytes()
 additions[prefix+'BUILD_150.txt']=(R/'BUILD_150.txt').read_bytes()
 additions[prefix+'Passport.txt']=(R/'150-gTouchPal-Passport-6.2.7.1.txt').read_bytes()
 for name in ['GENERAL_PROJECT_RULES.txt','10База!']:additions[prefix+'rules/'+name]=(R/name).read_bytes()
 patches=[]
 for family in json.loads((T/'HELPERS_COMPILED.json').read_text())['families']:
  name=family+'.java';before=R/'ui149/src'/name;after=T/'src'/name
  patches.extend(difflib.unified_diff(before.read_text().splitlines(True) if before.exists() else [],after.read_text().splitlines(True),fromfile='149/'+name,tofile='150/'+name))
 additions[prefix+'implementation/journal-hold150.patch']=''.join(patches).encode()
 for name in ['CLEANUP_OBSERVED.json','CLOSING_READBACK.json','FINAL_LIVE_DOCUMENT_READBACK.json','LISTING_OBSERVED.json','WORK_STATE_RU.txt','GITHUB_READBACK.json','GITHUB_TAG_VERIFIED.json','SOURCE_PACKAGE_VERIFIED.json']:
  path=R/'ui149'/name
  if path.exists():additions['release_logs/149/post_publication/'+name]=path.read_bytes()
 with zipfile.ZipFile(frozen) as z:
  original=json.loads(z.read('MANIFEST_SHA256.json'));old_names=set(z.namelist())-{'MANIFEST_SHA256.json'};assert len(original)==len(old_names)==9227
  old_manifest=z.read('MANIFEST_SHA256.json')
  #148 passport is already preserved byte-for-byte in149 history, do not duplicate.
  passport_entry='release_logs/148/post_publication/Passport.txt'
  assert z.read(passport_entry)==(T/'retention_before/148-TouchPal T9 DelFix-Паспорт-6.2.7.1.txt').read_bytes()
 additions['manifest_snapshots/before150.json']=old_manifest
 additions[prefix+'INDEX.json']=(json.dumps({'version':'150','instruction':'LONG PRESS journal opens original diagnostics; short press keeps journal','keep':['150','149'],'protected_unchanged':11,'move_only':{'version':'148','id':'1stIooES6P3Spa41Q9EkoWDDZuL1QFyBa','consumer':'SOURCE149'},'retire_after_readbacks':['148SOURCE','148Passport','empty148folder','147input','137fixture'],'retired148_passport_entry':passport_entry,'full_old_sources_stored':False},ensure_ascii=False,indent=2)+'\n').encode()
 prepared=T/'history150.zip';shutil.copyfile(frozen,prepared)
 with zipfile.ZipFile(prepared,'a',compression=zipfile.ZIP_LZMA) as z:
  stale=z.NameToInfo.pop('MANIFEST_SHA256.json');z.filelist.remove(stale)
  for name,data in sorted(additions.items()):
   if name in z.NameToInfo:assert z.read(name)==data,name
   else:z.writestr(name,data)
  manifest={name:dict(bytes=info.file_size,sha256=original[name] if isinstance(original[name],str) else original[name]['sha256']) for name,info in z.NameToInfo.items() if name in old_names}
  for name,data in additions.items():manifest[name]=dict(bytes=len(data),sha256=sha(data))
  z.writestr('MANIFEST_SHA256.json',json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(prepared) as z:
  assert len(z.namelist())==len(set(z.namelist()))==len(manifest)+1
  for name,record in manifest.items():
   data=z.read(name);assert len(data)==record['bytes'] and sha(data)==record['sha256'],name
  assert old_names<=set(manifest);assert z.read('manifest_snapshots/before150.json')==old_manifest
 report=dict(version='150',bytes=prepared.stat().st_size,sha256=sha(prepared.read_bytes()),entries=len(manifest)+1,manifest_hashes=len(manifest),stages=155,individual_logs=154,original_payloads_preserved=9227,old_manifest_preserved=True,retired148_passport_preserved=True,post_publication149_preserved=True,no_full_source_or_apk_added=True)
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');shutil.copyfile(prepared,old)
 print('PASS150 history:',report['entries'],'entries; all9227previous payloads and old manifest preserved')
if __name__=='__main__':main()
