package com.cootek.smartinput5.engine;
/** Native IME is deliberately absent in settings-only framework tests. */
public class Engine {
 public static boolean initialized,busy;public static Engine current=new Engine();public static boolean isInitialized(){return initialized;}public static void setBusyState(boolean state){busy=state;}
 public static Engine getInstance(){return current;}
 public com.cootek.smartinput5.ui.o0 getWidgetManager(){return null;}
 public com.cootek.smartinput5.TouchPalIME getIms(){return null;}
 public com.cootek.smartinput5.ui.p0 getWindowLayoutManager(){return null;}
 public void updateResult(int flags,int key){}
}
