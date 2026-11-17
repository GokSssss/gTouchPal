package com.cootek.smartinput5.ui.settings;
import java.util.*;import java.io.*;
/** Explicit parser boundary; the unchanged shipped parser is checked in the actual DEX. */
public class UsrFileParser {
 public static boolean fail;public static byte[] supplied;
 public static class Entry{public String word;Entry(String w){word=w;}}
 public static class Result{public String error;public List<Entry> entries=new ArrayList<Entry>();}
 public static Result parse(File file){Result r=new Result();try{supplied=java.nio.file.Files.readAllBytes(file.toPath());}catch(Exception e){r.error="fixture";return r;}if(fail){r.error="fixture";return r;}r.entries.add(new Entry("первое"));r.entries.add(new Entry("слово"));r.entries.add(new Entry("первое"));return r;}
}
