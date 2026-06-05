package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;

/* loaded from: classes.dex */
public final class zzdxo implements zzdte {
    private static final byte[] zzmfg = new byte[0];
    private final String zzmkp;
    private final byte[] zzmkq;
    private final zzdxv zzmkr;
    private final zzdxm zzmks;
    private final zzdxq zzmkt;

    public zzdxo(ECPublicKey eCPublicKey, byte[] bArr, String str, zzdxv zzdxvVar, zzdxm zzdxmVar) throws GeneralSecurityException {
        zzdxs.zza(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.zzmkt = new zzdxq(eCPublicKey);
        this.zzmkq = bArr;
        this.zzmkp = str;
        this.zzmkr = zzdxvVar;
        this.zzmks = zzdxmVar;
    }

    @Override // com.google.android.gms.internal.zzdte
    public final byte[] zzd(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzdxr zza = this.zzmkt.zza(this.zzmkp, this.zzmkq, bArr2, this.zzmks.zzbok(), this.zzmkr);
        byte[] zzd = this.zzmks.zzah(zza.zzbsr()).zzd(bArr, zzmfg);
        byte[] zzbsq = zza.zzbsq();
        return ByteBuffer.allocate(zzbsq.length + zzd.length).put(zzbsq).put(zzd).array();
    }
}
