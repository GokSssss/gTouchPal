"""Preserve the compact history and append only logs and implementation deltas."""
from pathlib import Path
import difflib, hashlib, json, subprocess, zipfile

R = Path(__file__).resolve().parent.parent
T = Path(__file__).resolve().parent
sha = lambda data: hashlib.sha256(data).hexdigest()
base = R / 'backup157/history157.zip'
assert sha(base.read_bytes()) == 'aa9149b80eb22571ae1b4d38d94d6cd90815320fd31e4be58cef5354ec6a14af'
new = {}

def add(name, data):
    assert name not in new
    new[name] = data if isinstance(data, bytes) else data.encode()

add('CURRENT_INDEX_158.txt', 'gTouchPal — компактная история17.11.2026\nТекущий158, предыдущий157. Новый этап: release_logs/158/.\nЛогика изменений: implementation_patches/158/. Все9577прежних payload сохранены.\nФайлы с длиной/SHA256 перечислены в MANIFEST_SHA256.json.\nПрежние индексы — исторические снимки. Полные старые APK/SOURCE сюда не добавляются.\n')
add('release_logs/158/158_DEVELOPMENT_RU.txt', (T/'README_RU.txt').read_bytes()+b'\n'+(T/'RELEASE_NOTES_RU.md').read_bytes())
for name in ['VERIFICATION.json','HOST_TESTS.json','SOURCE_API16.json','DEX_VERIFICATION.json','DEX_TEST.txt','RESOURCE_VERIFICATION.json','SIGNING_READBACK.json','CLEAN_SOURCE_REBUILD.json','DRIVE_CORE_READBACK.json','GITHUB_PUBLIC_READBACK.json','GITHUB_RELEASE.json','PASSPORT_READBACK.json','GITHUB_TAG_VERIFIED.json','RELAY_RUN.json','RETAINED_AND_RETIRING_RAW_READBACK.json','RETAINED157_RAW_READBACK.json','RETENTION_PLAN.json']:
    add('release_logs/158/'+name, (T/name).read_bytes())
add('release_logs/158/publication-relay158.yml', subprocess.check_output(['git','show','fd92659:.github/workflows/publish158.yml'], cwd=R))
changed = 0
for folder in ['src','compile_only','tests']:
    for p in sorted((T/folder).rglob('*')):
        if not p.is_file() or p.suffix not in ('.java','.py','.xml') or any(x in p.parts for x in ['target','generated','external','classes','__pycache__']):
            continue
        rel = p.relative_to(T)
        old = R/'backup157'/rel
        if old.exists() and old.read_bytes() == p.read_bytes():
            continue
        if old.exists():
            delta = ''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True), p.read_text().splitlines(keepends=True), fromfile='backup157/'+str(rel), tofile='backup158/'+str(rel)))
            add('implementation_patches/158/'+str(rel)+'.patch', delta)
        else:
            add('implementation_patches/158/new/'+str(rel), p.read_bytes())
        changed += 1
for name in ['build.py','compile_helpers.py','package_and_sign.py','patch_version.py','collect_verification158.py','rebuild158.py','package_source158.py','render_journal.py']:
    p = T/name
    old = R/'backup157'/name.replace('158','157')
    delta = ''.join(difflib.unified_diff(old.read_text().splitlines(keepends=True), p.read_text().splitlines(keepends=True), fromfile='backup157/'+old.name, tofile='backup158/'+name)) if old.exists() else p.read_text()
    add('implementation_patches/158/recipe/'+name+'.patch', delta)
    changed += 1
catalog = json.loads((T/'features.json').read_text())
add('release_logs/158/feature-cards.json', json.dumps([x for x in catalog if x['id'] in ('full-backup','language-file-import')], ensure_ascii=False, indent=2))
chronology = json.loads((T/'chronology.json').read_text())
add('release_logs/158/chronology158.json', json.dumps(chronology[-2:], ensure_ascii=False, indent=2))
retained = json.loads((T/'RETAINED_AND_RETIRING_RAW_READBACK.json').read_text())
add('release_logs/156/post_publication/exact-passport156-before-retiring.txt', Path(retained['156passport']['path']).read_bytes())
with zipfile.ZipFile(retained['156source']['path']) as z:
    add('release_logs/156/post_publication/retiring-source156-manifest.json', z.read('SOURCE_MANIFEST_SHA256.json'))
add('release_logs/157/post_publication/closing157-committed-records.patch', subprocess.check_output(['git','diff','v157','92ee1249f855457b296a18d1deb591d87c301584','--','backup157','AGENTS.md','10База!','PROJECT_STORAGE.json'], cwd=R))
add('release_logs/158/working-folder-owner-clarification.txt', 'На снимке показан Android/data/com.cootek.smartinputv5 — родитель папки files. Владелец открыл files/TouchPalG, подтвердил наличие файлов словами «да, есть, пардон)». Пустая рабочая папка не подтверждена, перенос рабочих данных в158 не выполняется. Личные фото и видео не публикуются.\n')
with zipfile.ZipFile(base) as source:
    manifest = json.loads(source.read('MANIFEST_SHA256.json'))
    assert len(manifest) == 9577
    add('manifest_snapshots/before158.json', source.read('MANIFEST_SHA256.json'))
    assert not set(new).intersection(manifest)
    target = T/'history158.zip'
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
    report = {'status':'PASS','bytes':target.stat().st_size,'sha256':sha(target.read_bytes()),'entries':len(records)+1,'manifest_hashes':len(records),'old_payloads_preserved':len(manifest),'added_payloads':len(new),'stages':163,'individual_logs':162,'implementation_patches':sum('implementation' in n for n in records),'new_implementation_items':changed,'full_old_apk_or_source_added':False,'exact_retiring156_passport_and_manifest_preserved':True,'published157_closure_preserved':True,'owner_media_not_added':True}
    (T/'HISTORY_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report))
