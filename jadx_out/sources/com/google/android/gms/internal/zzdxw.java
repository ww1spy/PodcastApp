package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzdxw implements zzdsy {
    private final zzdyi zzmlg;
    private final zzdtj zzmlh;
    private final int zzmli;

    public zzdxw(zzdyi zzdyiVar, zzdtj zzdtjVar, int i) {
        this.zzmlg = zzdyiVar;
        this.zzmlh = zzdtjVar;
        this.zzmli = i;
    }

    @Override // com.google.android.gms.internal.zzdsy
    public final byte[] zzd(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] zzaj = this.zzmlg.zzaj(bArr);
        return zzdxi.zzc(zzaj, this.zzmlh.zzaf(zzdxi.zzc(bArr2, zzaj, Arrays.copyOf(ByteBuffer.allocate(8).putLong(8 * bArr2.length).array(), 8))));
    }
}
