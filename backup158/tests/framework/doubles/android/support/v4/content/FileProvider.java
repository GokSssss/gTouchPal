package android.support.v4.content;
import android.content.Context;import android.net.Uri;import java.io.File;import java.util.*;
/** URI mapping fixture; actual manifest/provider implementation is verified separately. */
public class FileProvider {
 public static boolean fail;public static final Map<Uri,File> files=new HashMap<Uri,File>();
 public static Uri getUriForFile(Context c,String authority,File file){if(fail)throw new IllegalArgumentException("fixture provider");Uri u=new Uri.Builder().scheme("content").authority(authority).appendPath("external_files").appendPath(file.getName()).build();files.put(u,file);return u;}
}
