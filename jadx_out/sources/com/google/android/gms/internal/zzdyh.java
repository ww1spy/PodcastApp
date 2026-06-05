package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzdyh {
    private final byte[] data;

    private zzdyh(byte[] bArr, int i, int i2) {
        this.data = new byte[i2];
        System.arraycopy(bArr, 0, this.data, 0, i2);
    }

    public static zzdyh zzal(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new zzdyh(bArr, 0, bArr.length);
    }

    public final byte[] getBytes() {
        byte[] bArr = new byte[this.data.length];
        System.arraycopy(this.data, 0, bArr, 0, this.data.length);
        return bArr;
    }
}
