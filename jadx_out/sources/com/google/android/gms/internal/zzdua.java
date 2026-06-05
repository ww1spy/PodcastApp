package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdxd;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzdua {
    public static final zzdxd zzmfe = zzdxd.zzbsn().zza((zzdxd.zza) zzdtp.zzmfe).zzb(zzdta.zza("TinkHybridDecrypt", "HybridDecrypt", "EciesAeadHkdfPrivateKey", 0, true)).zzb(zzdta.zza("TinkHybridEncrypt", "HybridEncrypt", "EciesAeadHkdfPublicKey", 0, true)).zzox("TINK_HYBRID_1_0_0").zzczx();
    private static zzdxd zzmff = zzdxd.zzbsn().zza((zzdxd.zza) zzmfe).zzox("TINK_HYBRID_1_1_0").zzczx();

    static {
        try {
            zzdtn.zza("TinkHybridEncrypt", new zzduc());
            zzdtn.zza("TinkHybridDecrypt", new zzdub());
            zzdtp.zzboi();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
