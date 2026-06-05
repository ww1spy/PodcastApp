package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdtt implements zzdtf<zzdsy> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzdsy zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzdvc zzr = zzdvc.zzr(zzfgsVar);
            if (!(zzr instanceof zzdvc)) {
                throw new GeneralSecurityException("expected AesGcmKey proto");
            }
            zzdvc zzdvcVar = zzr;
            zzdyp.zzw(zzdvcVar.getVersion(), 0);
            zzdyp.zzgz(zzdvcVar.zzbot().size());
            return new zzdxh(zzdvcVar.zzbot().toByteArray());
        } catch (zzfie unused) {
            throw new GeneralSecurityException("expected AesGcmKey proto");
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdvc)) {
            throw new GeneralSecurityException("expected AesGcmKey proto");
        }
        zzdvc zzdvcVar = (zzdvc) zzfjcVar;
        zzdyp.zzw(zzdvcVar.getVersion(), 0);
        zzdyp.zzgz(zzdvcVar.zzbot().size());
        return new zzdxh(zzdvcVar.zzbot().toByteArray());
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzdve.zzt(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesGcmKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdve)) {
            throw new GeneralSecurityException("expected AesGcmKeyFormat proto");
        }
        zzdve zzdveVar = (zzdve) zzfjcVar;
        zzdyp.zzgz(zzdveVar.getKeySize());
        return zzdvc.zzbpi().zzs(zzfgs.zzaz(zzdyl.zzgy(zzdveVar.getKeySize()))).zzgf(0).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.AesGcmKey").zzai(((zzdvc) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.SYMMETRIC).zzczx();
    }
}
