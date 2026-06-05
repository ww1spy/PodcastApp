package com.google.android.gms.internal;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzbif {
    private static Context zzglq;
    private static Boolean zzglr;

    public static synchronized boolean zzdb(Context context) {
        boolean z;
        synchronized (zzbif.class) {
            Context applicationContext = context.getApplicationContext();
            if (zzglq != null && zzglr != null && zzglq == applicationContext) {
                return zzglr.booleanValue();
            }
            zzglr = null;
            if (!com.google.android.gms.common.util.zzs.isAtLeastO()) {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    zzglr = true;
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                zzglq = applicationContext;
                return zzglr.booleanValue();
            }
            z = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            zzglr = z;
            zzglq = applicationContext;
            return zzglr.booleanValue();
        }
    }
}
