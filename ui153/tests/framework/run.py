"""Compile exact own production source; no closed-native execution is claimed."""
from pathlib import Path
import os,shutil,subprocess,zipfile,argparse,json,hashlib,xml.etree.ElementTree as E
H=Path(__file__).resolve().parent;T=H.parents[1];R=T.parent
ap=argparse.ArgumentParser();ap.add_argument('--tests');args=ap.parse_args()
generated=H/'generated';generated.mkdir(exist_ok=True)
names=['CompactSettings','RecentSettings146','SettingsIcons149','AboutPage149','SettingsMenu132','CandidatePanel141','ServiceSettings150','KeyboardActivation152','SmartInput153','SettingsGlyphs153','LandscapeHeight152','SizeModel','SizeRuntimeStore','SizeSettingsPage','FreshDefaults137']
for name in names:
    rel=Path('com/cootek/smartinput5/settings')/(name+'.java')
    dest=generated/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(T/'src'/rel if (T/'src'/rel).exists() else R/'ui152/src'/rel if (R/'ui152/src'/rel).exists() else H/'fixtures'/rel,dest)
doubles={
 'com/cootek/smartinput5/ui/settings/EngCandidateMaxWordsListPreference.java':'package com.cootek.smartinput5.ui.settings; public class EngCandidateMaxWordsListPreference {public static int cached;public static void setCachedValue(int value){cached=value;}}',
 'com/cootek/smartinput5/ui/settings/KeyboardCustomizeActivity.java':'package com.cootek.smartinput5.ui.settings; public class KeyboardCustomizeActivity extends android.app.Activity {}',


}
for name,source in doubles.items():
    p=generated/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(source)
for fixture in (H/'doubles').rglob('*.java'):
    dest=generated/fixture.relative_to(H/'doubles');dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(fixture,dest)
external=H/'external';external.mkdir(exist_ok=True)
maven=os.environ.get('TOUCHPAL_TEST_MAVEN') or shutil.which('mvn') or str(R/'tools/repro131/apache-maven-3.9.11/bin/mvn')
cache=Path(os.environ.get('TOUCHPAL_TEST_M2',str(Path.home()/'.m2/repository')))
artifacts=['androidx/test/monitor/1.8.0/monitor-1.8.0.aar','androidx/test/espresso/espresso-idling-resource/3.7.0/espresso-idling-resource-3.7.0.aar']
if any(not (cache/rel).exists() for rel in artifacts):
    subprocess.run([str(maven),'-q','dependency:go-offline'],cwd=H,check=True)
for rel in artifacts:
    source=cache/rel
    with zipfile.ZipFile(source) as archive:(external/(source.stem+'.jar')).write_bytes(archive.read('classes.jar'))
reports=H/'target/surefire-reports'
if reports.exists():shutil.rmtree(reports)
cmd=[str(maven),'-o','-q']
if args.tests:cmd.append('-Dtest='+args.tests)
subprocess.run(cmd+['test'],cwd=H,check=True)
suites=[E.parse(p).getroot() for p in reports.glob('TEST-*.xml')]
counts={k:sum(int(s.get(k,'0')) for s in suites) for k in ['tests','failures','errors','skipped']}
assert counts['tests'] and counts['failures']==counts['errors']==0
counts.update(status='PASS',android_api=34,phone_tested=False,actual_sources={str(p.relative_to(generated)):hashlib.sha256(p.read_bytes()).hexdigest() for p in generated.rglob('*.java')},selected_tests=args.tests or '*',native_contracts_are_explicit_doubles=True,apk_built=False)
(T/'HOST_TESTS.json').write_text(json.dumps(counts,indent=2)+'\n')
print('PASS',counts['tests'],'framework tests')
