import java.io.*;import java.util.*;import java.util.zip.*;import java.security.*;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.baksmali.BaksmaliOptions;
import com.android.tools.smali.baksmali.Adaptors.ClassDefinition;
import com.android.tools.smali.baksmali.formatter.BaksmaliWriter;
public class CompareCleanDex {
 static Map<String,String> beforeText,afterText;
 static Map<String,String> texts=new TreeMap<String,String>();
 static Map<String,byte[]> classes(String apk)throws Exception{
  texts=new TreeMap<String,String>();
  Map<String,byte[]> out=new TreeMap<String,byte[]>();MessageDigest sha=MessageDigest.getInstance("SHA-256");
  try(ZipFile z=new ZipFile(apk)){for(String n:Arrays.asList("classes.dex","classes2.dex","classes3.dex")){
   if(z.getEntry(n)==null)continue;
   byte[] b;try(InputStream in=z.getInputStream(z.getEntry(n));ByteArrayOutputStream raw=new ByteArrayOutputStream()){byte[] block=new byte[65536];int c;while((c=in.read(block))!=-1)raw.write(block,0,c);b=raw.toByteArray();}
   DexBackedDexFile d=new DexBackedDexFile(null,b,0);for(int i=0;i<d.classCount;i++){
    ClassDef c=(ClassDef)d.classSection.get(i);StringWriter text=new StringWriter();BaksmaliWriter w=new BaksmaliWriter(text);new ClassDefinition(new BaksmaliOptions(),c).writeTo(w);w.flush();
    if(out.containsKey(c.getType()))throw new AssertionError("duplicate class "+c.getType());
    out.put(c.getType(),sha.digest(text.toString().getBytes("UTF-8")));
    texts.put(c.getType(),text.toString());
   }
  }}return out;
 }
 static Map<String,String> methods(String text){
  Map<String,String> out=new TreeMap<String,String>();
  java.util.regex.Matcher matcher=java.util.regex.Pattern.compile("(?ms)^\\.method [^\\n]*\\n.*?^\\.end method$").matcher(text);
  while(matcher.find()){
   String block=matcher.group(),header=block.substring(0,block.indexOf('\n'));
   String key=header.substring(header.lastIndexOf(' ')+1);
   if(out.put(key,block)!=null)throw new AssertionError("duplicate method "+key);
  }
  return out;
 }
 static String canonical(String text){
  LinkedHashMap<String,String> labels=new LinkedHashMap<String,String>();
  java.util.regex.Matcher m=java.util.regex.Pattern.compile("(?m)^\\s*(:[A-Za-z_][A-Za-z_0-9]*)\\s*$").matcher(text);
  while(m.find())if(!labels.containsKey(m.group(1)))labels.put(m.group(1),":normalized_label_"+labels.size());
  java.util.regex.Matcher refs=java.util.regex.Pattern.compile(":[A-Za-z_][A-Za-z_0-9]*").matcher(text);
  StringBuffer out=new StringBuffer();
  while(refs.find())refs.appendReplacement(out,java.util.regex.Matcher.quoteReplacement(labels.containsKey(refs.group())?labels.get(refs.group()):refs.group()));
  refs.appendTail(out);return out.toString();
 }
 static Map<String,List<String>> allowed=new HashMap<String,List<String>>();
 static String versionLabels(String text){
  String[] lines=text.split("\n",-1);
  for(int i=0;i<lines.length;i++)if(lines[i].matches("\\s*(?:\\.field|const-string).*"))lines[i]=lines[i].replace("157","158");
  return String.join("\n",lines);
 }
 static boolean permitted(String mode,String name){
  for(String p:allowed.getOrDefault(mode,Collections.<String>emptyList()))
   if(p.endsWith("*")?name.startsWith(p.substring(0,p.length()-1)):name.equals(p))return true;
  return false;
 }
 public static void main(String[] a)throws Exception{
  if(a.length!=4)throw new IllegalArgumentException("before.apk after.apk ALLOWED_DEX_CHANGES.txt ALLOWED_METHOD_CHANGES.txt");
  for(String line:java.nio.file.Files.readAllLines(new File(a[2]).toPath(),java.nio.charset.StandardCharsets.UTF_8)){
   line=line.trim();if(line.isEmpty()||line.startsWith("#"))continue;
   String[] p=line.split("\\s+",3);if(p.length<2||!Arrays.asList("change","add","remove").contains(p[0]))throw new AssertionError("bad allowed scope");
   allowed.computeIfAbsent(p[0],k->new ArrayList<String>()).add(p[1]);
  }
  Map<String,byte[]> before=classes(a[0]);beforeText=texts;
  Map<String,byte[]> after=classes(a[1]);afterText=texts;
  Set<String> added=new TreeSet<String>(after.keySet());added.removeAll(before.keySet());
  Set<String> removed=new TreeSet<String>(before.keySet());removed.removeAll(after.keySet());
  for(String name:added)if(!permitted("add",name))throw new AssertionError("unreviewed added class "+name);
  for(String name:removed)if(!permitted("remove",name))throw new AssertionError("unreviewed removed class "+name);
  Set<String> changed=new TreeSet<String>();for(String name:before.keySet())if(after.containsKey(name)&&!Arrays.equals(before.get(name),after.get(name)))changed.add(name);
  Set<String> labels=new TreeSet<String>(Arrays.asList("Lcom/cootek/smartinput5/ui/KeyboardBuildMark;","Lcom/cootek/smartinput5/settings/VoiceReportExport;","Lcom/cootek/smartinput5/voice/VoiceTrace;"));
  for(String name:changed)if(!labels.contains(name)&&!permitted("change",name))throw new AssertionError("unreviewed changed class "+name);
  for(String name:labels){
   if(!changed.contains(name))throw new AssertionError("missing version label "+name);
   if(!versionLabels(beforeText.get(name)).equals(afterText.get(name)))throw new AssertionError("version label changed beyond number "+name);
  }
  Map<String,Set<String>> methodAllow=new TreeMap<String,Set<String>>();
  for(String line:java.nio.file.Files.readAllLines(new File(a[3]).toPath(),java.nio.charset.StandardCharsets.UTF_8)){
   String[] parts=line.trim().split("\\s+",2);if(parts.length!=2)throw new AssertionError("bad method scope");
   methodAllow.computeIfAbsent(parts[0],k->new TreeSet<String>()).add(parts[1]);
  }
  int verifiedMethods=0;
  for(Map.Entry<String,Set<String>> entry:methodAllow.entrySet()){
   String cls=entry.getKey();Map<String,String> bm=methods(beforeText.get(cls)),am=methods(afterText.get(cls));
   if(!bm.keySet().equals(am.keySet()))throw new AssertionError("method added/removed in original class "+cls);
   Set<String> observed=new TreeSet<String>();
   for(String key:bm.keySet())if(!canonical(bm.get(key)).equals(canonical(am.get(key))))observed.add(key);
   if(!observed.equals(entry.getValue()))throw new AssertionError("unexpected methods "+cls+" "+observed+" vs "+entry.getValue());
   String prefixBefore=beforeText.get(cls).replaceAll("(?ms)^\\.method [^\\n]*\\n.*?^\\.end method$", "");
   String prefixAfter=afterText.get(cls).replaceAll("(?ms)^\\.method [^\\n]*\\n.*?^\\.end method$", "");
   if(cls.equals("Lcom/cootek/smartinput5/func/x;"))prefixBefore=prefixBefore.replace("S:Ljava/lang/String; = \"TouchPal2015\"","S:Ljava/lang/String; = \"TouchPalG\"").replace("b:Ljava/lang/String; = \"TouchPal2015\"","b:Ljava/lang/String; = \"TouchPalG\"");
   if(cls.equals("Lcom/cootek/smartinput5/ui/settings/DictionaryEditorActivity;"))prefixBefore=prefixBefore.replace("SD_SUBDIR:Ljava/lang/String; = \"TouchPal2015/Backup\"","SD_SUBDIR:Ljava/lang/String; = \"TouchPalG/Backup\"");
   if(!prefixBefore.equals(prefixAfter))throw new AssertionError("unexpected original fields/header "+cls);
   verifiedMethods+=observed.size();
  }
  System.out.println("PASS bounded original hooks: "+verifiedMethods+" methods across "+methodAllow.size()+" classes; other methods/fields unchanged");
  System.out.println("PASS all "+before.size()+" original classes compared; "+changed.size()+" changes within declared own helpers, bounded hooks and3version labels; "+added.size()+" added/"+removed.size()+" removed");
  System.out.println("Changed "+changed);System.out.println("Added "+added);System.out.println("Removed "+removed);
 }
}
