"""Four bounded existing methods. Preserve all other closed-app bytecode."""
from pathlib import Path
import hashlib,json,re
T=Path(__file__).resolve().parent
PREFIX='com/cootek/smartinput5/'
def apply(decoded):
    records=[]
    def change(relative,signature,callback):
        p=decoded/'smali'/PREFIX/(relative+'.smali')
        source=p.read_text()
        pattern=r'(?m)^\.method '+re.escape(signature)+r'\n[\s\S]*?^\.end method'
        matches=list(re.finditer(pattern,source));assert len(matches)==1,(relative,signature)
        match=matches[0];old=match.group();new=callback(old);assert old!=new
        p.write_text(source[:match.start()]+new+source[match.end():])
        records.append(dict(file=p.relative_to(decoded).as_posix(),method=signature,
            before_sha256=hashlib.sha256(old.encode()).hexdigest(),
            after_sha256=hashlib.sha256(new.encode()).hexdigest()))
    def hook(method,call):
        assert method.count('return-void')==1
        return method.replace('    return-void','    '+call+'\n\n    return-void')
    change('engine/Engine','private checkTextPasted(III)V',
        lambda old:'.method private checkTextPasted(III)V\n    .locals 0\n\n    return-void\n.end method')
    change('func/resource/ui/c','protected onResume()V',
        lambda old:hook(old,'invoke-static {p0}, Lcom/cootek/smartinput5/settings/CompactSettings;->install(Landroid/preference/PreferenceActivity;)V'))
    for name in ['preference/AboutPreferenceActivity','TPAboutPageActivity']:
        change(name,'protected onCreate(Landroid/os/Bundle;)V',
            lambda old:hook(old,'invoke-static {p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->install(Landroid/app/Activity;)V'))
    (T/'SMALI_PATCHES.json').write_text(json.dumps(records,indent=2)+'\n')
