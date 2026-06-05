package com.google.android.gms.internal;

/* loaded from: classes.dex */
final /* synthetic */ class zzduj {
    static final /* synthetic */ int[] zzmfk = new int[zzdvy.values().length];

    static {
        try {
            zzmfk[zzdvy.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzmfk[zzdvy.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzmfk[zzdvy.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
