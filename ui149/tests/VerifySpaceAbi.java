import java.io.*;
import java.util.*;
import java.util.zip.*;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.*;
import com.android.tools.smali.dexlib2.iface.instruction.*;
import com.android.tools.smali.dexlib2.iface.reference.*;

/** Resolve gesture references against the signed APK itself, never compile-only doubles. */
public class VerifySpaceAbi {
 static final String PREFIX="Lcom/cootek/smartinput5/ui/HoldSymbolGesture";
 static Map<String,ClassDef> classes=new HashMap<String,ClassDef>();
 static List<String> errors=new ArrayList<String>();
 static int checked,frameworkInherited,gestureClasses;
 static int sdkReferences;
 static boolean themeScope(String name){
  for(String prefix:System.getProperty("theme.helper.prefixes","Lcom/cootek/smartinput5/skin/BundledGateTheme").split(","))if(!prefix.isEmpty()&&name.startsWith(prefix))return true;
  return false;
 }
 static boolean prefixScope(String name,String property){
  for(String prefix:System.getProperty(property,"").split(","))if(!prefix.isEmpty()&&name.startsWith(prefix))return true;
  return false;
 }
 static boolean abiScope(String name){return System.getProperty("abi.only.prefixes","").isEmpty()||prefixScope(name,"abi.only.prefixes");}
 static String sdkLabel(){return System.getProperty("android.sdk.label","SDK16");}

 // The existing cursor helper contains SDK>=26-guarded haptics, unchanged
 // byte-for-byte from the baseline. Check its trace and new Host forwarders;
 // all of its vendor member references still receive the normal ABI check.
 static boolean sdkScope(ClassDef c, Method caller) {
  if(prefixScope(c.getType(),"sdk.exclude.prefixes"))return false;
  if(c.getType().equals("Lcom/cootek/smartinput5/ui/SpaceCursorGesture;"))return caller.getName().equals("tpTraceSpace")||caller.getName().equals("tpTraceHoldTimeout")||caller.getName().startsWith("tp126");
  if(!System.getProperty("sdk.helper.prefixes","").isEmpty())return prefixScope(c.getType(),"sdk.helper.prefixes");
  return c.getType().startsWith("Lcom/cootek/smartinput5/backup/")||themeScope(c.getType());
 }

