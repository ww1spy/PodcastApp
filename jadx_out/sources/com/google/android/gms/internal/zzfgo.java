package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzfgo {
    private static final Class<?> zzpnt = zztu("libcore.io.Memory");
    private static final boolean zzpnu;

    static {
        zzpnu = zztu("org.robolectric.Robolectric") != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzcxm() {
        return (zzpnt == null || zzpnu) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> zzcxn() {
        return zzpnt;
    }

    private static <T> Class<T> zztu(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
