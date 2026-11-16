package com.cootek.smartinput5.settings;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.DisplayMetrics;
import java.util.HashMap;
import java.util.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import static org.junit.Assert.*;
import static org.robolectric.util.ReflectionHelpers.callInstanceMethod;
import static org.robolectric.util.ReflectionHelpers.ClassParameter.from;

/** Parse the actual signed APK resources, rather than a text XML fixture. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE)
public class InputMethodLabels153Test {
    @Test public void signedApkLabelsResolveAndPhysicalSubtypeIdentitiesArePreserved()throws Exception{
        AssetManager assets=new AssetManager();
        int cookie=callInstanceMethod(assets,"addAssetPath",from(String.class,System.getProperty("touchpal.apk")));
        assertTrue(cookie>0);
        DisplayMetrics metrics=RuntimeEnvironment.getApplication().getResources().getDisplayMetrics();
        Resources resources=new Resources(assets,metrics,RuntimeEnvironment.getApplication().getResources().getConfiguration());
        String ns="http://schemas.android.com/apk/res/android";
        for(String path:new String[]{"res/xml/touchpal_method.xml","res/xml-v16/touchpal_method.xml","res/xml-v24/touchpal_method.xml"}){
            XmlResourceParser parser=assets.openXmlResourceParser(cookie,path);
            Map<Integer,String> names=new HashMap<Integer,String>();
            try{
                while(parser.next()!=XmlResourceParser.END_DOCUMENT){
                    if(parser.getEventType()!=XmlResourceParser.START_TAG||!"subtype".equals(parser.getName()))continue;
                    int id=parser.getAttributeIntValue(ns,"subtypeId",0);
                    String name=resources.getString(parser.getAttributeResourceValue(ns,"label",0));
                    assertNull(names.put(id,name));
                    assertEquals("keyboard",parser.getAttributeValue(ns,"imeSubtypeMode"));
                    if(id==1001){
                        assertEquals("en_US",parser.getAttributeValue(ns,"imeSubtypeLocale"));
                        assertEquals("en-US",parser.getAttributeValue(ns,"languageTag"));
                        assertTrue(parser.getAttributeBooleanValue(ns,"isAsciiCapable",false));
                        assertEquals("AsciiCapable,EnabledWhenDefaultIsNotAsciiCapable",parser.getAttributeValue(ns,"imeSubtypeExtraValue"));
                    }else{
                        assertEquals(1002,id);
                        assertEquals("ru_RU",parser.getAttributeValue(ns,"imeSubtypeLocale"));
                        assertEquals("ru-RU",parser.getAttributeValue(ns,"languageTag"));
                        assertFalse(parser.getAttributeBooleanValue(ns,"isAsciiCapable",true));
                    }
                }
            }finally{parser.close();}
            assertEquals(2,names.size());
            assertEquals("gTouchPal EN/ru",names.get(1001));
            assertEquals("gTouchPal RU/en",names.get(1002));
        }
        assets.close();
    }
}
