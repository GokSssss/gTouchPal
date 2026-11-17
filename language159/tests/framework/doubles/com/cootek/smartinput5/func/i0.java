package com.cootek.smartinput5.func;
import java.util.*;import com.cootek.smartinput5.engine.Settings;
public class i0{public final ArrayList<h> installed=new ArrayList<h>();public boolean accept=true;public int applied;public boolean U0(String id){if(!accept)return false;applied++;Settings.getInstance().setStringSetting(0x54,id);return true;}public ArrayList<h> B0(){return installed;}public h0 i0(String id){for(h v:installed)if(id.equals(v.b)&&v instanceof h0)return (h0)v;return null;}}
