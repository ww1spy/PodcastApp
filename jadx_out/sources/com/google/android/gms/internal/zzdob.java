package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzdob<T> {

    @SuppressLint({"StaticFieldLeak"})
    private static Context zzaiq = null;
    private static boolean zzciw = false;
    private static final Object zzkgs = new Object();
    private static Boolean zzkgt;

    public static void maybeInit(Context context) {
        if (zzaiq == null) {
            zzch(context);
        }
    }

    public static void zzch(Context context) {
        Context applicationContext;
        synchronized (zzkgs) {
            if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (zzaiq != context) {
                zzkgt = null;
            }
            zzaiq = context;
        }
        zzciw = false;
    }
}
