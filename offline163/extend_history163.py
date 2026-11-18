"""Preserve all9805 old payloads and append small163 implementation/log deltas."""
from pathlib import Path
import hashlib,json,difflib,re,subprocess,zipfile
T=Path(__file__).resolve().parent;R=T.parent;B=R/'theme162';sha=lambda data:hashlib.sha256(data).hexdigest()
base=B/'history162.zip';assert sha(base.read_bytes())=='842afcfd86ff5d1f01844d47a1451d679463128b79cbc63e982fd45751b50982'
new={}
def add(n,data):
 assert n not in new;new[n]=data if isinstance(data,bytes) else data.encode()
add('CURRENT_INDEX_163.txt','TouchPalG163/162,18.11.2026. All9805previous payloads retained. Native shirt/local installed themes;56retired network registrations removed. Compact history keeps logs and implementation deltas, no obsolete full APK/SOURCE/media/signing material.\n')
add('release_logs/163/163_DEVELOPMENT_RU.txt',(T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for n in ['VERIFICATION.json','OFFLINE_POLICY163.json','OFFLINE_VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETENTION_PLAN.json','SOURCE_PACKAGE_VERIFIED.json','ALLOWED_METHOD_CHANGES.txt','ALLOWED_DEX_CHANGES.txt']:
 add('release_logs/163/'+n,(T/n).read_bytes())
add('release_logs/163/native-theme-route.json',(T/'research/NATIVE_THEME_ROUTE163.json').read_bytes())
add('release_logs/163/publication-relay163.yml',subprocess.check_output(['git','show','dd93388:.github/workflows/publish163.yml'],cwd=R))
changed=0
for folder in ['src','compile_only','tests']:
 for p in sorted((T/folder).rglob('*')):
  if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):continue
  rel=p.relative_to(T);old=B/rel
  if old.exists() and old.read_bytes()==p.read_bytes():continue
  if old.exists():add('implementation_patches/163/'+str(rel)+'.patch',''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='theme162/'+str(rel),tofile='offline163/'+str(rel))))
  else:add('implementation_patches/163/new/'+str(rel),p.read_bytes())
  changed+=1
# Only the bounded native method replacements, rather than full copies of118classes.
methods={}
for line in (T/'ALLOWED_METHOD_CHANGES.txt').read_text().splitlines():
 c,sig=line.split(' ',1);text=(T/'overlay/smali'/(c[1:-1]+'.smali')).read_text();m=next(m[0] for m in re.finditer(r'(?ms)^\.method ([^\n]*)\n.*?^\.end method',text) if m[1].split()[-1]==sig);methods.setdefault(c,{})[sig]=m
assert sum(map(len,methods.values()))==153
add('implementation_patches/163/native/EXACT_METHOD_REPLACEMENTS.json',json.dumps(dict(base_version=162,base_sha256='83cf07561fe8a3c8a75d4eedb92f14d9c7764c4762070077950e62ba0ea9dcb2',fields_and_other_methods_unchanged=True,methods=methods),ensure_ascii=False,indent=2));changed+=1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','collect_verification163.py','rebuild163.py','package_source163.py','render_journal.py']:
 p=T/name;old=B/name.replace('163','162');delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='theme162/'+old.name,tofile='offline163/'+name)) if old.exists() else p.read_text();add('implementation_patches/163/recipe/'+name+'.patch',delta);changed+=1
add('implementation_patches/163/recipe/extend_history163.py',Path(__file__).read_bytes());changed+=1
add('release_logs/163/feature-card.json',json.dumps([x for x in json.load(open(T/'features.json')) if x['id']=='settings'],ensure_ascii=False,indent=2))
add('release_logs/163/chronology163.json',json.dumps([x for x in json.load(open(T/'chronology.json')) if x['version']=='163'],ensure_ascii=False,indent=2))
ret=json.load(open(T/'RETAINED_AND_RETIRING_RAW_READBACK.json'));add('release_logs/161/post_publication/exact-passport161-before-retiring.txt',Path(ret['passport161']['path']).read_bytes())
with zipfile.ZipFile(ret['source161']['path']) as z:add('release_logs/161/post_publication/retiring-source161-manifest.json',z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/162/post_publication/closing162-committed-records.patch',subprocess.check_output(['git','diff','v162','5357b1caa69572830b91d73f6e9a650b2f28bdcb','--','theme162','AGENTS.md','10База!','PROJECT_STORAGE.json','PENDING_OWNER_REQUESTS.json','BUILD_INPUTS_INDEX_RU.txt','SOURCE_INDEX_RU.txt'],cwd=R))
add('release_logs/163/owner-scope.txt','Owner requests exact native T-shirt theme action, reports162white old MainEntrance with trending words/popular apps, removes all obsolete online UI except About links in external browser. INTERNET already absent; preserve local journal and local themes/files/backups. Owner screenshots not copied. YaTouch untouched. No phone/ART acceptance claimed.\n')
with zipfile.ZipFile(base) as old:
 previous=json.loads(old.read('MANIFEST_SHA256.json'));assert len(previous)==9805;add('manifest_snapshots/before163.json',old.read('MANIFEST_SHA256.json'));assert not set(new).intersection(previous)
 target=T/'history163.zip';assert not target.exists();records={}
 with zipfile.ZipFile(target,'w',compression=zipfile.ZIP_LZMA) as out:
  for info in old.infolist():
   if info.filename=='MANIFEST_SHA256.json':continue
   data=old.read(info.filename);record=previous[info.filename];assert len(data)==record['bytes'] and sha(data)==record['sha256'];out.writestr(info,data);records[info.filename]=record
  for name,data in sorted(new.items()):out.writestr(name,data);records[name]=dict(bytes=len(data),sha256=sha(data))
  out.writestr('MANIFEST_SHA256.json',json.dumps(records,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(target) as z:
  assert z.testzip() is None and len(z.namelist())==len(records)+1
  for name,record in records.items():
   data=z.read(name);assert len(data)==record['bytes'] and sha(data)==record['sha256'],name
 report=dict(status='PASS',bytes=target.stat().st_size,sha256=sha(target.read_bytes()),entries=len(records)+1,manifest_hashes=len(records),old_payloads_preserved=len(previous),added_payloads=len(new),stages=168,individual_logs=167,implementation_patches=sum('implementation' in n for n in records),new_implementation_items=changed,full_old_apk_or_source_added=False,exact_retiring161_passport_and_manifest_preserved=True,published162_closure_preserved=True,owner_media_not_added=True)
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
