package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdtx implements zzdtf<zzdsy> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzdsy zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzdwx zzal = zzdwx.zzal(zzfgsVar);
            if (!(zzal instanceof zzdwx)) {
                throw new GeneralSecurityException("expected KmsEnvelopeAeadKey proto");
            }
            zzdwx zzdwxVar = zzal;
            zzdyp.zzw(zzdwxVar.getVersion(), 0);
            String zzbsi = zzdwxVar.zzbsf().zzbsi();
            return new zzdtw(zzdwxVar.zzbsf().zzbsj(), zzdti.zzol(zzbsi).zzok(zzbsi));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized KmSEnvelopeAeadKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdwx)) {
            throw new GeneralSecurityException("expected KmsEnvelopeAeadKey proto");
        }
        zzdwx zzdwxVar = (zzdwx) zzfjcVar;
        zzdyp.zzw(zzdwxVar.getVersion(), 0);
        String zzbsi = zzdwxVar.zzbsf().zzbsi();
        return new zzdtw(zzdwxVar.zzbsf().zzbsj(), zzdti.zzol(zzbsi).zzok(zzbsi));
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzdwz.zzam(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized KmsEnvelopeAeadKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdwz)) {
            throw new GeneralSecurityException("expected KmsEnvelopeAeadKeyFormat proto");
        }
        return zzdwx.zzbsg().zzb((zzdwz) zzfjcVar).zzgw(0).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey").zzai(((zzdwx) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.REMOTE).zzczx();
    }
}
