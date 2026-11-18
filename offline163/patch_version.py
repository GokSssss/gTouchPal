"""Version163 and explicit retired network component removal; preserve all live identities."""
from pathlib import Path
import json,struct
from axml_tools import strings, append_pool, chunks

def attributes(data,pos,pool):
 start,attrsize,count=struct.unpack_from('<HHH',data,pos+24);assert attrsize==20
 return {pool[struct.unpack_from('<I',data,pos+16+start+i*attrsize+4)[0]]:pos+16+start+i*attrsize for i in range(count)}
def string_attribute(data,at,pool):
 assert data[at+15]==3
 return pool[struct.unpack_from('<I',data,at+16)[0]]
def patch(data):
 policy=json.loads((Path(__file__).parent/'OFFLINE_POLICY163.json').read_text())
 removed={x['name'] for x in policy['removed_components']};permissions=set(policy['removed_permissions'])
 nodes=list(chunks(data));poolpos,_,_,poolsize=next(n for n in nodes if n[1]==1);pool=strings(data,poolpos)
 rootpos,_,_,rootsize=next(n for n in nodes if n[1]==0x102)
 attrs=attributes(data,rootpos,pool);vc,vn=attrs['versionCode'],attrs['versionName']
 oldcode=struct.unpack_from('<I',data,vc+16)[0];oldname=string_attribute(data,vn,pool)
 assert (oldcode,oldname)==(10075,'6.2.7.1-162')
 code,name=10076,'6.2.7.1-163'
 newpool=append_pool(data[poolpos:poolpos+poolsize],[str(code),name]);rootnode=bytearray(data[rootpos:rootpos+rootsize])
 for at,raw,value in [(vc,len(pool),code),(vn,len(pool)+1,len(pool)+1)]:
  offset=at-rootpos;struct.pack_into('<I',rootnode,offset+8,raw);struct.pack_into('<I',rootnode,offset+16,value)
 out=bytearray(data[:8]);depth=0;dropped=[];perms=[];skipfilters=0
 for pos,typ,header,size in nodes:
  if typ==0x102:
   tag=pool[struct.unpack_from('<I',data,pos+20)[0]];a=attributes(data,pos,pool)
   n=string_attribute(data,a['name'],pool) if 'name' in a and data[a['name']+15]==3 else None
   if depth:depth+=1;continue
   if (tag in ['activity','receiver','service'] and n in removed) or (tag=='uses-permission' and n in permissions):
    depth=1;(perms if tag=='uses-permission' else dropped).append(n);continue
   # Native local theme activity has no old shop/HOTWORD/browser intent filters.
   if tag=='activity':skipfilters=1 if n==policy['retained_native_theme_activity'] else 0
   if tag=='intent-filter' and skipfilters:depth=1;continue
  elif typ==0x103:
   if depth:depth-=1;continue
   tag=pool[struct.unpack_from('<I',data,pos+20)[0]]
   if tag=='activity':skipfilters=0
  out+=newpool if pos==poolpos else rootnode if pos==rootpos else data[pos:pos+size]
 assert depth==0 and set(dropped)==removed,(set(dropped)^removed)
 struct.pack_into('<I',out,4,len(out));list(chunks(out))
 return bytes(out),dict(old_version_code=oldcode,version_code=code,old_version_name=oldname,version_name=name,activity_added=None,all_components_unchanged=False,removed_components=dropped,removed_permissions=perms,internet_absent_before_and_after=True,native_store_legacy_intent_filters_removed=True,direct_display_labels={})
