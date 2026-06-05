package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzdxr {
    private final zzdyh zzmkv;
    private final zzdyh zzmkw;

    public zzdxr(byte[] bArr, byte[] bArr2) {
        this.zzmkv = zzdyh.zzal(bArr);
        this.zzmkw = zzdyh.zzal(bArr2);
    }

    public final byte[] zzbsq() {
        if (this.zzmkv == null) {
            return null;
        }
        return this.zzmkv.getBytes();
    }

    public final byte[] zzbsr() {
        if (this.zzmkw == null) {
            return null;
        }
        return this.zzmkw.getBytes();
    }
}
