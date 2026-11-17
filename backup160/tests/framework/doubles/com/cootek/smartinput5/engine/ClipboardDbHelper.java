package com.cootek.smartinput5.engine;
public class ClipboardDbHelper extends android.database.sqlite.SQLiteOpenHelper {
 public ClipboardDbHelper(android.content.Context c){super(c,"clipboard.db",null,1);}
 public void onCreate(android.database.sqlite.SQLiteDatabase db){}
 public void onUpgrade(android.database.sqlite.SQLiteDatabase db,int old,int next){}
}
