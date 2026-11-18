"""Preserve every prior payload; append161 logs, deltas and required icon artwork only."""
from pathlib import Path
import difflib,hashlib,json,subprocess,zipfile
T=Path(__file__).resolve().parent;R=T.parent;B=R/'backup160'
sha=lambda data:hashlib.sha256(data).hexdigest()
base=B/'history160.zip'
assert sha(base.read_bytes())=='405c91c3c9420a68345ee209ff95fc6b6e0363e5a430074584996faa7987b518'
new={}
def add(name,data):
    assert name not in new
    new[name]=data if isinstance(data,bytes) else data.encode()
add('CURRENT_INDEX_161.txt','TouchPalG — компактная история18.11.2026\nТекущий161, предыдущий160. Новый этап release_logs/161/, реализация implementation_patches/161/.\nВсе9706прежних payload сохраняются с прежними длиной/SHA256; старые индексы исторические.\nПолные старые APK/SOURCE и личные вложения не добавляются.\n')
add('release_logs/161/161_DEVELOPMENT_RU.txt',(T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for name in ['VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETENTION_PLAN.json','BRANDING_ASSETS.json','BRANDING_DECISION.json','BRANDING_REPRODUCIBILITY.json','LAYOUT_DARK161.json','LAYOUT_LIGHT161.json','SOURCE_PACKAGE_VERIFIED.json']:
    add('release_logs/161/'+name,(T/name).read_bytes())
add('release_logs/161/publication-relay161.yml',subprocess.check_output(['git','show','e24987bc783cb6e7b08b7a5b59f5082f671aa125:.github/workflows/publish161.yml'],cwd=R))
changed=0
for folder in ['src','compile_only','tests']:
    for p in sorted((T/folder).rglob('*')):
        if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):continue
        rel=p.relative_to(T);old=B/rel
        if old.exists() and old.read_bytes()==p.read_bytes():continue
        if old.exists():
            delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='backup160/'+str(rel),tofile='branding161/'+str(rel)))
            add('implementation_patches/161/'+str(rel)+'.patch',delta)
        else:add('implementation_patches/161/new/'+str(rel),p.read_bytes())
        changed+=1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','axml_tools.py','prepare_branding161.py','collect_verification161.py','rebuild161.py','package_source161.py','render_journal.py']:
    p=T/name;old=B/name.replace('161','160')
    delta=''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True),p.read_text().splitlines(keepends=True),fromfile='backup160/'+old.name,tofile='branding161/'+name)) if old.exists() else p.read_text()
    add('implementation_patches/161/recipe/'+name+'.patch',delta);changed+=1
add('implementation_resources/161/icon-master161.png',(T/'research/icon-sources/icon-master161.png').read_bytes())
add('implementation_patches/161/recipe/extend_history161.py',Path(__file__).read_bytes());changed+=1
catalog=json.loads((T/'features.json').read_text())
add('release_logs/161/feature-cards.json',json.dumps([x for x in catalog if x['id'] in ('full-backup','hardware','about')],ensure_ascii=False,indent=2))
add('release_logs/161/chronology161.json',json.dumps([x for x in json.loads((T/'chronology.json').read_text()) if x['version']=='161'],ensure_ascii=False,indent=2))
retained=json.loads((T/'RETAINED_AND_RETIRING_RAW_READBACK.json').read_text())
add('release_logs/159/post_publication/exact-passport159-before-retiring.txt',Path(retained['passport159']['path']).read_bytes())
with zipfile.ZipFile(retained['source159']['path']) as z:add('release_logs/159/post_publication/retiring-source159-manifest.json',z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/160/post_publication/closing160-and-owner-approved-deferred161.patch',subprocess.check_output(['git','diff','v160','47e03fa','--','backup160','AGENTS.md','10База!','PROJECT_STORAGE.json','PENDING_OWNER_REQUESTS.json','docs/DEFERRED_161_SCHEDULE.json','docs/DEFERRED_161_RECORD_READBACK.json'],cwd=R))
add('release_logs/161/owner-approved-scope.txt','18Nov2026 20:00UTC+8 execution: apply matching capsule outer shape, compact gaps without reducing fonts, remove redundant download caption/top padding, TouchPalG system name and yellow/black existing TouchPal mark. Historical157 pending_review superseded by explicit owner demand; oldSPEC/releases unchanged. Preserve package/certificate/workspace/physical subtype IDs and160 external-copy offer/red reminder/floating section notice/TPL inLanguages. No subagents used; no private attachments included.\n')
with zipfile.ZipFile(base) as source:
    manifest=json.loads(source.read('MANIFEST_SHA256.json'));assert len(manifest)==9706
    add('manifest_snapshots/before161.json',source.read('MANIFEST_SHA256.json'));assert not set(new).intersection(manifest)
    target=T/'history161.zip';assert not target.exists()
    records={}
    with zipfile.ZipFile(target,'w',compression=zipfile.ZIP_LZMA) as out:
        for info in source.infolist():
            if info.filename=='MANIFEST_SHA256.json':continue
            data=source.read(info.filename);record=manifest[info.filename]
            assert len(data)==record['bytes'] and sha(data)==record['sha256'],info.filename
            out.writestr(info,data);records[info.filename]=record
        for name,data in sorted(new.items()):
            out.writestr(name,data);records[name]={'bytes':len(data),'sha256':sha(data)}
        out.writestr('MANIFEST_SHA256.json',json.dumps(records,ensure_ascii=False,indent=2)+'\n')
    with zipfile.ZipFile(target) as check:
        assert check.testzip() is None and len(check.namelist())==len(records)+1
        for name,record in records.items():
            data=check.read(name);assert len(data)==record['bytes'] and sha(data)==record['sha256'],name
    report=dict(status='PASS',bytes=target.stat().st_size,sha256=sha(target.read_bytes()),entries=len(records)+1,manifest_hashes=len(records),old_payloads_preserved=len(manifest),added_payloads=len(new),stages=166,individual_logs=165,implementation_patches=sum('implementation' in n for n in records),new_implementation_items=changed,full_old_apk_or_source_added=False,exact_retiring159_passport_and_manifest_preserved=True,published160_closure_and_deferred161_preserved=True,owner_media_not_added=True)
    (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
