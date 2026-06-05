package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.internal.Hide;

/* loaded from: classes.dex */
public final class zzatk {
    static Object sLock = new Object();
    private static Boolean zzdud;
    static zzcyz zzeei;

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static void onReceive(Context context, Intent intent) {
        zzatd zzxy = zzark.zzbl(context).zzxy();
        if (intent == null) {
            zzxy.zzed("AnalyticsReceiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzxy.zza("Local AnalyticsReceiver got", action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            boolean zzbn = zzatl.zzbn(context);
            Intent intent2 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent2.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            intent2.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            synchronized (sLock) {
                context.startService(intent2);
                if (zzbn) {
                    try {
                        if (zzeei == null) {
                            zzcyz zzcyzVar = new zzcyz(context, 1, "Analytics WakeLock");
                            zzeei = zzcyzVar;
                            zzcyzVar.setReferenceCounted(false);
                        }
                        zzeei.acquire(1000L);
                    } catch (SecurityException unused) {
                        zzxy.zzed("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                    }
                }
            }
        }
    }

    @Hide
    public static boolean zzbj(Context context) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(context);
        if (zzdud != null) {
            return zzdud.booleanValue();
        }
        boolean zzb = zzatt.zzb(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
        zzdud = Boolean.valueOf(zzb);
        return zzb;
    }
}
