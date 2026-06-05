package com.google.android.gms.internal;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Pattern;
import mobi.beyondpod.ui.core.customtabs.CustomTabsIntent;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaij {
    public static final Handler zzdfn = new zzahx(Looper.getMainLooper());
    private String zzddt;
    private Pattern zzdfr;
    private Pattern zzdfs;
    private final Object mLock = new Object();
    private boolean zzdfo = true;
    private boolean zzdfp = false;
    private boolean zzdfq = false;

    public static Bundle zza(zzhm zzhmVar) {
        String zzqq;
        String zzqs;
        String str;
        if (zzhmVar == null) {
            return null;
        }
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbnn)).booleanValue()) {
            if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbnp)).booleanValue()) {
                return null;
            }
        }
        if (com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqp() && com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqr()) {
            return null;
        }
        if (zzhmVar.zzhb()) {
            zzhmVar.wakeup();
        }
        zzhg zzgz = zzhmVar.zzgz();
        if (zzgz != null) {
            zzqq = zzgz.zzgo();
            str = zzgz.zzgp();
            zzqs = zzgz.zzgq();
            if (zzqq != null) {
                com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzcb(zzqq);
            }
            if (zzqs != null) {
                com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzcc(zzqs);
            }
        } else {
            zzqq = com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqq();
            zzqs = com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqs();
            str = null;
        }
        Bundle bundle = new Bundle(1);
        if (zzqs != null) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbnp)).booleanValue() && !com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqr()) {
                bundle.putString("v_fp_vertical", zzqs);
            }
        }
        if (zzqq != null) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbnn)).booleanValue() && !com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqp()) {
                bundle.putString("fingerprint", zzqq);
                if (!zzqq.equals(str)) {
                    bundle.putString("v_fp", str);
                }
            }
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public static String zza(Context context, View view, zzko zzkoVar) {
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbof)).booleanValue()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(SettingsJsonConstants.ICON_WIDTH_KEY, zzkoVar.width);
            jSONObject2.put(SettingsJsonConstants.ICON_HEIGHT_KEY, zzkoVar.height);
            jSONObject.put("size", jSONObject2);
            jSONObject.put("activity", zzam(context));
            if (!zzkoVar.zzbib) {
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    Object parent = view.getParent();
                    if (parent != null) {
                        int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("type", parent.getClass().getName());
                        jSONObject3.put("index_of_child", indexOfChild);
                        jSONArray.put(jSONObject3);
                    }
                    view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("parents", jSONArray);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            zzahw.zzc("Fail to get view hierarchy json", e);
            return null;
        }
    }

    public static String zza(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    private final JSONArray zza(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zza(jSONArray, it.next());
        }
        return jSONArray;
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @TargetApi(18)
    public static void zza(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbuo)).booleanValue()) {
                zzb(context, intent);
            }
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(26 + String.valueOf(uri2).length());
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            zzahw.zzby(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzahw.zzb("No browser is found.", e);
        }
    }

    public static void zza(Context context, String str, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            new zzakd(context, str, it.next()).zzns();
        }
    }

    private final void zza(JSONArray jSONArray, Object obj) throws JSONException {
        Object zza;
        if (obj instanceof Bundle) {
            zza = zzd((Bundle) obj);
        } else if (obj instanceof Map) {
            zza = zzq((Map) obj);
        } else {
            if (!(obj instanceof Collection)) {
                if (!(obj instanceof Object[])) {
                    jSONArray.put(obj);
                    return;
                }
                JSONArray jSONArray2 = new JSONArray();
                for (Object obj2 : (Object[]) obj) {
                    zza(jSONArray2, obj2);
                }
                jSONArray.put(jSONArray2);
                return;
            }
            zza = zza((Collection<?>) obj);
        }
        jSONArray.put(zza);
    }

    private final void zza(JSONObject jSONObject, String str, Object obj) throws JSONException {
        Collection<?> asList;
        Object zza;
        if (obj instanceof Bundle) {
            zza = zzd((Bundle) obj);
        } else if (obj instanceof Map) {
            zza = zzq((Map) obj);
        } else {
            if (obj instanceof Collection) {
                if (str == null) {
                    str = "null";
                }
                asList = (Collection) obj;
            } else {
                if (!(obj instanceof Object[])) {
                    jSONObject.put(str, obj);
                    return;
                }
                asList = Arrays.asList((Object[]) obj);
            }
            zza = zza(asList);
        }
        jSONObject.put(str, zza);
    }

    @TargetApi(24)
    public static boolean zza(Activity activity, Configuration configuration) {
        zzlc.zzij();
        int zza = zzako.zza(activity, configuration.screenHeightDp);
        int zza2 = zzako.zza(activity, configuration.screenWidthDp);
        DisplayMetrics zza3 = zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza3.heightPixels;
        int i2 = zza3.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) zzlc.zzio().zzd(zzoi.zzbuy)).intValue();
        return zzb(i, zza + dimensionPixelSize, round) && zzb(i2, zza2, round);
    }

    public static boolean zza(ClassLoader classLoader, Class<?> cls, String str) {
        try {
            return cls.isAssignableFrom(Class.forName(str, false, classLoader));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zzag(Context context) {
        String str;
        boolean z;
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            str = "Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.";
        } else {
            if ((resolveActivity.activityInfo.configChanges & 16) == 0) {
                zzahw.zzcz(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboard"));
                z = false;
            } else {
                z = true;
            }
            if ((resolveActivity.activityInfo.configChanges & 32) == 0) {
                zzahw.zzcz(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboardHidden"));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 128) == 0) {
                zzahw.zzcz(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "orientation"));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 256) == 0) {
                zzahw.zzcz(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenLayout"));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 512) == 0) {
                zzahw.zzcz(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "uiMode"));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 1024) == 0) {
                zzahw.zzcz(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenSize"));
                z = false;
            }
            if ((resolveActivity.activityInfo.configChanges & 2048) != 0) {
                return z;
            }
            str = String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "smallestScreenSize");
        }
        zzahw.zzcz(str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String zzaj(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return zzrb();
        }
    }

    public static AlertDialog.Builder zzak(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static zznu zzal(Context context) {
        return new zznu(context);
    }

    private static String zzam(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                return runningTaskInfo.topActivity.getClassName();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        if (r3.importance != 100) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        if (r2.inKeyguardRestrictedInputMode() != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0041, code lost:
    
        r6 = (android.os.PowerManager) r6.getSystemService("power");
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        if (r6 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
    
        if (r6 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
    
        r6 = r6.isScreenOn();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzan(android.content.Context r6) {
        /*
            r0 = 0
            java.lang.String r1 = "activity"
            java.lang.Object r1 = r6.getSystemService(r1)     // Catch: java.lang.Throwable -> L55
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.Throwable -> L55
            java.lang.String r2 = "keyguard"
            java.lang.Object r2 = r6.getSystemService(r2)     // Catch: java.lang.Throwable -> L55
            android.app.KeyguardManager r2 = (android.app.KeyguardManager) r2     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L55
            if (r2 != 0) goto L16
            return r0
        L16:
            java.util.List r1 = r1.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L55
            if (r1 != 0) goto L1d
            return r0
        L1d:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L55
        L21:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L55
            if (r3 == 0) goto L55
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L55
            android.app.ActivityManager$RunningAppProcessInfo r3 = (android.app.ActivityManager.RunningAppProcessInfo) r3     // Catch: java.lang.Throwable -> L55
            int r4 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L55
            int r5 = r3.pid     // Catch: java.lang.Throwable -> L55
            if (r4 != r5) goto L21
            int r1 = r3.importance     // Catch: java.lang.Throwable -> L55
            r3 = 100
            if (r1 != r3) goto L55
            boolean r1 = r2.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L55
            if (r1 != 0) goto L55
            java.lang.String r1 = "power"
            java.lang.Object r6 = r6.getSystemService(r1)     // Catch: java.lang.Throwable -> L55
            android.os.PowerManager r6 = (android.os.PowerManager) r6     // Catch: java.lang.Throwable -> L55
            if (r6 != 0) goto L4d
            r6 = r0
            goto L51
        L4d:
            boolean r6 = r6.isScreenOn()     // Catch: java.lang.Throwable -> L55
        L51:
            if (r6 == 0) goto L55
            r6 = 1
            return r6
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaij.zzan(android.content.Context):boolean");
    }

    public static Bitmap zzao(Context context) {
        Bitmap zzt;
        if (!(context instanceof Activity)) {
            return null;
        }
        try {
        } catch (RuntimeException e) {
            zzahw.zzb("Fail to capture screen shot", e);
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbsa)).booleanValue()) {
            Window window = ((Activity) context).getWindow();
            if (window != null) {
                zzt = zzu(window.getDecorView().getRootView());
            }
            return null;
        }
        zzt = zzt(((Activity) context).getWindow().getDecorView());
        return zzt;
    }

    public static int zzap(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    @Nullable
    private static KeyguardManager zzaq(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    @TargetApi(16)
    public static boolean zzar(Context context) {
        KeyguardManager zzaq;
        return context != null && com.google.android.gms.common.util.zzs.zzans() && (zzaq = zzaq(context)) != null && zzaq.isKeyguardLocked();
    }

    public static boolean zzas(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzahw.zzb("Error loading class.", th);
            com.google.android.gms.ads.internal.zzbt.zzep().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    @TargetApi(18)
    public static void zzb(Context context, Intent intent) {
        if (intent != null && com.google.android.gms.common.util.zzs.zzanu()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder(CustomTabsIntent.EXTRA_SESSION, null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    private static boolean zzb(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzaid.zzb(runnable);
        }
    }

    public static String zzci(String str) {
        return Uri.parse(str).buildUpon().query(null).build().toString();
    }

    public static int zzcj(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(22 + String.valueOf(valueOf).length());
            sb.append("Could not parse value:");
            sb.append(valueOf);
            zzahw.zzcz(sb.toString());
            return 0;
        }
    }

    public static boolean zzck(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static String zzcn(String str) {
        return TextUtils.isEmpty(str) ? "" : str.split(";")[0].trim();
    }

    public static String zzco(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] split = str.split(";");
        if (split.length == 1) {
            return "";
        }
        for (int i = 1; i < split.length; i++) {
            if (split[i].trim().startsWith(HttpRequest.PARAM_CHARSET)) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length > 1) {
                    return split2[1].trim();
                }
            }
        }
        return "";
    }

    private final JSONObject zzd(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public static boolean zzd(Context context, String str, String str2) {
        return zzbih.zzdd(context).checkPermission(str2, str) == 0;
    }

    public static void zze(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        zza(context, str, arrayList);
    }

    public static Map<String, String> zzf(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : com.google.android.gms.ads.internal.zzbt.zzen().zzg(uri)) {
            hashMap.put(str, uri.getQueryParameter(str));
        }
        return hashMap;
    }

    public static void zzf(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes(HttpRequest.CHARSET_UTF8));
            openFileOutput.close();
        } catch (Exception e) {
            zzahw.zzb("Error writing to file in internal storage.", e);
        }
    }

    public static int[] zzf(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? zzre() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static String zzm(Context context, String str) {
        try {
            return new String(com.google.android.gms.common.util.zzp.zza(context.openFileInput(str), true), HttpRequest.CHARSET_UTF8);
        } catch (IOException unused) {
            zzahw.zzby("Error reading from internal storage.");
            return "";
        }
    }

    public static Bitmap zzr(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    private static String zzrb() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ");
            sb.append(Build.VERSION.RELEASE);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ");
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/");
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    public static String zzrc() {
        return UUID.randomUUID().toString();
    }

    public static String zzrd() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(1 + String.valueOf(str).length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    private static int[] zzre() {
        return new int[]{0, 0};
    }

    public static Bundle zzrf() {
        Bundle bundle = new Bundle();
        try {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbmj)).booleanValue()) {
                Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo);
                bundle.putParcelable("debug_memory_info", memoryInfo);
            }
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbmk)).booleanValue()) {
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong("runtime_free_memory", runtime.freeMemory());
                bundle.putLong("runtime_max_memory", runtime.maxMemory());
                bundle.putLong("runtime_total_memory", runtime.totalMemory());
            }
            bundle.putInt("web_view_count", com.google.android.gms.ads.internal.zzbt.zzep().zzqd());
            return bundle;
        } catch (Exception e) {
            zzahw.zzc("Unable to gather memory stats", e);
            return bundle;
        }
    }

    public static Bitmap zzs(View view) {
        if (view == null) {
            return null;
        }
        Bitmap zzu = zzu(view);
        return zzu == null ? zzt(view) : zzu;
    }

    private static Bitmap zzt(@NonNull View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0 && height != 0) {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(createBitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
                return createBitmap;
            }
            zzahw.zzcz("Width or height of view is zero");
            return null;
        } catch (RuntimeException e) {
            zzahw.zzb("Fail to capture the webview", e);
            return null;
        }
    }

    private static Bitmap zzu(@NonNull View view) {
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            r0 = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
            return r0;
        } catch (RuntimeException e) {
            zzahw.zzb("Fail to capture the web view", e);
            return r0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzv(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 == 0) goto L12
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L12
            android.app.Activity r2 = (android.app.Activity) r2
            goto L13
        L12:
            r2 = r0
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaij.zzv(android.view.View):boolean");
    }

    public static int zzw(@Nullable View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public final JSONObject zza(@Nullable Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzd(bundle);
            } catch (JSONException e) {
                zzahw.zzb("Error converting Bundle to JSON", e);
            }
        }
        return null;
    }

    public final void zza(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(zzl(context, str));
    }

    public final void zza(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        if (z) {
            com.google.android.gms.ads.internal.zzbt.zzel();
            bundle.putString("device", zzrd());
            bundle.putString("eids", TextUtils.join(",", zzoi.zzjf()));
        }
        zzlc.zzij();
        zzako.zza(context, str, str2, bundle, z, new zzaim(this, context, str));
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", zzl(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final void zza(Context context, List<String> list) {
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (TextUtils.isEmpty(zzfxd.zzfk(activity))) {
                return;
            }
            if (list == null) {
                zzahw.v("Cannot ping urls: empty list.");
            } else {
                if (!zzpf.zzh(context)) {
                    zzahw.v("Cannot ping url because custom tabs is not supported");
                    return;
                }
                zzpf zzpfVar = new zzpf();
                zzpfVar.zza(new zzaik(this, list, zzpfVar, context));
                zzpfVar.zzd(activity);
            }
        }
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zza(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzaq(context));
    }

    public final boolean zza(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!com.google.android.gms.ads.internal.zzbt.zzel().zzdfo) {
            if (keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode()) {
                if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbqn)).booleanValue() || !zzv(view)) {
                    z = false;
                    if (view.getVisibility() == 0 && view.isShown()) {
                        if ((powerManager != null || powerManager.isScreenOn()) && z) {
                            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbql)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                                return true;
                            }
                        }
                    }
                    return false;
                }
            }
        }
        z = true;
        if (view.getVisibility() == 0) {
            if (powerManager != null || powerManager.isScreenOn()) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbql)).booleanValue()) {
                }
                return true;
            }
        }
        return false;
    }

    public final boolean zzah(Context context) {
        if (this.zzdfp) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzaio(this, null), intentFilter);
        this.zzdfp = true;
        return true;
    }

    public final boolean zzai(Context context) {
        if (this.zzdfq) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzain(this, null), intentFilter);
        this.zzdfq = true;
        return true;
    }

    public final void zzb(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqq)).booleanValue()) {
            zza(context, str, str2, bundle, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (((java.lang.String) com.google.android.gms.internal.zzlc.zzio().zzd(com.google.android.gms.internal.zzoi.zzbol)).equals(r3.zzdfr.pattern()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzcl(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            monitor-enter(r3)     // Catch: java.util.regex.PatternSyntaxException -> L46
            java.util.regex.Pattern r0 = r3.zzdfr     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L25
            com.google.android.gms.internal.zzny<java.lang.String> r0 = com.google.android.gms.internal.zzoi.zzbol     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.internal.zzog r2 = com.google.android.gms.internal.zzlc.zzio()     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r2.zzd(r0)     // Catch: java.lang.Throwable -> L43
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L43
            java.util.regex.Pattern r2 = r3.zzdfr     // Catch: java.lang.Throwable -> L43
            java.lang.String r2 = r2.pattern()     // Catch: java.lang.Throwable -> L43
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L43
            if (r0 != 0) goto L37
        L25:
            com.google.android.gms.internal.zzny<java.lang.String> r0 = com.google.android.gms.internal.zzoi.zzbol     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.internal.zzog r2 = com.google.android.gms.internal.zzlc.zzio()     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r2.zzd(r0)     // Catch: java.lang.Throwable -> L43
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L43
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: java.lang.Throwable -> L43
            r3.zzdfr = r0     // Catch: java.lang.Throwable -> L43
        L37:
            java.util.regex.Pattern r0 = r3.zzdfr     // Catch: java.lang.Throwable -> L43
            java.util.regex.Matcher r4 = r0.matcher(r4)     // Catch: java.lang.Throwable -> L43
            boolean r4 = r4.matches()     // Catch: java.lang.Throwable -> L43
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L43
            return r4
        L43:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L43
            throw r4     // Catch: java.util.regex.PatternSyntaxException -> L46
        L46:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaij.zzcl(java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (((java.lang.String) com.google.android.gms.internal.zzlc.zzio().zzd(com.google.android.gms.internal.zzoi.zzbom)).equals(r3.zzdfs.pattern()) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzcm(java.lang.String r4) {
        /*
            r3 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            monitor-enter(r3)     // Catch: java.util.regex.PatternSyntaxException -> L46
            java.util.regex.Pattern r0 = r3.zzdfs     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L25
            com.google.android.gms.internal.zzny<java.lang.String> r0 = com.google.android.gms.internal.zzoi.zzbom     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.internal.zzog r2 = com.google.android.gms.internal.zzlc.zzio()     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r2.zzd(r0)     // Catch: java.lang.Throwable -> L43
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L43
            java.util.regex.Pattern r2 = r3.zzdfs     // Catch: java.lang.Throwable -> L43
            java.lang.String r2 = r2.pattern()     // Catch: java.lang.Throwable -> L43
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L43
            if (r0 != 0) goto L37
        L25:
            com.google.android.gms.internal.zzny<java.lang.String> r0 = com.google.android.gms.internal.zzoi.zzbom     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.internal.zzog r2 = com.google.android.gms.internal.zzlc.zzio()     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r2.zzd(r0)     // Catch: java.lang.Throwable -> L43
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L43
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: java.lang.Throwable -> L43
            r3.zzdfs = r0     // Catch: java.lang.Throwable -> L43
        L37:
            java.util.regex.Pattern r0 = r3.zzdfs     // Catch: java.lang.Throwable -> L43
            java.util.regex.Matcher r4 = r0.matcher(r4)     // Catch: java.lang.Throwable -> L43
            boolean r4 = r4.matches()     // Catch: java.lang.Throwable -> L43
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L43
            return r4
        L43:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L43
            throw r4     // Catch: java.util.regex.PatternSyntaxException -> L46
        L46:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaij.zzcm(java.lang.String):boolean");
    }

    public final int[] zzg(Activity activity) {
        int[] zzf = zzf(activity);
        zzlc.zzij();
        zzlc.zzij();
        return new int[]{zzako.zzb(activity, zzf[0]), zzako.zzb(activity, zzf[1])};
    }

    public final int[] zzh(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] zzre = (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? zzre() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        zzlc.zzij();
        zzlc.zzij();
        return new int[]{zzako.zzb(activity, zzre[0]), zzako.zzb(activity, zzre[1])};
    }

    public final String zzl(Context context, String str) {
        synchronized (this.mLock) {
            if (this.zzddt != null) {
                return this.zzddt;
            }
            if (str == null) {
                return zzrb();
            }
            try {
                this.zzddt = com.google.android.gms.ads.internal.zzbt.zzen().getDefaultUserAgent(context);
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.zzddt)) {
                zzlc.zzij();
                if (zzako.zzsa()) {
                    this.zzddt = zzaj(context);
                } else {
                    this.zzddt = null;
                    zzdfn.post(new zzail(this, context));
                    while (this.zzddt == null) {
                        try {
                            this.mLock.wait();
                        } catch (InterruptedException unused2) {
                            this.zzddt = zzrb();
                            String valueOf = String.valueOf(this.zzddt);
                            zzahw.zzcz(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                }
            }
            String valueOf2 = String.valueOf(this.zzddt);
            StringBuilder sb = new StringBuilder(10 + String.valueOf(valueOf2).length() + String.valueOf(str).length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.zzddt = sb.toString();
            try {
                if (zzbih.zzdd(context).zzaoe()) {
                    this.zzddt = String.valueOf(this.zzddt).concat(";aia");
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AdUtil.getUserAgent");
            }
            this.zzddt = String.valueOf(this.zzddt).concat(")");
            return this.zzddt;
        }
    }

    public final JSONObject zzq(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zza(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }
}
