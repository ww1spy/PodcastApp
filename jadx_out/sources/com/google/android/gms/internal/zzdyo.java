package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzdyo {
    public static boolean zzakt() {
        try {
            Class.forName("android.app.Application", false, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
