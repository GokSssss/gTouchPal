package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.*;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import java.util.*;

/** Gate retired network destinations; preserve original local Android intents. */
public final class Offline163 {
    public static final String THEMES="com.cootek.smartinput5.ui.skinappshop.StoreActivity";
    private static final Set<String> RETIRED=new HashSet<String>(Arrays.asList("com.cootek.smartinput5.func.vip.PurchaseVipActivity","com.cootek.smartinput5.func.vip.VipRenewActivity","com.cootek.smartinput5.ui.settings.SkinDownloadActivity","com.cootek.smartinput5.net.DownloadReceiver","com.cootek.smartinput5.func.SuperDictDownloadReceiver","com.cootek.smartinput5.func.PresentVipNotificationReceiver","com.cootek.smartinput5.func.LocaleLanguageDownloadReceiver","com.cootek.smartinput5.func.OemSkinDownloadReceiver","com.cootek.smartinput5.func.CloudSyncTipReceiver","com.cootek.smartinput5.ui.settings.RateUsActivity","com.cootek.smartinput5.func.vip.InviteGetVipActivity","com.cootek.smartinput5.ui.settings.TouchPalCloudActivity","com.cootek.smartinput5.ui.settings.JoinBetaActivity","com.cootek.smartinput5.func.component.AutoUpdateReceiver","com.cootek.smartinput5.ui.control.CancelDownloadActivity","com.cootek.smartinput5.ui.control.RetryDownloadActivity","com.cootek.smartinput5.ui.settings.TouchPalUpdateActivity","com.cootek.smartinput5.func.WebPageLoader","com.cootek.smartinput5.plugin.twitter.AuthorizeActivity","com.cootek.smartinput5.plugin.twitter.FollowActivity","com.cootek.smartinput5.plugin.twitter.ShareActivity","com.cootek.smartinput5.plugin.twitter.TwitterDialog","com.cootek.smartinput5.func.mainentrance.MainEntranceActivity","com.cootek.smartinput5.presentations.NotificationActionReceiver","com.cootek.smartinput5.presentations.PresentationWebviewActivity","com.cootek.smartinput5.presentations.DownloadInStatusActivity","com.cootek.smartinput5.presentations.ActionConfirmActivity","com.cootek.smartinput5.presentations.PresentationLaunchLocalPageActivity","com.cootek.smartinput5.net.login.TCloudShowActivity","com.cootek.smartinput5.net.login.TLoginActivity","com.cootek.smartinput5.net.login.FindPasswordActivity","com.cootek.smartinput5.net.login.FacebookLoginWebViewActivity","com.cootek.smartinput5.net.login.GoogleLoginWebviewActivity","com.cootek.smartinput5.net.login.TwitterLoginWebviewActivity","com.cootek.presentation.service.PresentationServiceReceiver","com.cootek.presentation.service.PresentationService","com.cootek.smartinput5.presentations.BindService","com.cootek.smartinput5.presentations.ActionCallbackReceiver","com.cootek.smartinput5.func.iab.google.ControlActivity","com.cootek.smartinput5.func.iab.PurchaseChannelChooseActivity","com.cootek.presentation.service.ShortcutActionHandler","com.cootek.smartinput5.func.ReferrerReceiver","com.cootek.smartinput5.ui.settings.TouchPalFAQActivity","com.cootek.smartinput5.func.skin.purchase.PurchaseThemeActivity","com.cootek.smartinput5.func.skin.SponsorThemeReceiver","com.cootek.smartinput5.func.skin.SponsorThemeActivity","com.cootek.smartinput5.func.skin.purchase.PurchaseReceiver","com.cootek.smartinput5.ui.TrendsDetailActivity","com.cootek.smartinput5.ui.skinappshop.StoreDetailActivity","com.cootek.smartinput5.ui.skinappshop.EmojiStoreActivity","com.cootek.smartinput5.ui.skinappshop.StickerStoreActivity","com.cootek.smartinput5.ui.skinappshop.BoomTextStoreActivity","com.cootek.touchpal.commercial.suggestion.widget.OnePixelActivity","com.cootek.tark.privacy.PrivacySettingsActivity","com.cootek.tark.privacy.PrivacyPolicyLocalActivity","com.cootek.TPDeepLinkActivity"));
    private static final Set<String> ACTIONS=new HashSet<String>(Arrays.asList("com.cootek.smartinput.intent.action.PLUGIN_PURCHASE_FINISH","com.cootek.smartinput.intent.action.SAVE_PAID_THEME","com.cootek.smartinput.intent.action.SHOW_BOOMTEXT_STORE_PAGE","com.cootek.smartinput.intent.action.SHOW_EMOJI_STORE_PAGE","com.cootek.smartinput.intent.action.SHOW_STICKER_STORE_PAGE","com.cootek.smartinput5.ACTION_APP_WALL","com.cootek.smartinput5.ACTION_NEWS","com.cootek.smartinput5.LOCAL_PAGE_JACKPOT","com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.HOTWORD","com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.START","com.cootek.smartinputv5.BACKUP","com.cootek.smartinputv5.CHECK_ANONYMOUS_CALL_LOG","com.cootek.smartinputv5.CLOUD_BACKUP","com.cootek.smartinputv5.HOTWORD","com.cootek.smartinputv5.IMPORT_CONTACTS","com.cootek.smartinputv5.INTERNAL_ACTION.ACTION_LAUNCH_SPONSOR_THEME","com.cootek.smartinputv5.INTERNAL_ACTION.ACTION_SHOW_SPONSOR_NOTIFICATION","com.cootek.smartinputv5.INTERNAL_ACTION.ACTION_SUMMARY","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_INVITE_PRESENT_VIP","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_PURCHASE_THEME","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_PURCHASE_VIP","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_BOOMTEXT","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_CELL","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_CELL_DETAIL","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_DIY_THEME","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_LANGUAGE","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_MORE","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_MORE_DETAIL","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_SKIN","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_SKIN_DETAIL","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_SKIN_FONT","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_TRENDS_DETAIL","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_TOUCHPAL_CLOUD","com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_TRENDS_RECOMMENDER","com.cootek.smartinputv5.INTERNAL_ACTION.download_locale_langauge","com.cootek.smartinputv5.INTERNAL_ACTION.download_oem_skin","com.cootek.smartinputv5.INTERNAL_ACTION.superdict_download","com.cootek.smartinputv5.LEARN_TEXT","intent.action.desktop.SHORTCUT_HANDLE"));
    private Offline163(){}
    public static Intent themeIntent(Context page){
        Intent intent=new Intent().setClassName(page.getPackageName(),THEMES);
        intent.putExtra("StoreActivity.EXTRA_START_PAGE",11);
        if(!(page instanceof Activity))intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        return intent;
    }
    public static void themes(Context page){if(page!=null)page.startActivity(themeIntent(page));}
    static Intent local(Context page,Intent input){
        if(input==null)return null;
        String target=input.getComponent()==null?null:input.getComponent().getClassName();
        Uri data=input.getData();String scheme=data==null?"":data.getScheme();
        if(THEMES.equals(target))return themeIntent(page).addFlags(input.getFlags());
        if("com.cootek.smartinput5.ui.settings.SkinDownloadActivity".equals(target))return themeIntent(page);
        if("com.cootek.TPDeepLinkActivity".equals(target)||"tpinnercall".equalsIgnoreCase(scheme)||page.getPackageName().equals(input.getPackage())&&data!=null&&!equalsAny(scheme,"content","file")){
            String name=data==null||!data.isHierarchical()?null:data.getQueryParameter("page");
            return "theme".equals(name)?themeIntent(page):null;
        }
        if(RETIRED.contains(target)||ACTIONS.contains(input.getAction()))return null;
        if(Intent.ACTION_VIEW.equals(input.getAction())&&(equalsAny(scheme,"http","https","market","intent")||data!=null&&data.toString().startsWith("touchpal")))return null;
        // A chooser may carry a stale ACTION_VIEW; keep send/file chooser payloads intact.
        if(Intent.ACTION_CHOOSER.equals(input.getAction())){
            Intent nested=(Intent)input.getParcelableExtra(Intent.EXTRA_INTENT);
            if(nested!=null&&local(page,nested)==null)return null;
        }
        return input;
    }
    private static boolean equalsAny(String value,String... options){for(String option:options)if(option.equalsIgnoreCase(value))return true;return false;}
    private static void retired(Context page){Toast.makeText(page,"Устаревший сетевой раздел удалён.",Toast.LENGTH_SHORT).show();}
    public static void start(Context page,Intent input){Intent intent=local(page,input);if(intent==null){retired(page);return;}page.startActivity(intent);}
    public static void start(Context page,Intent input,Bundle options){Intent intent=local(page,input);if(intent==null){retired(page);return;}page.startActivity(intent,options);}
    public static void result(Activity page,Intent input,int request){Intent intent=local(page,input);if(intent==null){retired(page);return;}page.startActivityForResult(intent,request);}
    public static void result(Activity page,Intent input,int request,Bundle options){Intent intent=local(page,input);if(intent==null){retired(page);return;}page.startActivityForResult(intent,request,options);}
}
