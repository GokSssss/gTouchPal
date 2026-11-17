"""Preserve the compact history and append only logs and implementation deltas."""
from pathlib import Path
import difflib, hashlib, json, subprocess, zipfile

R = Path(__file__).resolve().parent.parent
T = Path(__file__).resolve().parent
sha = lambda data: hashlib.sha256(data).hexdigest()
base = R / 'backup158/history158.zip'
assert sha(base.read_bytes()) == '2f1621bf0e10466dc7ee1ef76645bdefe2a65fa715a529e7b29cdb4a11584bde'
new = {}

def add(name, data):
    assert name not in new
    new[name] = data if isinstance(data, bytes) else data.encode()

add('CURRENT_INDEX_159.txt', 'gTouchPal — компактная история17.11.2026\nТекущий159, предыдущий158. Новый этап: release_logs/159/.\nЛогика изменений: implementation_patches/159/. Все9620прежних payload сохранены.\nФайлы с длиной/SHA256 перечислены в MANIFEST_SHA256.json.\nПрежние индексы — исторические снимки. Полные старые APK/SOURCE сюда не добавляются.\n')
add('release_logs/159/159_DEVELOPMENT_RU.txt', (T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for name in ['VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETAINED158_RAW_READBACK.json','RETENTION_PLAN.json']:
    add('release_logs/159/'+name, (T/name).read_bytes())
add('release_logs/159/publication-relay159.yml', subprocess.check_output(['git','show','e9f8b3d:.github/workflows/publish159.yml'], cwd=R))
changed = 0
for folder in ['src','compile_only','tests']:
    for p in sorted((T/folder).rglob('*')):
        if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):
            continue
        rel = p.relative_to(T)
        old = R/'backup158'/rel
        if old.exists() and old.read_bytes() == p.read_bytes():
            continue
        if old.exists():
            delta = ''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True), p.read_text().splitlines(keepends=True), fromfile='backup158/'+str(rel), tofile='language159/'+str(rel)))
            add('implementation_patches/159/'+str(rel)+'.patch', delta)
        else:
            add('implementation_patches/159/new/'+str(rel), p.read_bytes())
        changed += 1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','collect_verification159.py','rebuild159.py','package_source159.py','render_journal.py']:
    p = T/name
    old = R/'backup158'/name.replace('159','158')
    delta = ''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True), p.read_text().splitlines(keepends=True), fromfile='backup158/'+old.name, tofile='language159/'+name)) if old.exists() else p.read_text()
    add('implementation_patches/159/recipe/'+name+'.patch', delta)
    changed += 1
catalog = json.loads((T/'features.json').read_text())
add('release_logs/159/feature-cards.json', json.dumps([x for x in catalog if x['id'] in ('full-backup','language-file-import')], ensure_ascii=False, indent=2))
chronology = json.loads((T/'chronology.json').read_text())
add('release_logs/159/chronology159.json', json.dumps(chronology[-1:], ensure_ascii=False, indent=2))
retained = json.loads((T/'RETAINED_AND_RETIRING_RAW_READBACK.json').read_text())
add('release_logs/157/post_publication/exact-passport157-before-retiring.txt', Path(retained['passport157']['path']).read_bytes())
with zipfile.ZipFile(retained['source157']['path']) as z:
    add('release_logs/157/post_publication/retiring-source157-manifest.json', z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/158/post_publication/closing158-committed-records.patch', subprocess.check_output(['git','diff','v158','4823e0e775edad131bc0afadc0216de581730cce','--','backup158','AGENTS.md','10База!','PROJECT_STORAGE.json'], cwd=R))
add('release_logs/159/post-freeze-follow-up160.txt', 'After159 freeze, owner requested an optional extra save to Downloads/selected location, a red uninstall reminder, and a floating notice anchored below the active section without inline menu reflow. These belong to160;159 artifacts stay immutable. Personal photo is not included.\n')
with zipfile.ZipFile(base) as source:
    manifest = json.loads(source.read('MANIFEST_SHA256.json'))
    assert len(manifest) == 9620
    add('manifest_snapshots/before159.json', source.read('MANIFEST_SHA256.json'))
    assert not set(new).intersection(manifest)
    target = T/'history159.zip'
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
    report = {'status':'PASS','bytes':target.stat().st_size,'sha256':sha(target.read_bytes()),'entries':len(records)+1,'manifest_hashes':len(records),'old_payloads_preserved':len(manifest),'added_payloads':len(new),'stages':164,'individual_logs':163,'implementation_patches':sum('implementation' in n for n in records),'new_implementation_items':changed,'full_old_apk_or_source_added':False,'exact_retiring157_passport_and_manifest_preserved':True,'published158_closure_preserved':True,'owner_media_not_added':True}
    (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report))
