package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdxd;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzdul {
    public static final zzdxd zzmfe = zzdxd.zzbsn().zzox("TINK_MAC_1_0_0").zzb(zzdta.zza("TinkMac", "Mac", "HmacKey", 0, true)).zzczx();
    private static zzdxd zzmff = zzdxd.zzbsn().zza((zzdxd.zza) zzmfe).zzox("TINK_MAC_1_1_0").zzczx();

    static {
        try {
            zzboi();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zzboi() throws GeneralSecurityException {
        zzdtn.zza("TinkMac", new zzduk());
    }
}
