package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class zzffa {
    private final byte[] zzpjv = new byte[256];
    private int zzpjw;
    private int zzpjx;

    public zzffa(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.zzpjv[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            i2 = (i2 + this.zzpjv[i3] + bArr[i3 % bArr.length]) & 255;
            byte b = this.zzpjv[i3];
            this.zzpjv[i3] = this.zzpjv[i2];
            this.zzpjv[i2] = b;
        }
        this.zzpjw = 0;
        this.zzpjx = 0;
    }

    public final void zzay(byte[] bArr) {
        int i = this.zzpjw;
        int i2 = this.zzpjx;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            i2 = (i2 + this.zzpjv[i]) & 255;
            byte b = this.zzpjv[i];
            this.zzpjv[i] = this.zzpjv[i2];
            this.zzpjv[i2] = b;
            bArr[i3] = (byte) (bArr[i3] ^ this.zzpjv[(this.zzpjv[i] + this.zzpjv[i2]) & 255]);
        }
        this.zzpjw = i;
        this.zzpjx = i2;
    }
}
