package com.google.android.gms.internal;

/* loaded from: classes.dex */
final /* synthetic */ class zzdxt {
    static final /* synthetic */ int[] zzmkx;
    static final /* synthetic */ int[] zzmky = new int[zzdxu.values().length];

    static {
        try {
            zzmky[zzdxu.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzmky[zzdxu.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzmky[zzdxu.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zzmkx = new int[zzdxv.values().length];
        try {
            zzmkx[zzdxv.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zzmkx[zzdxv.COMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
