package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdtu implements zzdtf<zzdsy> {
    private static zzdvg zzboj() throws GeneralSecurityException {
        return zzdvg.zzbpl().zzgg(0).zzv(zzfgs.zzaz(zzdyl.zzgy(32))).zzczx();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzdsy zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzdvg zzu = zzdvg.zzu(zzfgsVar);
            if (!(zzu instanceof zzdvg)) {
                throw new GeneralSecurityException("expected ChaCha20Poly1305Key proto");
            }
            zzdvg zzdvgVar = zzu;
            zzdyp.zzw(zzdvgVar.getVersion(), 0);
            if (zzdvgVar.zzbot().size() != 32) {
                throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
            }
            return new zzdxl(zzdvgVar.zzbot().toByteArray());
        } catch (zzfie e) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305 key", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdvg)) {
            throw new GeneralSecurityException("expected ChaCha20Poly1305Key proto");
        }
        zzdvg zzdvgVar = (zzdvg) zzfjcVar;
        zzdyp.zzw(zzdvgVar.getVersion(), 0);
        if (zzdvgVar.zzbot().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
        return new zzdxl(zzdvgVar.zzbot().toByteArray());
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzboj();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        return zzboj();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key").zzai(zzboj().toByteString()).zzb(zzdwg.zzb.SYMMETRIC).zzczx();
    }
}