 static Map<String,SdkType> sdkTypes;
 static class SdkMember {int flags;SdkMember(int flags){this.flags=flags;}}
 static class SdkType {String parent;List<String> interfaces=new ArrayList<String>();Map<String,SdkMember> methods=new HashMap<String,SdkMember>(),fields=new HashMap<String,SdkMember>();}
 static void skip(DataInputStream in,long count)throws IOException {while(count>0){long n=in.skip(count);if(n<=0){in.readByte();n=1;}count-=n;}}
 static void attributes(DataInputStream in)throws IOException {int count=in.readUnsignedShort();for(int i=0;i<count;i++){in.readUnsignedShort();skip(in,Integer.toUnsignedLong(in.readInt()));}}
 static String className(Object[] pool,int index){return index==0?null:"L"+(String)pool[(Integer)pool[index]]+";";}
 static void loadSdk()throws Exception{
  if(sdkTypes!=null)return;sdkTypes=new HashMap<String,SdkType>();
  try(ZipFile zip=new ZipFile(System.getProperty("android.sdk.jar"))){
   for(ZipEntry entry:Collections.list(zip.entries()))if(entry.getName().endsWith(".class")){
    try(DataInputStream in=new DataInputStream(zip.getInputStream(entry))){
     if(in.readInt()!=0xcafebabe)throw new IOException("SDK class magic");in.readUnsignedShort();in.readUnsignedShort();int size=in.readUnsignedShort();Object[] pool=new Object[size];
     for(int i=1;i<size;i++){int tag=in.readUnsignedByte();switch(tag){
      case 1:pool[i]=in.readUTF();break;case 7:pool[i]=in.readUnsignedShort();break;
      case 3:case 4:case 9:case 10:case 11:case 12:case 18:case 17:skip(in,4);break;
      case 5:case 6:skip(in,8);i++;break;
      case 8:case 16:case 19:case 20:skip(in,2);break;case 15:skip(in,3);break;
      default:throw new IOException("SDK pool tag "+tag);
     }}
     in.readUnsignedShort();String name=className(pool,in.readUnsignedShort());SdkType type=new SdkType();type.parent=className(pool,in.readUnsignedShort());int n=in.readUnsignedShort();
     for(int i=0;i<n;i++)type.interfaces.add(className(pool,in.readUnsignedShort()));
     n=in.readUnsignedShort();for(int i=0;i<n;i++){int flags=in.readUnsignedShort();String key=(String)pool[in.readUnsignedShort()]+":"+(String)pool[in.readUnsignedShort()];type.fields.put(key,new SdkMember(flags));attributes(in);}
     n=in.readUnsignedShort();for(int i=0;i<n;i++){int flags=in.readUnsignedShort();String key=(String)pool[in.readUnsignedShort()]+(String)pool[in.readUnsignedShort()];type.methods.put(key,new SdkMember(flags));attributes(in);}
     sdkTypes.put(name,type);
    }
   }
  }
 }
 static SdkMember sdkMember(String owner,String sig,boolean field,Set<String> seen){
  if(owner==null||!seen.add(owner))return null;SdkType type=sdkTypes.get(owner);if(type==null)return null;
  SdkMember m=(field?type.fields:type.methods).get(sig);if(m!=null)return m;
  if(!field&&sig.startsWith("<init>("))return null;
  m=sdkMember(type.parent,sig,field,seen);if(m!=null)return m;
  for(String iface:type.interfaces){m=sdkMember(iface,sig,field,seen);if(m!=null)return m;}return null;
 }
 // Resolve Java APIs against the chosen Android boot library, not the host JDK.
 static boolean sdkOwner(String owner){return (owner.startsWith("Landroid/")||owner.startsWith("Ljava/")||owner.startsWith("Ljavax/"))&&!classes.containsKey(owner);}
 static String signature(MethodReference m){StringBuilder s=new StringBuilder(m.getName()).append('(');for(Object p:m.getParameterTypes())s.append(p);return s.append(')').append(m.getReturnType()).toString();}
 static String signature(FieldReference f){return f.getName()+":"+f.getType();}
 static String pkg(String c){return c.substring(0,c.lastIndexOf('/'));}
 static List<Method> methods(ClassDef c){List<Method> result=new ArrayList<Method>();for(Object m:c.getDirectMethods())result.add((Method)m);for(Object m:c.getVirtualMethods())result.add((Method)m);return result;}
 static List<Field> fields(ClassDef c){List<Field> result=new ArrayList<Field>();for(Object f:c.getStaticFields())result.add((Field)f);for(Object f:c.getInstanceFields())result.add((Field)f);return result;}
 static Method method(String owner,String sig,Set<String> seen){
  if(owner==null||!seen.add(owner))return null;ClassDef c=classes.get(owner);if(c==null)return null;
  for(Method m:methods(c))if(signature(m).equals(sig))return m;
  Method m=method(c.getSuperclass(),sig,seen);if(m!=null)return m;
  for(Object iface:c.getInterfaces()){m=method((String)iface,sig,seen);if(m!=null)return m;}return null;
 }
 static Field field(String owner,String sig,Set<String> seen){
  if(owner==null||!seen.add(owner))return null;ClassDef c=classes.get(owner);if(c==null)return null;
  for(Field f:fields(c))if(signature(f).equals(sig))return f;
  Field f=field(c.getSuperclass(),sig,seen);if(f!=null)return f;
  for(Object iface:c.getInterfaces()){f=field((String)iface,sig,seen);if(f!=null)return f;}return null;
 }
 static boolean subclass(String child,String ancestor){Set<String> seen=new HashSet<String>();while(child!=null&&seen.add(child)){if(child.equals(ancestor))return true;ClassDef c=classes.get(child);SdkType sdk=c==null?sdkTypes.get(child):null;child=c!=null?c.getSuperclass():sdk==null?null:sdk.parent;}return false;}
 static void access(String caller,String owner,int flags,String description){
  if((flags&1)!=0)return;
  if((flags&2)!=0){if(!caller.equals(owner))errors.add("private access: "+description);return;}
  if(pkg(caller).equals(pkg(owner)))return;
  if((flags&4)!=0&&subclass(caller,owner))return;
  errors.add("inaccessible member: "+description);
 }
 // These are View APIs present in the API16 compile SDK. Native subclasses inherit them.
 static String descriptor(Class<?> c){if(c.isArray())return c.getName().replace('.','/');if(!c.isPrimitive())return "L"+c.getName().replace('.','/')+";";if(c==void.class)return "V";if(c==boolean.class)return "Z";if(c==int.class)return "I";if(c==long.class)return "J";if(c==float.class)return "F";if(c==double.class)return "D";if(c==byte.class)return "B";if(c==short.class)return "S";return "C";}
 static String sdkDeclaring(String owner,String sig,Set<String> seen){
  if(owner==null||!seen.add(owner))return null;SdkType type=sdkTypes.get(owner);if(type==null)return null;
  if(type.methods.containsKey(sig))return owner;
  String found=sdkDeclaring(type.parent,sig,seen);if(found!=null)return found;
  for(String iface:type.interfaces){found=sdkDeclaring(iface,sig,seen);if(found!=null)return found;}return null;
 }
 // A legal protected View call (e.g. setMeasuredDimension on this subclass)
 // is absent from reflection getMethods(). Resolve the actual SDK classfile,
 // including protected receiver/access and staticness, instead of host Java.
 static boolean inheritedView(String caller,String owner,String sig,String op){
  Set<String> seen=new HashSet<String>();String name=owner;
  while(name!=null&&seen.add(name)){
   ClassDef c=classes.get(name);if(c!=null){name=c.getSuperclass();continue;}
   if(!sdkOwner(name))return false;
   String declared=sdkDeclaring(name,sig,new HashSet<String>());if(declared==null)return false;
   SdkMember member=sdkTypes.get(declared).methods.get(sig);
   boolean isStatic=(member.flags&8)!=0;
   if(op.startsWith("INVOKE_STATIC")!=isStatic)return false;
   if((member.flags&1)!=0)return true;
   // invoke-super uses the caller instance, with an ancestor as its symbolic owner.
   return (member.flags&4)!=0&&subclass(caller,declared)&&(isStatic||subclass(owner,caller)||(op.startsWith("INVOKE_SUPER")&&subclass(caller,owner)));
  }return false;
 }
 static java.lang.reflect.Field inheritedJavaField(String owner,String sig){
  Set<String> seen=new HashSet<String>();String name=owner;
  while(name!=null&&seen.add(name)){
   ClassDef c=classes.get(name);if(c!=null){name=c.getSuperclass();continue;}
   if(!name.startsWith("Ljava/"))return null;
   try{
    Class<?> k=Class.forName(name.substring(1,name.length()-1).replace('/','.'),false,VerifySpaceAbi.class.getClassLoader());
    for(;k!=null;k=k.getSuperclass())for(java.lang.reflect.Field f:k.getDeclaredFields())if((f.getName()+":"+descriptor(f.getType())).equals(sig))return f;
   }catch(Throwable e){return null;}
   return null;
  }
  return null;
 }
 static final Map<String,Set<String>> methodScopes=new HashMap<String,Set<String>>();
 static boolean methodScope(String owner,String sig){return !methodScopes.containsKey(owner)||methodScopes.get(owner).contains(sig);}
 public static void main(String[] args)throws Exception{
  String scopeFile=System.getProperty("abi.only.methods.file","");
  if(!scopeFile.isEmpty())for(String line:java.nio.file.Files.readAllLines(java.nio.file.Paths.get(scopeFile))){String[] parts=line.trim().split("\\s+",2);if(parts.length==2)methodScopes.computeIfAbsent(parts[0],k->new HashSet<String>()).add(parts[1]);}
  loadSdk();
  try(ZipFile zip=new ZipFile(args[0])){
   for(ZipEntry entry:Collections.list(zip.entries()))if(entry.getName().matches("classes[0-9]*\\.dex")){
    ByteArrayOutputStream bytes=new ByteArrayOutputStream();try(InputStream in=zip.getInputStream(entry)){byte[] buf=new byte[65536];int n;while((n=in.read(buf))!=-1)bytes.write(buf,0,n);}
    DexBackedDexFile dex=new DexBackedDexFile(null,bytes.toByteArray(),0);
    for(int i=0;i<dex.classCount;i++){ClassDef c=(ClassDef)dex.classSection.get(i);if(classes.put(c.getType(),c)!=null)throw new AssertionError("duplicate class "+c.getType());}
   }
  }
  for(ClassDef c:classes.values())if(abiScope(c.getType())&&(themeScope(c.getType())||c.getType().equals("Lcom/cootek/smartinput5/func/h0;")||c.getType().equals("Lcom/cootek/smartinput5/func/h;")||c.getType().startsWith("Lcom/cootek/smartinput5/backup/")||c.getType().startsWith("Lcom/cootek/smartinput5/settings/")||c.getType().equals("Lcom/cootek/smartinput5/func/z;")||c.getType().equals("Lcom/cootek/smartinput5/skin/BundledGateTheme;")||c.getType().equals("Lcom/cootek/smartinput5/provider/skin/f;")||c.getType().equals("Lcom/cootek/smartinput5/voice/VoiceTrace;")||c.getType().equals("Lcom/cootek/smartinput5/TouchPalIME;")||c.getType().equals("Lcom/cootek/smartinput5/ime/ImeWindowTrace;")||c.getType().equals("Lcom/google/android/voiceime/ImeTrigger;")||c.getType().equals("Lcom/cootek/smartinput5/ui/settings/f;")||c.getType().equals("Lcom/cootek/smartinput5/ui/T;")||c.getType().equals("Lcom/cootek/smartinput5/ui/SpaceKey;")||c.getType().equals("Lcom/cootek/smartinput5/func/s0;")||c.getType().equals("Lcom/cootek/smartinput5/ui/settings/VibrateDialogPreference;")||c.getType().matches("Lcom/cootek/smartinput5/ui/settings/[hr]\\$[hb];"))){
   gestureClasses++;
   for(Method caller:methods(c))if(methodScope(c.getType(),signature(caller))&&caller.getImplementation()!=null)for(Object instruction:caller.getImplementation().getInstructions()){
    Instruction ins=(Instruction)instruction;
    if(!(ins instanceof ReferenceInstruction))continue;
    Reference ref=((ReferenceInstruction)ins).getReference();String op=ins.getOpcode().name();
    if(ref instanceof MethodReference){
     MethodReference r=(MethodReference)ref;String owner=r.getDefiningClass();
     if(sdkScope(c,caller)&&sdkOwner(owner)){
      sdkReferences++;SdkMember target=sdkMember(owner,signature(r),false,new HashSet<String>());
      if(target==null)errors.add(sdkLabel()+" unresolved method: "+c.getType()+" "+owner+"->"+signature(r));
      else if(op.startsWith("INVOKE_STATIC")!=((target.flags&8)!=0))errors.add(sdkLabel()+" static mismatch: "+owner+"->"+signature(r));
      continue;
     }
     if(!owner.startsWith("Lcom/cootek/")&&!owner.startsWith("Lcom/k2fsa/"))continue;
     checked++;String description=c.getType()+"->"+signature(caller)+": "+op+" "+owner+"->"+signature(r);
     Method target=method(owner,signature(r),new HashSet<String>());
     if(target==null){if(inheritedView(c.getType(),owner,signature(r),op)){frameworkInherited++;continue;}errors.add("unresolved method: "+description);continue;}
     boolean staticCall=op.startsWith("INVOKE_STATIC"),staticMethod=(target.getAccessFlags()&8)!=0;
     if(staticCall!=staticMethod)errors.add("static/instance mismatch: "+description);
     if(op.startsWith("INVOKE_DIRECT")&&!r.getName().equals("<init>")&&(target.getAccessFlags()&2)==0)errors.add("non-private direct call: "+description);
     if(op.startsWith("INVOKE_VIRTUAL")&&((target.getAccessFlags()&2)!=0||r.getName().equals("<init>")))errors.add("invalid virtual call: "+description);
     ClassDef declared=classes.get(owner);if(declared==null)errors.add("missing class: "+owner);else{
      access(c.getType(),owner,declared.getAccessFlags(),description);
      if(op.startsWith("INVOKE_INTERFACE")&&(declared.getAccessFlags()&512)==0)errors.add("interface opcode/class mismatch: "+description);
     }
     access(c.getType(),target.getDefiningClass(),target.getAccessFlags(),description);
    }else if(ref instanceof FieldReference){
     FieldReference r=(FieldReference)ref;String owner=r.getDefiningClass();
     if(sdkScope(c,caller)&&sdkOwner(owner)){
      sdkReferences++;SdkMember target=sdkMember(owner,signature(r),true,new HashSet<String>());
      if(target==null)errors.add(sdkLabel()+" unresolved field: "+c.getType()+" "+owner+"->"+signature(r));
      else if((op.startsWith("SGET")||op.startsWith("SPUT"))!=((target.flags&8)!=0))errors.add(sdkLabel()+" static field mismatch: "+owner+"->"+signature(r));
      continue;
     }
     if(!owner.startsWith("Lcom/cootek/")&&!owner.startsWith("Lcom/k2fsa/"))continue;
     checked++;String description=op+" "+owner+"->"+signature(r);Field target=field(owner,signature(r),new HashSet<String>());
     if(target==null){
      java.lang.reflect.Field platform=inheritedJavaField(owner,signature(r));
      if(platform!=null){frameworkInherited++;boolean staticOp=op.startsWith("SGET")||op.startsWith("SPUT");if(staticOp!=java.lang.reflect.Modifier.isStatic(platform.getModifiers()))errors.add("inherited Java field static mismatch: "+description);continue;}
      errors.add("unresolved field: "+description);continue;
     }
     boolean staticOp=op.startsWith("SGET")||op.startsWith("SPUT");if(staticOp!=((target.getAccessFlags()&8)!=0))errors.add("static/instance field mismatch: "+description);
     access(c.getType(),target.getDefiningClass(),target.getAccessFlags(),description);
    }
   }
  }
  if(checked<Integer.getInteger("abi.min.vendor",300)||gestureClasses<Integer.getInteger("abi.min.classes",20))throw new AssertionError("missing changed settings classes/references");
  if(!errors.isEmpty())throw new AssertionError(errors.toString());
  if(sdkReferences<Integer.getInteger("abi.min.sdk",100))throw new AssertionError("missing backup SDK references");
  System.out.println("PASS actual APK theme/backup/startup/menu/native/settings ABI: "+checked+" method/field references; "+sdkReferences+" "+sdkLabel()+" Android/Java references; "+frameworkInherited+" inherited Android/Java references; "+gestureClasses+" classes");
 }
}
