package com.google.android.gms.internal;

/* loaded from: classes.dex */
final /* synthetic */ class zzdug {
    static final /* synthetic */ int[] zzmfk;
    static final /* synthetic */ int[] zzmfl;
    static final /* synthetic */ int[] zzmfm = new int[zzdvi.values().length];

    static {
        try {
            zzmfm[zzdvi.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzmfm[zzdvi.COMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        zzmfl = new int[zzdvw.values().length];
        try {
            zzmfl[zzdvw.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            zzmfl[zzdvw.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzmfl[zzdvw.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        zzmfk = new int[zzdvy.values().length];
        try {
            zzmfk[zzdvy.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            zzmfk[zzdvy.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            zzmfk[zzdvy.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
