package com.google.android.gms.internal;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.math.BigInteger;
import java.util.Locale;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahr {
    private static final Object sLock = new Object();
    private static String zzdep;

    public static String zzc(Context context, String str, String str2) {
        String str3;
        String str4;
        synchronized (sLock) {
            if (zzdep == null && !TextUtils.isEmpty(str)) {
                try {
                    ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
                    Class<?> cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
                    BigInteger bigInteger = new BigInteger(new byte[1]);
                    String[] split = str.split(",");
                    BigInteger bigInteger2 = bigInteger;
                    for (int i = 0; i < split.length; i++) {
                        com.google.android.gms.ads.internal.zzbt.zzel();
                        if (zzaij.zza(classLoader, cls, split[i])) {
                            bigInteger2 = bigInteger2.setBit(i);
                        }
                    }
                    str4 = String.format(Locale.US, "%X", bigInteger2);
                } catch (Throwable unused) {
                    str4 = NotificationCompat.CATEGORY_ERROR;
                }
                zzdep = str4;
            }
            str3 = zzdep;
        }
        return str3;
    }

    public static String zzqi() {
        String str;
        synchronized (sLock) {
            str = zzdep;
        }
        return str;
    }
}
