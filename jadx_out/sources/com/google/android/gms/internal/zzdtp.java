package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdxd;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzdtp {
    public static final zzdxd zzmfe = zzdxd.zzbsn().zza((zzdxd.zza) zzdul.zzmfe).zzb(zzdta.zza("TinkAead", "Aead", "AesCtrHmacAeadKey", 0, true)).zzb(zzdta.zza("TinkAead", "Aead", "AesEaxKey", 0, true)).zzb(zzdta.zza("TinkAead", "Aead", "AesGcmKey", 0, true)).zzb(zzdta.zza("TinkAead", "Aead", "ChaCha20Poly1305Key", 0, true)).zzb(zzdta.zza("TinkAead", "Aead", "KmsAeadKey", 0, true)).zzb(zzdta.zza("TinkAead", "Aead", "KmsEnvelopeAeadKey", 0, true)).zzox("TINK_AEAD_1_0_0").zzczx();
    private static zzdxd zzmff = zzdxd.zzbsn().zza((zzdxd.zza) zzmfe).zzox("TINK_AEAD_1_1_0").zzczx();

    static {
        try {
            zzboi();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zzboi() throws GeneralSecurityException {
        zzdtn.zza("TinkAead", new zzdto());
        zzdul.zzboi();
    }
}
