package com.cootek.smartinput5.sizes; public class SizePixels130 {
 public static boolean isPreferenceKey(String k){return false;} public static int read(android.content.Context c,int m){return -1;}
 public static boolean set(android.content.Context c,int m,int v){return false;} public static boolean clear(android.content.Context c,int m){return false;}
 public static int font(android.content.Context c,int v){return v;} public static int candidate(android.content.Context c,int v,int base){return v;}
 public static int gap(android.content.Context c,int v){return v;} public static int panel(android.content.Context c,int v){return v;}
 public static int panelWithoutAbsolute(android.content.Context c,int v){return v;}
 public static final class Steps { public int first,last,step,defaultValue; public Steps(int a,int b,int s,int d){} public int count(){return 1;} public int at(int p){return 1;} public int index(int v){return 0;} public int nearest(int v){return v;} }
}