package com.cootek.smartinput5.backup;

import android.os.Looper;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.engine.Okinawa;
import com.cootek.smartinput5.func.z;
import com.cootek.smartinput5.ui.settings.UsrFileParser;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.*;

/** UTF-8 word lists and the existing append-only native user-word operations. */
final class TextDictionary155 {
    private static final int LIMIT=16*1024*1024, MAX_WORDS=250000;
    private TextDictionary155(){}
    private static String token(String value){
        if(value==null)return "";String text=value.trim();
        for(int n=0;n<text.length();n++)if(Character.isWhitespace(text.charAt(n)))return text.substring(0,n);
        return text;
    }
    private static String key(String word){return token(word).toLowerCase(Locale.US);}
    static List<String> parse(InputStream input)throws IOException {
        if(input==null)throw new IOException("TXT file unavailable");
        ByteArrayOutputStream output=new ByteArrayOutputStream();byte[] buffer=new byte[16384];int n;
        while((n=input.read(buffer))!=-1){if(output.size()>LIMIT-n)throw new IOException("TXT file too large");output.write(buffer,0,n);}
        String text=Charset.forName("UTF-8").newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(output.toByteArray())).toString();
        if(text.startsWith("\ufeff"))text=text.substring(1);
        for(int i=0;i<text.length();i++){char c=text.charAt(i);if(Character.isISOControl(c)&&c!='\n'&&c!='\r'&&c!='\t')throw new IOException("Not a TXT word list");}
        LinkedHashMap<String,String> words=new LinkedHashMap<String,String>();
        for(String line:text.split("\\r\\n|\\n|\\r")){
            line=line.trim();if(line.length()==0||line.startsWith("#"))continue;
            String word=token(line);if(word.length()>256)throw new IOException("TXT word too long");
            if(word.length()!=0 && !words.containsKey(key(word)))words.put(key(word),word);
            if(words.size()>MAX_WORDS)throw new IOException("Too many TXT words");
        }
        if(words.isEmpty())throw new IOException("TXT contains no words");
        return new ArrayList<String>(words.values());
    }
    static byte[] export(File snapshot)throws IOException {
        UsrFileParser.Result result=UsrFileParser.parse(snapshot);
        if(result==null||result.error!=null&&result.error.length()!=0)throw new IOException("Cannot decode word list");
        LinkedHashSet<String> words=new LinkedHashSet<String>();
        for(UsrFileParser.Entry entry:result.entries){
            if(entry==null||entry.word==null||entry.word.length()==0)continue;
            String word=entry.word;if(word.indexOf('\n')>=0||word.indexOf('\r')>=0||word.indexOf('\0')>=0)throw new IOException("Invalid word in dictionary");
            words.add(word);if(words.size()>MAX_WORDS)throw new IOException("Too many dictionary words");
        }
        if(words.isEmpty())throw new IOException("Dictionary contains no words");
        ByteArrayOutputStream bytes=new ByteArrayOutputStream();
        for(String word:words){byte[] line=(word+"\n").getBytes("UTF-8");if(bytes.size()>LIMIT-line.length)throw new IOException("TXT file too large");bytes.write(line);}
        return bytes.toByteArray();
    }
    private static void main()throws IOException {
        if(Looper.myLooper()!=Looper.getMainLooper())throw new IOException("Dictionary operation on wrong thread");
    }
    private static Okinawa nativeCore()throws IOException {
        main();if(!Engine.isInitialized()||!z.J0())throw new IOException("Open TouchPal before importing words");
        Okinawa core=z.b0().m0();if(core==null)throw new IOException("Dictionary unavailable");return core;
    }
    static String language()throws IOException {
        String lang=nativeCore().getCurrentLanguageId();
        if(lang==null||lang.length()==0)throw new IOException("Dictionary language unavailable");return lang;
    }
    static final class Session {
        final Okinawa core;final Engine engine;final String language;
        final Set<String> before;final List<String> words;final int already;
        int next;boolean mutated;
        Session(List<String> incoming,String expected)throws IOException {
            core=nativeCore();engine=Engine.getInstance();language=core.getCurrentLanguageId();
            if(expected==null||!expected.equals(language))throw new IOException("Dictionary language changed");
            before=existing();Set<String> unique=new HashSet<String>(before);words=new ArrayList<String>();
            for(String word:incoming)if(unique.add(key(word)))words.add(word);
            already=incoming.size()-words.size();
        }
        private void check()throws IOException {
            main();if(nativeCore()!=core||Engine.getInstance()!=engine||!language.equals(core.getCurrentLanguageId()))throw new IOException("Dictionary changed during import");
        }
        private Set<String> existing()throws IOException {
            Engine.setBusyState(true);
            try{
                String[] current=core.getEditableUserWordList(language);
                if(current==null)throw new IOException("Cannot read current user words");
                Set<String> result=new HashSet<String>();for(String word:current)if(word!=null)result.add(key(word));return result;
            }finally{Engine.setBusyState(false);}
        }
        boolean step()throws IOException {
            check();if(next>=words.size())return true;
            int end=Math.min(next+24,words.size());boolean opened=false;Engine.setBusyState(true);
            try{
                core.fireTransactionOperation(1);opened=true;
                for(int i=next;i<end;i++){String word=words.get(i);mutated=true;core.fireAddUserwordOperation(word,word,3);}
                core.fireTransactionOperation(2);opened=false;core.doProcessEvent();next=end;
            }finally{
                try{if(opened){core.fireTransactionOperation(2);core.doProcessEvent();}}
                finally{Engine.setBusyState(false);}
            }
            return next>=words.size();
        }
        int[] finish()throws IOException {
            check();Set<String> current=existing();
            if(!current.containsAll(before))throw new IOException("Dictionary needs restoration from the pre-import copy");
            int added=0;for(String word:words)if(current.contains(key(word)))added++;
            return new int[]{added,already,words.size()-added};
        }
    }
}
