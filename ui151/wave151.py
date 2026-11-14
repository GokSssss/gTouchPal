"""Change Wave-only paint colours; leave subclasses, geometry and fading intact."""
from pathlib import Path
import hashlib,json,re
CLASS='Lcom/cootek/smartinput5/ui/control/MoveContrailView;'
def apply(decoded,report):
 path=Path(decoded)/'smali/com/cootek/smartinput5/ui/control/MoveContrailView.smali';before=path.read_text()
 anchor='    iput v1, p0, '+CLASS+'->A:I'
 assert before.count(anchor)==1 and ':goks_wave151_inherited' not in before
 patch='''

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    const-class v2, Lcom/cootek/smartinput5/ui/control/MoveContrailView;
    if-ne v1, v2, :goks_wave151_inherited
    const v1, -0x92ccd
    iput v1, p0, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->w:I
    iput v1, p0, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->y:I
    iput v1, p0, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->z:I
    iput v1, p0, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->A:I
    :goks_wave151_inherited'''
 after=before.replace(anchor,anchor+patch);pattern=r'(?ms)^\.method ([^\n]+)\n.*?^\.end method$'
 a={m.group(1):m.group() for m in re.finditer(pattern,before)};b={m.group(1):m.group() for m in re.finditer(pattern,after)}
 assert set(a)==set(b);changed=[k for k in a if a[k]!=b[k]];assert changed==['public constructor <init>(Landroid/content/Context;)V']
 assert re.sub(pattern,'',before)==re.sub(pattern,'',after)
 path.write_text(after)
 Path(report).write_text(json.dumps(dict(status='APPLIED',class_name=CLASS,colour='#F6D333',argb='FFF6D333',only_exact_wave_class=True,normal_and_animated_colours=True,handwriting_subclass_colours_inherited=True,stroke_geometry_opacity_and_timing_unchanged=True,changed_methods=changed,base_smali_sha256=hashlib.sha256(before.encode()).hexdigest(),patched_smali_sha256=hashlib.sha256(after.encode()).hexdigest()),indent=2)+'\n')
