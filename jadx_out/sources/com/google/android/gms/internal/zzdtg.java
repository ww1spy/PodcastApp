package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwp;
import com.google.android.gms.internal.zzdwr;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzdtg {
    private zzdwp zzmet;

    private zzdtg(zzdwp zzdwpVar) {
        this.zzmet = zzdwpVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final zzdtg zza(zzdwp zzdwpVar) throws GeneralSecurityException {
        if (zzdwpVar == null || zzdwpVar.zzbrl() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzdtg(zzdwpVar);
    }

    public final String toString() {
        zzdwp zzdwpVar = this.zzmet;
        zzdwr.zza zzgs = zzdwr.zzbru().zzgs(zzdwpVar.zzbrj());
        for (zzdwp.zzb zzbVar : zzdwpVar.zzbrk()) {
            zzgs.zzb(zzdwr.zzb.zzbrw().zzov(zzbVar.zzbro().zzbqu()).zzb(zzbVar.zzbrp()).zzb(zzbVar.zzbrr()).zzgu(zzbVar.zzbrq()).zzczx());
        }
        return zzgs.zzczx().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzdwp zzboe() {
        return this.zzmet;
    }
}
