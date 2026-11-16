package com.cootek.smartinput5.engine;
import java.util.*;
/** Explicit closed-native boundary. Keys include orientation, unlike old test doubles. */
public class Settings {public static final java.util.Map<Integer,String> strings=new java.util.HashMap<Integer,String>();public String getStringSetting(int id){return strings.containsKey(id)?strings.get(id):"";}public void setStringSetting(int id,String value){strings.put(id,value);}
 public static final Settings INSTANCE=new Settings();
 public static final Map<String,Integer> values=new HashMap<String,Integer>();
 public static boolean ready=true,numberRow=false;public static int writes=0;
 public static void reset(){values.clear();strings.clear();ready=true;numberRow=false;writes=0;}
 public static boolean isInitialized(){return ready;}
 public static Settings getInstance(){return INSTANCE;}
 public int getIntSetting(int id){return getIntSetting(id,-1,null,new Config(1));}
 public int getIntSetting(int id,int category,String key,Config config){
  Integer value=values.get(id+":"+config.orientation);
  return value!=null?value:id==0x239?0:id==0x102||id==0x235||id==0x267?-1:0;
 }
 public void setIntSetting(int id,int value){setIntSetting(id,value,-1,null,new Config(1),true);}
 public void setIntSetting(int id,int value,int category,String key,Config config,boolean fire){values.put(id+":"+config.orientation,value);writes++;}
 public boolean getBoolSetting(int id){return id==0x18d&&numberRow;}
 public void writeBack(){}
}
