"""One explicit public payload: code, build inputs metadata, rules, journals, no keys."""
from pathlib import Path
import hashlib,json,re,zipfile
T=Path(__file__).resolve().parent;R=T.parent
def sha(data):return hashlib.sha256(data).hexdigest()
def payload():
    result={}
    def add(name,path):
        assert path.is_file() and not path.is_symlink(),path
        assert name not in result;result[name]=path.read_bytes()
    roots=['PENDING_OWNER_REQUESTS.json','GITHUB_PHILOSOPHY_RU.txt','CHANGELOG.md','FEATURE_JOURNAL_RULES.txt','GENERAL_PROJECT_RULES.txt','10База!','AGENTS.md','TouchPal_FEATURES_RU.txt',
        'TouchPal_DEVELOPMENT_LOG_RU.txt','PROJECT_STORAGE.json','CHECKPOINTS_RU.txt','BUILD_155.txt']
    for name in roots:add(name,R/name)
    for name in ['docs/DEVELOPMENT.md','docs/PUBLICATION_STYLE.md']:add(name,R/name)
    for name in ['src','inherited_sources','compile_only','assets','overlay','research/framework-capture','research/icon-sources']:
        for path in sorted((T/name).rglob('*')):
            if path.is_file():add('ui155/'+path.relative_to(T).as_posix(),path)
    for path in sorted((T/'research').glob('*')):
        if path.is_file() and path.suffix in ('.json','.txt'):add('ui155/'+path.relative_to(T).as_posix(),path)
    for path in sorted((T/'tests').rglob('*')):
        if path.is_file() and path.suffix in ('.py','.java','.xml') and not any(x in path.parts for x in ['target','generated','external','classes','__pycache__']):
            add('ui155/'+path.relative_to(T).as_posix(),path)
    names=['RELEASE_NOTES_RU.md','RELEASE_NOTES.md','SIGNING_READBACK.json','patch_text_tools155.py','TXT_TOOL_PATCHES.json','RESOURCE_VERIFICATION.json','compile_helpers.py','build.py','package_and_sign.py','patch_version.py','axml_tools.py',
        'collect_verification155.py','rebuild155.py','package_source155.py','render_journal.py','journal.css',
        'features.json','chronology.json','REMOVED_FAMILIES.json','TOOLCHAIN_INPUTS.json','README_RU.txt',
        'HELPERS_COMPILED.json','OVERLAY_MANIFEST.json','PACKAGE_VERIFIED.json','VERSION.json',
        'HOST_TESTS.json','SOURCE_API16.json','VERIFICATION.json','DEX_VERIFICATION.json','DEX_TEST.txt','ABI_TEST.txt','ABI_HOOKS_TEST.txt','ABI34_TEST.txt',
        'RESOURCE_CHECK_LOG.txt','ALLOWED_DEX_CHANGES.txt','ALLOWED_METHOD_CHANGES.txt','SIGNATURE_CHECK.txt','BASE_SIGNATURE_CHECK.txt',
        'COMPILE_LOG.txt','BUILD_LOG.txt','DEX_CHECK_LOG.txt','FRAMEWORK_TEST_LOG.txt','TouchPal_Нововведения_от_DelFix.xlsx']
    for name in names:add('ui155/'+name,T/name)
    result['README.md']=(R/'README.md').read_bytes()
    result['ACTIVE_BUILD.json']=json.dumps(dict(active_directory='ui155',version='155',mod_version='155',
        base='153',base_mod_version='153',apk='output/155-gTouchPal-6.2.7.1.apk',build_instructions='BUILD_155.txt'),indent=2).encode()+b'\n'
    return result
def main():
    assert not (T/'SOURCE_PUBLISHED.json').exists(), 'Published SOURCE is immutable'
    files=payload();assert all(not any(s in n.lower() for s in ['private','keystore','.jks','.pass','.github-auth']) for n in files)
    for name,data in files.items():
        if name.endswith(('.txt','.md','.json','.py','.java','.xml','.html')):
            assert not re.search(rb'(?:gh[opusr]_[A-Za-z0-9]{30,}|github_pat_[A-Za-z0-9_]{40,}|-----BEGIN (?:RSA |EC )?PRIVATE KEY-----)',data),name
    manifest={name:dict(bytes=len(data),sha256=sha(data)) for name,data in sorted(files.items())}
    path=R/'155-gTouchPal-SOURCE-6.2.7.1.zip'
    assert not path.exists(),'Freeze SOURCE once'
    with zipfile.ZipFile(path,'w',zipfile.ZIP_DEFLATED,compresslevel=9) as archive:
        for name,data in sorted(files.items()):
            info=zipfile.ZipInfo(name,(2026,11,16,0,0,0));info.compress_type=zipfile.ZIP_DEFLATED;info.external_attr=0o100644<<16
            archive.writestr(info,data,compresslevel=9)
        archive.writestr('SOURCE_MANIFEST_SHA256.json',json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
    with zipfile.ZipFile(path) as archive:
        assert archive.testzip() is None
        for name,record in manifest.items():assert sha(archive.read(name))==record['sha256']
    report=dict(source=path.name,bytes=path.stat().st_size,sha256=sha(path.read_bytes()),files=len(manifest),manifest_verified=True,private_materials_exported=False)
    (T/'SOURCE_PACKAGE_VERIFIED.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report))
if __name__=='__main__':main()
