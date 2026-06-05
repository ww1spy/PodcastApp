package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdq {
    static zzdte zzajk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzar() {
        if (zzajk != null) {
            return true;
        }
        String str = (String) zzlc.zzio().zzd(zzoi.zzbrq);
        if (str.length() == 0) {
            return false;
        }
        try {
            zzdtg zzag = zzdtk.zzag(zzbv.zza(str, true));
            for (zzdwn zzdwnVar : zzdua.zzmfe.zzbsm()) {
                if (zzdwnVar.zzbqu().isEmpty()) {
                    throw new GeneralSecurityException("Missing type_url.");
                }
                if (zzdwnVar.zzbrc().isEmpty()) {
                    throw new GeneralSecurityException("Missing primitive_name.");
                }
                if (zzdwnVar.zzbrf().isEmpty()) {
                    throw new GeneralSecurityException("Missing catalogue_name.");
                }
                zzdtn.zza(zzdwnVar.zzbqu(), zzdtn.zzom(zzdwnVar.zzbrf()).zzd(zzdwnVar.zzbqu(), zzdwnVar.zzbrc(), zzdwnVar.zzbrd()), zzdwnVar.zzbre());
            }
            zzajk = zzdud.zza(zzag);
        } catch (IllegalArgumentException | GeneralSecurityException unused) {
        }
        return zzajk != null;
    }
}
