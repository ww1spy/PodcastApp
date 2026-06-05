package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdtr implements zzdtf<zzdyi> {
    private static void zza(zzduu zzduuVar) throws GeneralSecurityException {
        if (zzduuVar.zzboz() < 12 || zzduuVar.zzboz() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzdxf zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzduq zzl = zzduq.zzl(zzfgsVar);
            if (!(zzl instanceof zzduq)) {
                throw new GeneralSecurityException("expected AesCtrKey proto");
            }
            zzduq zzduqVar = zzl;
            zzdyp.zzw(zzduqVar.getVersion(), 0);
            zzdyp.zzgz(zzduqVar.zzbot().size());
            zza(zzduqVar.zzbos());
            return new zzdxf(zzduqVar.zzbot().toByteArray(), zzduqVar.zzbos().zzboz());
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesCtrKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdyi zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzduq)) {
            throw new GeneralSecurityException("expected AesCtrKey proto");
        }
        zzduq zzduqVar = (zzduq) zzfjcVar;
        zzdyp.zzw(zzduqVar.getVersion(), 0);
        zzdyp.zzgz(zzduqVar.zzbot().size());
        zza(zzduqVar.zzbos());
        return new zzdxf(zzduqVar.zzbot().toByteArray(), zzduqVar.zzbos().zzboz());
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzdus.zzn(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesCtrKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdus)) {
            throw new GeneralSecurityException("expected AesCtrKeyFormat proto");
        }
        zzdus zzdusVar = (zzdus) zzfjcVar;
        zzdyp.zzgz(zzdusVar.getKeySize());
        zza(zzdusVar.zzbos());
        return zzduq.zzbou().zzc(zzdusVar.zzbos()).zzm(zzfgs.zzaz(zzdyl.zzgy(zzdusVar.getKeySize()))).zzgd(0).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.AesCtrKey").zzai(((zzduq) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.SYMMETRIC).zzczx();
    }
}
