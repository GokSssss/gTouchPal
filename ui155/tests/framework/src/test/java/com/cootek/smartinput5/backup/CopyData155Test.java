package com.cootek.smartinput5.backup;

import android.content.Context;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.engine.Okinawa;
import com.cootek.smartinput5.func.z;
import java.io.*;
import java.nio.file.Files;
import java.util.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;

/** Exact production file IO and import policy, with explicit native/parser boundary doubles. */
@RunWith(RobolectricTestRunner.class) @Config(sdk=34,manifest=Config.NONE)
@LooperMode(LooperMode.Mode.PAUSED)
public class CopyData155Test {
    Context c;File dir;
    @Before public void before()throws Exception{c=RuntimeEnvironment.getApplication();dir=Files.createTempDirectory(c.getCacheDir().toPath(),"copy155_").toFile();Engine.initialized=true;Engine.busy=false;Engine.current=new Engine();z.core=new Okinawa();TextRecovery155.clear(c);}
    private List<String> parse(String s)throws Exception{return TextDictionary155.parse(new ByteArrayInputStream(s.getBytes("UTF-8")));}
    @Test public void utf8BomCommentsAndLegacyCaseInsensitiveDedup()throws Exception{assertEquals(Arrays.asList("Слово","ещё"),parse("\ufeff# список\r\n Слово 14\nслово\rещё\n"));}
    @Test public void malformedBinaryEmptyAndOversizedTokensRefuseBeforeNativeChanges()throws Exception{
        for(byte[] data:new byte[][]{{(byte)0xc3,0x28},{0,1,2},"# пусто\n".getBytes("UTF-8"),new byte[16777217]}){
            try{TextDictionary155.parse(new ByteArrayInputStream(data));fail();}catch(IOException expected){}
        }
        try{parse(String.join("",Collections.nCopies(257,"а")));fail();}catch(IOException expected){}
        assertEquals(0,z.core.adds);
    }
    @Test public void fullNativeUsrBytesAreIdenticalAndExistingCopiesNeverOverwrite()throws Exception{
        byte[] original=new byte[65539];new Random(155).nextBytes(original);CopyFiles155.Prepared p=CopyFiles155.western(c.getCacheDir(),original);
        File first=CopyFiles155.saveStandard(p,dir),second=CopyFiles155.saveStandard(p,dir);assertNotEquals(first,second);assertEquals("western.usr",first.getName());assertEquals("western (1).usr",second.getName());
        assertArrayEquals(original,Files.readAllBytes(first.toPath()));assertArrayEquals(original,Files.readAllBytes(second.toPath()));p.discard();assertTrue(first.isFile());assertTrue(second.isFile());
    }
    @Test public void corruptPreparedFileDoesNotCreateOrTouchSavedCopies()throws Exception{
        CopyFiles155.Prepared p=CopyFiles155.western(c.getCacheDir(),new byte[]{1,2,3});Files.write(p.file.toPath(),new byte[]{4,5,6});
        try{CopyFiles155.saveStandard(p,dir);fail();}catch(IOException expected){}assertEquals(0,dir.list().length);p.discard();
    }
    @Test public void txtUsesTheCapturedUsrNotAnUnrelatedLargestFile()throws Exception{
        byte[] original={9,8,7,6};CopyFiles155.Prepared p=CopyFiles155.text(c.getCacheDir(),original);assertArrayEquals(original,com.cootek.smartinput5.ui.settings.UsrFileParser.supplied);
        assertEquals("первое\nслово\n",new String(Files.readAllBytes(p.file.toPath()),"UTF-8"));assertEquals("western_dict_full.txt",p.name);p.discard();
    }
    @Test public void sessionMergesWithoutRemovingOldWordsAndCountsNativeRejections()throws Exception{
        z.core.words.add("Было");TextDictionary155.Session s=new TextDictionary155.Session(parse("было\nновое\n"),"ru");assertEquals(1,s.already);z.core.reject=true;assertTrue(s.step());assertArrayEquals(new int[]{0,1,1},s.finish());assertEquals(Arrays.asList("Было"),z.core.words);assertFalse(Engine.busy);
    }
    @Test public void sessionRefusesLanguageAndEngineChangesBeforeAnyAdd()throws Exception{
        TextDictionary155.Session s=new TextDictionary155.Session(parse("новое"),"ru");z.core.language="en";try{s.step();fail();}catch(IOException expected){}assertEquals(0,z.core.adds);
        z.core.language="ru";s=new TextDictionary155.Session(parse("новое"),"ru");Engine.current=new Engine();try{s.step();fail();}catch(IOException expected){}assertEquals(0,z.core.adds);
    }
    @Test public void nativeExceptionClosesTransactionAndAlwaysReleasesBusyFlag()throws Exception{
        z.core.failAt=0;TextDictionary155.Session s=new TextDictionary155.Session(parse("новое"),"ru");try{s.step();fail();}catch(IllegalStateException expected){}assertEquals(1,z.core.opens);assertEquals(1,z.core.closes);assertFalse(Engine.busy);
    }
    @Test public void postImportReadbackDetectsLossOfExistingWords()throws Exception{
        z.core.words.add("старое");z.core.dropExisting=true;TextDictionary155.Session s=new TextDictionary155.Session(parse("новое"),"ru");s.step();try{s.finish();fail();}catch(IOException expected){}assertFalse(Engine.busy);
    }
    @Test public void verifiedRecoverySurvivesReopenAndRejectsCorruption()throws Exception{
        byte[] prior={3,4,5};TextRecovery155.prepare(c,prior);assertTrue(TextRecovery155.pending(c));assertArrayEquals(prior,TextRecovery155.read(c));
        try{TextRecovery155.prepare(c,new byte[]{6});fail();}catch(IOException expected){}
        File snapshot=new File(BackupFiles.workspace(c),"txt_import155/before.usr");Files.write(snapshot.toPath(),new byte[]{8,8,8});try{TextRecovery155.read(c);fail();}catch(IOException expected){}assertTrue(TextRecovery155.pending(c));TextRecovery155.clear(c);assertFalse(TextRecovery155.pending(c));
    }
}
