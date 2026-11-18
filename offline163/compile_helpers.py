"""Compile the own162 settings helpers against API16 contracts."""
from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED
import argparse, hashlib, json, shutil, subprocess
T=Path(__file__).resolve().parent
R=T.parent
BASE_SHA='83cf07561fe8a3c8a75d4eedb92f14d9c7764c4762070077950e62ba0ea9dcb2'
GROUPS={'app':['com/cootek/smartinput5/settings/SmartInput153','com/cootek/smartinput5/settings/SettingsGlyphs153','com/cootek/smartinput5/backup/BackupActivity','com/cootek/smartinput5/backup/BackupSettings','com/cootek/smartinput5/backup/BackupLocations155','com/cootek/smartinput5/backup/CopyFiles155','com/cootek/smartinput5/backup/SavedCopies157','com/cootek/smartinput5/backup/LanguageFiles158','com/cootek/smartinput5/backup/TextDictionary155','com/cootek/smartinput5/backup/TextRecovery155','com/cootek/smartinput5/settings/CompactSettings','com/cootek/smartinput5/settings/SettingsMenu132','com/cootek/smartinput5/settings/ThemePicker156','com/cootek/smartinput5/settings/Offline163','com/cootek/smartinput5/settings/SettingsIcons149','com/cootek/smartinput5/settings/AboutPage149']}
FAMILIES=[f for group in GROUPS.values() for f in group]
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def run(*args):subprocess.run([str(arg) for arg in args],check=True)
def compile_group(name,families):
 stub=T/'compile_classes'/name;classes=T/'helper_classes'/name
 stub.mkdir(parents=True);classes.mkdir(parents=True)
 contracts=sorted((T/'compile_only'/name).rglob('*.java'))
 assert contracts,('Missing compile-only contracts',name)
 sdk=R/'tools/android-api16.jar'
 run('java','-m','jdk.compiler/com.sun.tools.javac.Main','-source','8','-target','8',
     '-bootclasspath',sdk,'-d',stub,*contracts)
 sources=[T/'src'/(family+'.java') for family in families]
 run('java','-m','jdk.compiler/com.sun.tools.javac.Main','-source','8','-target','8',
     '-bootclasspath',sdk,'-classpath',stub,'-d',classes,*sources)
 return classes

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--base-apk',type=Path,
     default=R/'output/162-TouchPalG-6.2.7.1.apk');args=ap.parse_args()
 assert not (T/'SOURCE_PUBLISHED.json').exists() and not (T/'APK_PUBLISHED.json').exists()
 assert sha(args.base_apk)==BASE_SHA,'Wrong published160 input'
 sources=sorted((T/'src').rglob('*.java'))
 assert all((T/'src'/(f+'.java')).is_file() for f in FAMILIES)
 hashes={p.relative_to(T).as_posix():sha(p) for p in sources}
 dependencies={p.relative_to(T).as_posix():sha(p) for p in sorted((T/'compile_only').rglob('*.java'))}
 for name in ('compile_classes','helper_classes'):
  directory=T/name
  if directory.exists():assert directory.parent==T and not directory.is_symlink();shutil.rmtree(directory)
  directory.mkdir()
 outputs=[compile_group(name,families) for name,families in GROUPS.items()]
 entries=[]
 with ZipFile(T/'helpers.jar','w',ZIP_DEFLATED) as jar:
  for directory in outputs:
   for file in sorted(directory.rglob('*.class')):
    rel=file.relative_to(directory).as_posix();stem=rel.removesuffix('.class')
    assert any(stem==f or stem.startswith(f+'$') for f in FAMILIES),('Forbidden dependency packaging',rel)
    assert rel not in entries;jar.write(file,rel);entries.append(rel)
 with ZipFile(T/'contracts.jar','w',ZIP_DEFLATED) as jar:
  seen=set()
  for group in GROUPS:
   for file in sorted((T/'compile_classes'/group).rglob('*.class')):
    name=file.relative_to(T/'compile_classes'/group).as_posix()
    if name not in seen:jar.write(file,name);seen.add(name)
 run('java','-cp',R/'tools/r8.jar','com.android.tools.r8.D8','--min-api','15','--classpath',T/'contracts.jar',
     '--lib',R/'tools/android-api16.jar','--output',T/'helpers.zip',T/'helpers.jar')
 with ZipFile(T/'helpers.zip') as dex,ZipFile(args.base_apk) as base,ZipFile(T/'helpers.apk','w') as apk:
  apk.writestr('classes.dex',dex.read('classes.dex'))
  apk.writestr('AndroidManifest.xml',base.read('AndroidManifest.xml'))
 run('java','-jar',R/'tools/apktool_2.12.1.jar','d','-f','-r','-p',R/'framework',
     '-o',T/'helper_decoded',T/'helpers.apk')
 overlay=T/'overlay/smali'
 for family in FAMILIES:
  path=Path(family)
  for file in (overlay/path.parent).glob(path.name+'*.smali'):
   if file.stem==path.name or file.stem.startswith(path.name+'$'):file.unlink()
 result={}
 for file in sorted((T/'helper_decoded/smali').rglob('*.smali')):
  rel=file.relative_to(T/'helper_decoded/smali');stem=rel.with_suffix('').as_posix()
  assert any(stem==f or stem.startswith(f+'$') for f in FAMILIES),stem
  destination=overlay/rel;destination.parent.mkdir(parents=True,exist_ok=True)
  shutil.copyfile(file,destination);result[destination.relative_to(T).as_posix()]=sha(destination)
 assert hashes=={p.relative_to(T).as_posix():sha(p) for p in sources},'Sources changed during compile'
 assert dependencies=={p.relative_to(T).as_posix():sha(p) for p in sorted((T/'compile_only').rglob('*.java'))},'Contracts changed during compile'
 report=dict(families=FAMILIES,source_sha256=hashes,compile_only_sha256=dependencies,
  compiled_smali_sha256=result,class_entries=entries,android_api=16,min_api=15,
  stubs_not_packaged=True,published143_dependencies_not_packaged=True,
  base_version='162',base_apk_sha256=BASE_SHA)
 (T/'HELPERS_COMPILED.json').write_text(json.dumps(report,indent=2)+'\n')
 print('Compiled163:',len(FAMILIES),'own families;',len(result),'classes; maintained own families only')
if __name__=='__main__':main()
