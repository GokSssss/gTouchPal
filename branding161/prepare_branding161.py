"""Build narrow branding overlays from ImageGen artwork and immutable160 resources."""
from pathlib import Path
from zipfile import ZipFile
import hashlib,json,struct,subprocess,tempfile
from axml_tools import chunks,strings,replace_pool
T=Path(__file__).resolve().parent;R=T.parent
REPLACEMENTS={'TouchPal':'TouchPalG','gTouchPal EN/ru':'TouchPalG EN/ru','gTouchPal RU/en':'TouchPalG RU/en'}
ICONS={'res/drawable-hdpi/icon.png':72,'res/drawable-xhdpi/icon.png':96,'res/drawable-xxhdpi/icon.png':180}
def sha(data):return hashlib.sha256(data).hexdigest()
def patch_resources(data):
    assert struct.unpack_from('<HH',data)==(2,12)
    nodes=list(chunks(data,12));pos,_,_,size=next(n for n in nodes if n[1]==1)
    oldpool=data[pos:pos+size]
    pool=strings(oldpool,0)
    assert {s:pool.count(s) for s in REPLACEMENTS}==dict.fromkeys(REPLACEMENTS,1)
    newpool=replace_pool(oldpool,REPLACEMENTS)
    out=bytearray(data[:pos]+newpool+data[pos+size:])
    struct.pack_into('<I',out,4,len(out))
    assert [(t,h) for _,t,h,_ in chunks(out,12)]==[(t,h) for _,t,h,_ in nodes]
    return bytes(out)
def main():
    assert not (T/'SOURCE_PUBLISHED.json').exists() and not (T/'APK_PUBLISHED.json').exists()
    master=T/'research/icon-sources/icon-master161.png'
    base=R/'output/160-gTouchPal-6.2.7.1.apk'
    assert sha(base.read_bytes())=='8e4f1442ca3a817b70fe00fada759933e8cc8db02660dd29c8a111d1990b20fd'
    changes={}
    with ZipFile(base) as apk,tempfile.TemporaryDirectory(prefix='touchpalg-icon161-') as temporary:
        table=patch_resources(apk.read('resources.arsc'))
        target=T/'overlay/apk/resources.arsc';target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(table)
        changes['resources.arsc']={'sha256':sha(table),'string_replacements':REPLACEMENTS,'indices_preserved':True,'all_package_chunks_unchanged':True}
        for name,dimension in ICONS.items():
            original=Path(temporary)/Path(name).parent.name;original.write_bytes(apk.read(name))
            destination=T/'overlay/apk'/name;destination.parent.mkdir(parents=True,exist_ok=True)
            subprocess.run(['magick',str(master),'-resize',f'{dimension}x{dimension}!',
                '(',str(original),'-alpha','extract',')','-compose','CopyOpacity','-composite','-strip',str(destination)],check=True)
            changes[name]={'sha256':sha(destination.read_bytes()),'width':dimension,'height':dimension,'original_alpha_mask':True}
    (T/'BRANDING_ASSETS.json').write_text(json.dumps(dict(status='PASS',master='research/icon-sources/icon-master161.png',
        master_sha256=sha(master.read_bytes()),artwork='ImageGen clean opaque yellow/black original TouchPal mark; mechanical legacy density/alpha packaging only',
        image_tool=subprocess.check_output(['magick','-version'],text=True).splitlines()[0],changes=changes),ensure_ascii=False,indent=2)+'\n')
    print('PASS161 branding overlays:3 legacy-density icons;3 exact string values; stable resource IDs')
if __name__=='__main__':main()
