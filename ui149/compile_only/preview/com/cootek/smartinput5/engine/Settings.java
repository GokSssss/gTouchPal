package com.cootek.smartinput5.engine;
/** Compile-only vendor contract; never package. */
public class Settings {
 public static boolean isInitialized(){throw new UnsupportedOperationException();}
 public int getIntSetting(int id,int category,String language,Config config){throw new UnsupportedOperationException();}
 public boolean getBoolSetting(int id,int category,String language,Config config){throw new UnsupportedOperationException();}
 public String getStringSetting(int id){throw new UnsupportedOperationException();}
 public static Settings getInstance(){throw new UnsupportedOperationException();}
 public boolean getBoolSetting(int id){throw new UnsupportedOperationException();}
 public int getIntSetting(int id){throw new UnsupportedOperationException();}
}
