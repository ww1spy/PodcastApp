package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzdtw implements zzdsy {
    private static final byte[] zzmfg = new byte[0];
    private final zzdwl zzmfh;
    private final zzdsy zzmfi;

    public zzdtw(zzdwl zzdwlVar, zzdsy zzdsyVar) {
        this.zzmfh = zzdwlVar;
        this.zzmfi = zzdsyVar;
    }

    @Override // com.google.android.gms.internal.zzdsy
    public final byte[] zzd(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] byteArray = zzdtn.zzb(this.zzmfh).toByteArray();
        byte[] zzd = this.zzmfi.zzd(byteArray, zzmfg);
        byte[] zzd2 = ((zzdsy) zzdtn.zzf(this.zzmfh.zzbqu(), byteArray)).zzd(bArr, bArr2);
        return ByteBuffer.allocate(4 + zzd.length + zzd2.length).putInt(zzd.length).put(zzd).put(zzd2).array();
    }
}
