"""Check the signed APK's native route and retired component inventory, never a visual clone."""
from pathlib import Path
import hashlib,json,re,struct,sys,zipfile
T=Path(__file__).resolve().parents[1];R=T.parent;sys.path.insert(0,str(T))
from axml_tools import strings,chunks
from patch_version import attributes,string_attribute
from package_and_sign import BASE,BASE_SHA256,SIGNED
sha=lambda b:hashlib.sha256(b).hexdigest()
P=json.loads((T/'OFFLINE_POLICY163.json').read_text())
with zipfile.ZipFile(SIGNED) as z:manifest=z.read('AndroidManifest.xml')
pool=strings(manifest,next(n[0] for n in chunks(manifest) if n[1]==1));items=[]
for pos,typ,_,size in chunks(manifest):
 if typ!=0x102:continue
 tag=pool[struct.unpack_from('<I',manifest,pos+20)[0]];a=attributes(manifest,pos,pool)
 if 'name' in a and manifest[a['name']+15]==3:items.append((tag,string_attribute(manifest,a['name'],pool)))
removed={(x['type'],x['name']) for x in P['removed_components']};assert not removed.intersection(items)
assert ('uses-permission','android.permission.INTERNET') not in items
for c in ['com.cootek.smartinput5.GateActivity','com.cootek.smartinput5.backup.BackupActivity','com.cootek.smartinput5.ui.settings.LanguageListActivityInte',P['retained_native_theme_activity']]:assert ('activity',c) in items,c
assert ('service','com.cootek.smartinput5.TouchPalIME') in items
D=T/'decoded/smali'
get=lambda n:(D/(n+'.smali')).read_text()
def method(s,sig):return next(m[0] for m in re.finditer(r'(?ms)^\.method ([^\n]*)\n.*?^\.end method',s) if m[1].split()[-1]==sig)
shirt=method(get('com/cootek/smartinput5/pluginwidget/t'),'c(Landroid/content/Context;)V')
assert 'Offline163;->themes(' in shirt and 'rnstore' not in shirt and 'SkinDownloadActivity' not in shirt
picker=method(get('com/cootek/smartinput5/settings/ThemePicker156'),'open(Landroid/app/Activity;)V')
assert 'pluginwidget/t;-><init>()V' in picker and 'pluginwidget/t;->c(' in picker and 'MainEntranceActivity' not in picker
store=get('com/cootek/smartinput5/ui/skinappshop/StoreActivity')
assert 'const/16 v0, 0xb' in method(store,'r0()V') and 'const/16 p1, 0xb' in method(store,'s0(I)V')
assert 'setDrawerLockMode(I)V' in method(store,'k0()V')
assert 'EXTRA_DETAIL' not in method(store,'U()Z')
baseui=get('com/cootek/smartinput5/ui/g0');create=method(baseui,'onCreate(Landroid/os/Bundle;)V');assert create.index('ThemeMod;->initDark')<create.index('->onCreate(Landroid/os/Bundle;)V')
fragment=get('com/cootek/smartinput5/ui/skinappshop/i');init=method(fragment,'<clinit>()V');assert init.count('ShopTab;->THEME_SKIN_LOCAL')>=1 and 'THEME_SKIN_POPULAR' not in init
local=method(fragment,'C()V');assert 'ui/settings/p;-><init>' in local and 'ui/settings/q;-><init>' not in local
assert 'func/mainentrance/f;' in get('com/cootek/smartinput5/ui/settings/p')
journal=get('com/cootek/smartinput5/settings/DevelopmentHistory');assert 'touchpal_features.html' in journal and 'file:///android_asset' in journal
# Own About remains a local screen with only the two owner-approved browser links.
about=(T/'src/com/cootek/smartinput5/settings/AboutPage149.java').read_text();assert about.count('https://')==2 and 'activity.startActivity(new Intent(Intent.ACTION_VIEW' in about
# Actual exact-class comparison additionally validates these reused local controllers.
for n in ['com/cootek/smartinput5/func/mainentrance/f','com/cootek/smartinput5/ui/settings/p','com/cootek/smartinput5/ui/skinappshop/i','com/cootek/smartinput5/ui/g0','com/cootek/smartinput5/settings/DevelopmentHistory']:
 assert not (T/'overlay/smali'/(n+'.smali')).exists(),n
report=dict(status='PASS',version=163,apk_sha256=sha(SIGNED.read_bytes()),base_sha256=BASE_SHA256,retired_components_absent=len(removed),internet_permission_absent=True,native_shirt_action_shared=True,native_store_local_page11=True,native_dark_initialization_before_super=True,original_grid_preview_and_selection_controller_reused=True,no_recreated_grid=True,no_remote_store_navigation=True,local_journal_preserved=True,about_two_external_links_preserved=True,phone_or_art_executed=False)
(T/'OFFLINE_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n');print('PASS signed163 native shirt/local store/dark hook/retired components/local journal/About')
