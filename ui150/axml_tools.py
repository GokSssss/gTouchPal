import struct
U32=lambda b,o:struct.unpack_from("<I",b,o)[0]
def strings(b,o):
 _,hs,size=struct.unpack_from('<HHI',b,o)
 count,style,flags,start,_=struct.unpack_from('<IIIII',b,o+8)
 out=[]
 def length(p,utf8):
  if utf8:
   x=b[p];return (((x&128)<<8)|b[p+1],p+2) if x&128 else (x,p+1)
  x=struct.unpack_from('<H',b,p)[0];return (((x&32767)<<16)|struct.unpack_from('<H',b,p+2)[0],p+4) if x&32768 else (x,p+2)
 for i in range(count):
  p=o+start+struct.unpack_from('<I',b,o+hs+i*4)[0]
  n,p=length(p,bool(flags&256))
  if flags&256:n,p=length(p,True);out.append(bytes(b[p:p+n]).decode('utf8'))
  else:out.append(bytes(b[p:p+n*2]).decode('utf-16le'))
 return out

def chunks(b,start=8,end=None):
 end=len(b) if end is None else end;p=start
 while p<end:
  t,h,n=struct.unpack_from('<HHI',b,p);assert n>=h and n>0 and p+n<=end
  yield p,t,h,n;p+=n
 assert p==end

def append_pool(pool,new):
 old=strings(pool,0);assert U32(pool,16)&1==0,'sorted pool needs different insertion'
 _,h,n=struct.unpack_from('<HHI',pool);count,styles,flags,start,styleStart=struct.unpack_from('<IIIII',pool,8)
 data=pool[start:styleStart or n];offsets=list(struct.unpack_from('<'+str(count)+'I',pool,h));style_offsets=pool[h+4*count:h+4*(count+styles)]
 def length(n,utf8):
  if utf8:return bytes([n]) if n<128 else bytes([0x80|(n>>8),n&255])
  return struct.pack('<H',n) if n<32768 else struct.pack('<HH',0x8000|(n>>16),n&65535)
 for s in new:
  offsets.append(len(data));raw=s.encode('utf8' if flags&256 else 'utf-16le');units=len(s.encode('utf-16le'))//2
  data+=length(units,bool(flags&256))+(length(len(raw),True) if flags&256 else b'')+raw+(b'\0' if flags&256 else b'\0\0')
 data+=b'\0'*((-len(data))%4)
 head=bytearray(pool[:h]);newstart=h+4*(len(offsets)+styles);newstyle=newstart+len(data) if styles else 0
 result=head+struct.pack('<' +str(len(offsets))+'I',*offsets)+style_offsets+data+(pool[styleStart:n] if styles else b'')
 struct.pack_into('<I',result,4,len(result));struct.pack_into('<I',result,8,len(offsets));struct.pack_into('<II',result,20,newstart,newstyle)
 assert strings(result,0)==old+new
 return bytes(result)

