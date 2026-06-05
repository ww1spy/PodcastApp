package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbf;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.common.util.zzz;
import com.google.android.gms.internal.zzbih;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@Hide
/* loaded from: classes.dex */
public class zzs {

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12211000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    @Hide
    private static boolean zzfrr = false;

    @Hide
    private static boolean zzfrs = false;
    private static boolean zzfrt = false;
    private static boolean zzfru = false;
    static final AtomicBoolean zzfrv = new AtomicBoolean();
    private static final AtomicBoolean zzfrw = new AtomicBoolean();

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return zzf.zzahf().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.getStatusString(i);
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return zzc(context, -1);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        if (i == 9) {
            return true;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    private static int zza(Context context, boolean z, int i, int i2) {
        String str;
        String str2;
        zzbq.checkArgument(i2 == -1 || i2 >= 0);
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused) {
                str = "GooglePlayServicesUtil";
                str2 = "Google Play Store is missing.";
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            zzt.zzcj(context);
            if (!zzt.zza(packageInfo2, true)) {
                str = "GooglePlayServicesUtil";
                str2 = "Google Play services signature invalid.";
            } else {
                if (!z || (zzt.zza(packageInfo, true) && packageInfo.signatures[0].equals(packageInfo2.signatures[0]))) {
                    int i3 = i / 1000;
                    int i4 = packageInfo2.versionCode / 1000;
                    if (i4 >= i3 || (i2 != -1 && i4 >= i2 / 1000)) {
                        ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            try {
                                applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                            } catch (PackageManager.NameNotFoundException e) {
                                Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e);
                                return 1;
                            }
                        }
                        return !applicationInfo.enabled ? 3 : 0;
                    }
                    int i5 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                    int i6 = packageInfo2.versionCode;
                    StringBuilder sb = new StringBuilder(77);
                    sb.append("Google Play services out of date.  Requires ");
                    sb.append(i5);
                    sb.append(" but found ");
                    sb.append(i6);
                    Log.w("GooglePlayServicesUtil", sb.toString());
                    return 2;
                }
                str = "GooglePlayServicesUtil";
                str2 = "Google Play Store signature invalid.";
            }
            Log.w(str, str2);
            return 9;
        } catch (PackageManager.NameNotFoundException unused2) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Hide
    @TargetApi(19)
    @Deprecated
    public static boolean zzb(Context context, int i, String str) {
        return zzz.zzb(context, i, str);
    }

    @Hide
    @Deprecated
    public static void zzbo(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        zzf.zzahf();
        int zzc = zzf.zzc(context, -1);
        if (zzc != 0) {
            zzf.zzahf();
            Intent zza = zzf.zza(context, zzc, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(zzc);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (zza != null) {
                throw new GooglePlayServicesRepairableException(zzc, "Google Play Services not available", zza);
            }
            throw new GooglePlayServicesNotAvailableException(zzc);
        }
    }

    @Deprecated
    public static int zzc(Context context, int i) {
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !zzfrw.get()) {
            int zzcs = zzbf.zzcs(context);
            if (zzcs == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
            if (zzcs != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                int i2 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                StringBuilder sb = new StringBuilder(320);
                sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                sb.append(i2);
                sb.append(" but found ");
                sb.append(zzcs);
                sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                throw new IllegalStateException(sb.toString());
            }
        }
        return zza(context, (com.google.android.gms.common.util.zzj.zzcv(context) || com.google.android.gms.common.util.zzj.zzcx(context)) ? false : true, GOOGLE_PLAY_SERVICES_VERSION_CODE, i);
    }

    @Hide
    @Deprecated
    public static void zzcf(Context context) {
        if (zzfrv.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(10436);
            }
        } catch (SecurityException unused) {
        }
    }

    @Hide
    @Deprecated
    public static int zzcg(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Hide
    public static boolean zzci(Context context) {
        try {
            if (!zzfru) {
                try {
                    PackageInfo packageInfo = zzbih.zzdd(context).getPackageInfo("com.google.android.gms", 64);
                    zzt.zzcj(context);
                    if (packageInfo == null || zzt.zza(packageInfo, false) || !zzt.zza(packageInfo, true)) {
                        zzfrt = false;
                    } else {
                        zzfrt = true;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
                }
            }
            return zzfrt || !"user".equals(Build.TYPE);
        } finally {
            zzfru = true;
        }
    }

    @Hide
    @Deprecated
    public static boolean zzd(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zzr(context, "com.google.android.gms");
        }
        return false;
    }

    @Hide
    @Deprecated
    public static boolean zze(Context context, int i) {
        return zzz.zze(context, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public static boolean zzr(Context context, String str) {
        ApplicationInfo applicationInfo;
        Bundle applicationRestrictions;
        boolean equals = str.equals("com.google.android.gms");
        if (com.google.android.gms.common.util.zzs.zzanx()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        if (applicationInfo.enabled) {
            if (!(com.google.android.gms.common.util.zzs.zzanu() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile")))) {
                return true;
            }
        }
        return false;
    }
}
