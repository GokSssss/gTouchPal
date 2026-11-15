"""Rebuild the final SOURCE in an isolated workspace without mutating published files."""
from pathlib import Path,PurePosixPath
import argparse,hashlib,json,os,shutil,subprocess,tempfile,zipfile,time
def sha(data):return hashlib.sha256(data).hexdigest()
def main():
    p=argparse.ArgumentParser()
    for name in ['source','base','reference','tools','keystore','signing-info','report']:p.add_argument('--'+name,type=Path,required=True)
    args=p.parse_args();inputs=[args.source,args.base,args.reference,args.keystore,args.signing_info]
    before={str(p.resolve()):sha(p.read_bytes()) for p in inputs}
    assert sha(args.base.read_bytes())=='3646c7102345972d1bbc552f7144333525e226001bb7da283c62e4414cb660f5'
    steps=[]
    with tempfile.TemporaryDirectory(prefix='gtouchpal152-rebuild-') as tmp:
        root=Path(tmp)
        with zipfile.ZipFile(args.source) as archive:
            manifest=json.loads(archive.read('SOURCE_MANIFEST_SHA256.json'))
            assert len(archive.namelist())==len(set(archive.namelist()))==len(manifest)+1
            for name,record in manifest.items():
                relative=PurePosixPath(name);assert not relative.is_absolute() and '..' not in relative.parts and '\\' not in name
                data=archive.read(name);assert len(data)==record['bytes'] and sha(data)==record['sha256']
                path=root/name;path.parent.mkdir(parents=True,exist_ok=True);path.write_bytes(data)
        target=root/'ui152';(root/'tools').symlink_to(args.tools.resolve(),target_is_directory=True)
        (root/'output').mkdir();(root/'framework').mkdir()
        (root/'output/151-gTouchPal-6.2.7.1.apk').symlink_to(args.base.resolve())
        env=os.environ.copy();env['TOUCHPAL_KEYSTORE']=str(args.keystore.resolve());env['TOUCHPAL_SIGNING_INFO']=str(args.signing_info.resolve())
        for name in ['compile_helpers.py','build.py','tests/run_dex_checks.py','tests/framework/run.py']:
            start=time.monotonic()
            result=subprocess.run(['python3',str(target/name)],cwd=root,env=env,capture_output=True,text=True)
            steps.append(dict(stage=name,exit_code=result.returncode,seconds=round(time.monotonic()-start,2),
                stdout_sha256=sha(result.stdout.encode()),stderr_sha256=sha(result.stderr.encode())))
            if result.returncode:raise RuntimeError(name+' failed: '+result.stdout[-1000:]+result.stderr[-2000:])
        result=root/'output/152-gTouchPal-6.2.7.1.apk'
        assert result.read_bytes()==args.reference.read_bytes(),'Rebuilt APK differs'
    assert before=={str(p.resolve()):sha(p.read_bytes()) for p in inputs}
    report=dict(version='152',status='PASS',source_sha256=sha(args.source.read_bytes()),
        source_files=len(manifest),apk_sha256=sha(args.reference.read_bytes()),
        byte_identical_apk=True,isolated=True,steps=steps,private_materials_exported=False,
        original_inputs_unchanged=True,android_runtime_executed=False)
    args.report.parent.mkdir(parents=True,exist_ok=True);args.report.write_text(json.dumps(report,indent=2)+'\n')
    print('PASS final152 SOURCE isolated rebuild: byte-identical signed APK; DEX/API checks passed')
if __name__=='__main__':main()
