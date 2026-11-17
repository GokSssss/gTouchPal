"""Preserve the compact history and append only logs and implementation deltas."""
from pathlib import Path
import difflib, hashlib, json, subprocess, zipfile

R = Path(__file__).resolve().parent.parent
T = Path(__file__).resolve().parent
sha = lambda data: hashlib.sha256(data).hexdigest()
base = R / 'language159/history159.zip'
assert sha(base.read_bytes()) == '5a7223e2b6c1664ae457d456fab8eff998a07a36a6d30b84a4a986eeb441d308'
new = {}

def add(name, data):
    assert name not in new
    new[name] = data if isinstance(data, bytes) else data.encode()

add('CURRENT_INDEX_160.txt', 'gTouchPal — компактная история17.11.2026\nТекущий160, предыдущий159. Новый этап: release_logs/160/.\nЛогика изменений: implementation_patches/160/. Все9664прежних payload сохранены.\nФайлы с длиной/SHA256 перечислены в MANIFEST_SHA256.json.\nПрежние индексы — исторические снимки. Полные старые APK/SOURCE сюда не добавляются.\n')
add('release_logs/160/160_DEVELOPMENT_RU.txt', (T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for name in ['VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETAINED159_RAW_READBACK.json','RETENTION_PLAN.json']:
    add('release_logs/160/'+name, (T/name).read_bytes())
add('release_logs/160/publication-relay160.yml', subprocess.check_output(['git','show','4afcff2:.github/workflows/publish160.yml'], cwd=R))
changed = 0
for folder in ['src','compile_only','tests']:
    for p in sorted((T/folder).rglob('*')):
        if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):
            continue
        rel = p.relative_to(T)
        old = R/'language159'/rel
        if old.exists() and old.read_bytes() == p.read_bytes():
            continue
        if old.exists():
            delta = ''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True), p.read_text().splitlines(keepends=True), fromfile='language159/'+str(rel), tofile='backup160/'+str(rel)))
            add('implementation_patches/160/'+str(rel)+'.patch', delta)
        else:
            add('implementation_patches/160/new/'+str(rel), p.read_bytes())
        changed += 1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','collect_verification160.py','rebuild160.py','package_source160.py','render_journal.py']:
    p = T/name
    old = R/'language159'/name.replace('160','159')
    delta = ''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True), p.read_text().splitlines(keepends=True), fromfile='language159/'+old.name, tofile='backup160/'+name)) if old.exists() else p.read_text()
    add('implementation_patches/160/recipe/'+name+'.patch', delta)
    changed += 1
catalog = json.loads((T/'features.json').read_text())
add('release_logs/160/feature-cards.json', json.dumps([x for x in catalog if x['id'] in ('full-backup','language-file-import')], ensure_ascii=False, indent=2))
chronology = json.loads((T/'chronology.json').read_text())
add('release_logs/160/chronology160.json', json.dumps(chronology[-1:], ensure_ascii=False, indent=2))
retained = json.loads((T/'RETAINED_AND_RETIRING_RAW_READBACK.json').read_text())
add('release_logs/158/post_publication/exact-passport158-before-retiring.txt', Path(retained['passport158']['path']).read_bytes())
with zipfile.ZipFile(retained['source158']['path']) as z:
    add('release_logs/158/post_publication/retiring-source158-manifest.json', z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/159/post_publication/closing159-committed-records.patch', subprocess.check_output(['git','diff','v159','eb3770945be6a9a8436e71f1823ae5575014f8f9','--','language159','AGENTS.md','10База!','PROJECT_STORAGE.json'], cwd=R))
add('release_logs/160/owner-popup-clarification.txt', 'Keep the notice floating above the page, anchored to its active section, without inline rows or menu reflow. Ordinary Save offers an additional copy outside the app; decline keeps the app-owned original. Red uninstall reminder is explicit owner request. No self-uninstall callback or phone acceptance is claimed; personal photo is not included.\n')
with zipfile.ZipFile(base) as source:
    manifest = json.loads(source.read('MANIFEST_SHA256.json'))
    assert len(manifest) == 9664
    add('manifest_snapshots/before160.json', source.read('MANIFEST_SHA256.json'))
    assert not set(new).intersection(manifest)
    target = T/'history160.zip'
    records = {}
    with zipfile.ZipFile(target, 'w', compression=zipfile.ZIP_LZMA) as out:
        for info in source.infolist():
            if info.filename == 'MANIFEST_SHA256.json':
                continue
            data = source.read(info.filename)
            record = manifest[info.filename]
            assert len(data) == record['bytes'] and sha(data) == record['sha256'], info.filename
            out.writestr(info, data)
            records[info.filename] = record
        for name, data in sorted(new.items()):
            out.writestr(name, data)
            records[name] = {'bytes':len(data), 'sha256':sha(data)}
        out.writestr('MANIFEST_SHA256.json', json.dumps(records, ensure_ascii=False, indent=2)+'\n')
    with zipfile.ZipFile(target) as check:
        assert check.testzip() is None
        assert len(check.namelist()) == len(records)+1
        for name, record in records.items():
            data = check.read(name)
            assert len(data) == record['bytes'] and sha(data) == record['sha256'], name
    report = {'status':'PASS','bytes':target.stat().st_size,'sha256':sha(target.read_bytes()),'entries':len(records)+1,'manifest_hashes':len(records),'old_payloads_preserved':len(manifest),'added_payloads':len(new),'stages':165,'individual_logs':164,'implementation_patches':sum('implementation' in n for n in records),'new_implementation_items':changed,'full_old_apk_or_source_added':False,'exact_retiring158_passport_and_manifest_preserved':True,'published159_closure_preserved':True,'owner_media_not_added':True}
    (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report))
