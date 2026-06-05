package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdtv implements zzdtf<zzdsy> {
    private static zzdsy zzc(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdwt)) {
            throw new GeneralSecurityException("expected KmsAeadKey proto");
        }
        zzdwt zzdwtVar = (zzdwt) zzfjcVar;
        zzdyp.zzw(zzdwtVar.getVersion(), 0);
        String zzbsc = zzdwtVar.zzbrz().zzbsc();
        return zzdti.zzol(zzbsc).zzok(zzbsc);
    }

    private static zzdsy zzd(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzc(zzdwt.zzaj(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected KmsAeadKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzd(zzfgsVar);
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        return zzc(zzfjcVar);
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzdwv.zzak(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized KmsAeadKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdwv)) {
            throw new GeneralSecurityException("expected KmsAeadKeyFormat proto");
        }
        return zzdwt.zzbsa().zzb((zzdwv) zzfjcVar).zzgv(0).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.KmsAeadKey").zzai(((zzdwt) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.REMOTE).zzczx();
    }
}
