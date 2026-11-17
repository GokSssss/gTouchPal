"""Extend the verified compact history; preserve every old payload, no full old installers/SOURCE."""
from pathlib import Path
import json,hashlib,zipfile,difflib,subprocess
R=Path(__file__).resolve().parent.parent;T=Path(__file__).resolve().parent
sha=lambda b:hashlib.sha256(b).hexdigest()
base=R/'ui156/history156.zip';assert sha(base.read_bytes())=='cb6aaa8394ad63f98d06505c63e59553a613126cae947f46330f75bab9fec5bd'
new={}
def add(name,data):
 assert name not in new;new[name]=data if isinstance(data,bytes) else data.encode()
add('CURRENT_INDEX_157.txt','gTouchPal — актуальная компактная история17.11.2026\nТекущий157, предыдущий156. Подробности нового этапа: release_logs/157/.\nЛогика изменений: implementation_patches/157/. Старые9530payload сохранены.\nВсе файлы перечислены с длиной/SHA256 в MANIFEST_SHA256.json.\n00_README_RU.txt и прежние индексы — сохранённые исторические снимки.\nПолные старые установщики и SOURCE сюда не добавляются.\n')
add('release_logs/157/157_DEVELOPMENT_RU.txt',(T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for name in ['VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETENTION_PLAN.json']:
 add('release_logs/157/'+name,(T/name).read_bytes())
add('release_logs/157/publication-relay157.yml',subprocess.check_output(['git','show','3d8ebc2:.github/workflows/publish157.yml'],cwd=R))
# Only changed/new implementation, not copies of inherited complete projects.
changed=0
for folder in ['src','compile_only','tests']:
 for p in sorted((T/folder).rglob('*')):
  if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):continue
  rel=p.relative_to(T);old=R/'ui156'/rel
  if old.exists() and old.read_bytes()==p.read_bytes():continue
  if old.exists():
   delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='ui156/'+str(rel),tofile='backup157/'+str(rel)))
   add('implementation_patches/157/'+str(rel)+'.patch',delta)
  else:add('implementation_patches/157/new/'+str(rel),p.read_bytes())
  changed+=1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','collect_verification157.py','rebuild157.py','package_source157.py','render_journal.py']:
 p=T/name;old=R/'ui156'/name.replace('157','156')
 delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='ui156/'+old.name,tofile='backup157/'+name)) if old.exists() else p.read_text()
 add('implementation_patches/157/recipe/'+name+'.patch',delta);changed+=1
catalog=json.loads((T/'features.json').read_text());add('release_logs/157/backup-feature-card.json',json.dumps(next(x for x in catalog if x['id']=='full-backup'),ensure_ascii=False,indent=2))
add('release_logs/157/chronology157.json',json.dumps(json.loads((T/'chronology.json').read_text())[-1],ensure_ascii=False,indent=2))
retained=json.loads((T/'RETAINED_AND_RETIRING_RAW_READBACK.json').read_text());add('release_logs/155/post_publication/exact-passport155-before-retiring.txt',Path(retained['155passport']['path']).read_bytes())
with zipfile.ZipFile(retained['155source']['path']) as z:
 add('release_logs/155/post_publication/retiring-source155-manifest.json',z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/156/post_publication/closing156-committed-records.patch',subprocess.check_output(['git','diff','v156','c1e421d','--','ui156','AGENTS.md','10База!','PROJECT_STORAGE.json'],cwd=R))
# A pending visual design is a retained resource, not an implemented APK change.
add('release_logs/157/design-only/branding-SPEC.json',(R/'mockups/branding157/SPEC.json').read_bytes())
add('release_logs/157/design-only/touchpalg-yellow-black-proposal.png',(R/'mockups/branding157/touchpalg-yellow-black-proposal.png').read_bytes())
with zipfile.ZipFile(base) as source:
 manifest=json.loads(source.read('MANIFEST_SHA256.json'));assert len(manifest)==9530
 add('manifest_snapshots/before157.json',source.read('MANIFEST_SHA256.json'))
 assert not set(new).intersection(manifest)
 target=T/'history157.zip';records={}
 with zipfile.ZipFile(target,'w',compression=zipfile.ZIP_LZMA) as out:
  for info in source.infolist():
   if info.filename=='MANIFEST_SHA256.json':continue
   data=source.read(info.filename);record=manifest[info.filename];assert len(data)==record['bytes'] and sha(data)==record['sha256'],info.filename
   out.writestr(info,data);records[info.filename]=record
  for name,data in sorted(new.items()):
   out.writestr(name,data);records[name]={'bytes':len(data),'sha256':sha(data)}
  out.writestr('MANIFEST_SHA256.json',json.dumps(records,ensure_ascii=False,indent=2)+'\n')
 with zipfile.ZipFile(target) as check:
  assert check.testzip() is None
  assert len(check.namelist())==len(records)+1
  for name,record in manifest.items():assert sha(check.read(name))==record['sha256']
 report={'status':'PASS','bytes':target.stat().st_size,'sha256':sha(target.read_bytes()),'entries':len(records)+1,'manifest_hashes':len(records),'old_payloads_preserved':len(manifest),'added_payloads':len(new),'stages':162,'individual_logs':161,'implementation_patches':sum('implementation' in n for n in records),'new_implementation_items':changed,'full_old_apk_or_source_added':False,'exact_retiring155_passport_and_manifest_preserved':True,'published156_closure_preserved':True,'pending_branding_is_design_only':True}
 (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
