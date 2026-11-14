"""Compile exact own production source; no closed-native execution is claimed."""
from pathlib import Path
import os,shutil,subprocess,zipfile
H=Path(__file__).resolve().parent;T=H.parents[1];R=T.parent
generated=H/'generated';generated.mkdir(exist_ok=True)
names=['CompactSettings','RecentSettings146','SettingsIcons149','AboutPage149','SettingsMenu132','CandidatePanel141']
for name in names:
    rel=Path('com/cootek/smartinput5/settings')/(name+'.java')
    dest=generated/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(T/'src'/rel,dest)
doubles={
 'com/cootek/smartinput5/ui/settings/EngCandidateMaxWordsListPreference.java':'package com.cootek.smartinput5.ui.settings; public class EngCandidateMaxWordsListPreference {public static int cached;public static void setCachedValue(int value){cached=value;}}',
 'com/cootek/smartinput5/ui/settings/KeyboardCustomizeActivity.java':'package com.cootek.smartinput5.ui.settings; public class KeyboardCustomizeActivity extends android.app.Activity {}',
 'com/cootek/smartinput5/settings/SizeRuntimeStore.java':'package com.cootek.smartinput5.settings; public class SizeRuntimeStore {public static void refresh(int mode){}}',
 'com/cootek/smartinput5/settings/SizeModel.java':'package com.cootek.smartinput5.settings; public class SizeModel {public static final int HEIGHT=6;}'
}
for name,source in doubles.items():
    p=generated/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(source)
external=H/'external';external.mkdir(exist_ok=True)
maven=os.environ.get('TOUCHPAL_TEST_MAVEN') or shutil.which('mvn') or str(R/'tools/repro131/apache-maven-3.9.11/bin/mvn')
cache=Path(os.environ.get('TOUCHPAL_TEST_M2',str(Path.home()/'.m2/repository')))
artifacts=['androidx/test/monitor/1.8.0/monitor-1.8.0.aar','androidx/test/espresso/espresso-idling-resource/3.7.0/espresso-idling-resource-3.7.0.aar']
if any(not (cache/rel).exists() for rel in artifacts):
    subprocess.run([str(maven),'-q','dependency:go-offline'],cwd=H,check=True)
for rel in artifacts:
    source=cache/rel
    with zipfile.ZipFile(source) as archive:(external/(source.stem+'.jar')).write_bytes(archive.read('classes.jar'))
subprocess.run([str(maven),'-o','-q','test'],cwd=H,check=True)
