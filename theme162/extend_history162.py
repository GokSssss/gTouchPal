"""Append only162 logs and implementation deltas, preserving all9759 earlier payloads."""
from pathlib import Path
import difflib,hashlib,json,subprocess,zipfile
T=Path(__file__).resolve().parent;R=T.parent;B=R/'branding161'
sha=lambda data:hashlib.sha256(data).hexdigest()
base=B/'history161.zip';assert sha(base.read_bytes())=='52d3752db56f0d05453db8cd7715c7ef0dc2b73ca8a8b3cf09ac8084b572a842'
new={}
def add(name,data):
 assert name not in new;new[name]=data if isinstance(data,bytes) else data.encode()
add('CURRENT_INDEX_162.txt','TouchPalG — компактная история18.11.2026\nТекущий162, предыдущий161. Новый этап release_logs/162/, изменения implementation_patches/162/.\nВсе9759прежних payload сохраняются; старые индексы исторические. Полных старыхAPK/SOURCE/личных фото не добавляем.\n')
add('release_logs/162/162_DEVELOPMENT_RU.txt',(T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for name in ['VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETENTION_PLAN.json','SOURCE_PACKAGE_VERIFIED.json']:
 add('release_logs/162/'+name,(T/name).read_bytes())
add('release_logs/162/native-theme-route.json',(T/'research/NATIVE_THEME_ROUTE162.json').read_bytes())
add('release_logs/162/publication-relay162.yml',subprocess.check_output(['git','show','3b6c979:.github/workflows/publish162.yml'],cwd=R))
changed=0
for folder in ['src','compile_only','tests']:
 for p in sorted((T/folder).rglob('*')):
  if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):continue
  rel=p.relative_to(T);old=B/rel
  if old.exists() and old.read_bytes()==p.read_bytes():continue
  if old.exists():
   delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='branding161/'+str(rel),tofile='theme162/'+str(rel)));add('implementation_patches/162/'+str(rel)+'.patch',delta)
  else:add('implementation_patches/162/new/'+str(rel),p.read_bytes())
  changed+=1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','collect_verification162.py','rebuild162.py','package_source162.py','render_journal.py']:
 p=T/name;old=B/name.replace('162','161');delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='branding161/'+old.name,tofile='theme162/'+name)) if old.exists() else p.read_text();add('implementation_patches/162/recipe/'+name+'.patch',delta);changed+=1
add('implementation_patches/162/recipe/extend_history162.py',Path(__file__).read_bytes());changed+=1
add('release_logs/162/feature-card.json',json.dumps([x for x in json.loads((T/'features.json').read_text()) if x['id']=='settings'],ensure_ascii=False,indent=2))
add('release_logs/162/chronology162.json',json.dumps([x for x in json.loads((T/'chronology.json').read_text()) if x['version']=='162'],ensure_ascii=False,indent=2))
retained=json.loads((T/'RETAINED_AND_RETIRING_RAW_READBACK.json').read_text());add('release_logs/160/post_publication/exact-passport160-before-retiring.txt',Path(retained['passport160']['path']).read_bytes())
with zipfile.ZipFile(retained['source160']['path']) as z:add('release_logs/160/post_publication/retiring-source160-manifest.json',z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/161/post_publication/closing161-committed-records.patch',subprocess.check_output(['git','diff','v161','b43cf8bb332738792847d3324fe1d2d18d3a18a2','--','branding161','AGENTS.md','10База!','PROJECT_STORAGE.json','PENDING_OWNER_REQUESTS.json','BUILD_INPUTS_INDEX_RU.txt','SOURCE_INDEX_RU.txt'],cwd=R))
add('release_logs/162/owner-report-scope.txt','Owner reports161 Customize-only dialog with failed theme apply, requests original native installed-theme grid and first place in TouchPalG additions as annotated. Screenshots show existing stock Default/Flat gate white grid. Private screenshots not copied. Change only own route/order; native selection/preview/theme files unchanged. Integer.MIN_VALUE ordering overflow found by model tests, use0..N. No new phone acceptance claimed. YaTouch10 plan/source untouched.\n')
with zipfile.ZipFile(base) as old:
 previous=json.loads(old.read('MANIFEST_SHA256.json'));assert len(previous)==9759;add('manifest_snapshots/before162.json',old.read('MANIFEST_SHA256.json'));assert not set(new).intersection(previous)
 target=T/'history162.zip';assert not target.exists();records={}
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
 report=dict(status='PASS',bytes=target.stat().st_size,sha256=sha(target.read_bytes()),entries=len(records)+1,manifest_hashes=len(records),old_payloads_preserved=len(previous),added_payloads=len(new),stages=167,individual_logs=166,implementation_patches=sum('implementation' in n for n in records),new_implementation_items=changed,full_old_apk_or_source_added=False,exact_retiring160_passport_and_manifest_preserved=True,published161_closure_preserved=True,owner_media_not_added=True)
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
