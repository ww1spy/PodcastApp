package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdtz implements zzdtf<zzdte> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzdte zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzdvs zzab = zzdvs.zzab(zzfgsVar);
            if (!(zzab instanceof zzdvs)) {
                throw new GeneralSecurityException("expected EciesAeadHkdfPublicKey proto");
            }
            zzdvs zzdvsVar = zzab;
            zzdyp.zzw(zzdvsVar.getVersion(), 0);
            zzduf.zza(zzdvsVar.zzbpq());
            zzdvo zzbpq = zzdvsVar.zzbpq();
            zzdvu zzbps = zzbpq.zzbps();
            return new zzdxo(zzdxs.zza(zzduf.zza(zzbps.zzbqf()), zzdvsVar.zzbqa().toByteArray(), zzdvsVar.zzbqb().toByteArray()), zzbps.zzbqh().toByteArray(), zzduf.zza(zzbps.zzbqg()), zzduf.zza(zzbpq.zzbpu()), new zzduh(zzbpq.zzbpt().zzbpn()));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized EciesAeadHkdfPublicKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdte zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdvs)) {
            throw new GeneralSecurityException("expected EciesAeadHkdfPublicKey proto");
        }
        zzdvs zzdvsVar = (zzdvs) zzfjcVar;
        zzdyp.zzw(zzdvsVar.getVersion(), 0);
        zzduf.zza(zzdvsVar.zzbpq());
        zzdvo zzbpq = zzdvsVar.zzbpq();
        zzdvu zzbps = zzbpq.zzbps();
        return new zzdxo(zzdxs.zza(zzduf.zza(zzbps.zzbqf()), zzdvsVar.zzbqa().toByteArray(), zzdvsVar.zzbqb().toByteArray()), zzbps.zzbqh().toByteArray(), zzduf.zza(zzbps.zzbqg()), zzduf.zza(zzbpq.zzbpu()), new zzduh(zzbpq.zzbpt().zzbpn()));
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }
}
