package com.cootek.smartinput5.engine;
import java.util.*;
/** Deterministic native boundary only: no claim of executing vendor JNI. */
public class Okinawa {
 public String language="ru";public final List<String> words=new ArrayList<String>();
 public int adds,opens,closes,processed,failAt=-1;public boolean dropExisting,reject;
 public void release(){}public void init(){}
 public String getCurrentLanguageId(){return language;}
 public String[] getEditableUserWordList(String lang){return words.toArray(new String[0]);}
 public void fireTransactionOperation(int op){if(op==1)opens++;else if(op==2)closes++;}
 public void fireAddUserwordOperation(String word,String display,int type){
  if(failAt==adds++)throw new IllegalStateException("fixture native failure");
  if(dropExisting)words.clear();if(!reject)words.add(word);
 }
 public void doProcessEvent(){processed++;}
}
