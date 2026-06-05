package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
class zzdtq implements zzdtf<zzdsy> {
    private static final Logger logger = Logger.getLogger(zzdtq.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdtq() throws GeneralSecurityException {
        zzdtn.zza("type.googleapis.com/google.crypto.tink.AesCtrKey", new zzdtr());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzdsy zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzdum zzi = zzdum.zzi(zzfgsVar);
            if (!(zzi instanceof zzdum)) {
                throw new GeneralSecurityException("expected AesCtrHmacAeadKey proto");
            }
            zzdum zzdumVar = zzi;
            zzdyp.zzw(zzdumVar.getVersion(), 0);
            return new zzdxw((zzdyi) zzdtn.zzb("type.googleapis.com/google.crypto.tink.AesCtrKey", zzdumVar.zzbol()), (zzdtj) zzdtn.zzb("type.googleapis.com/google.crypto.tink.HmacKey", zzdumVar.zzbom()), zzdumVar.zzbom().zzbqk().zzbqr());
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesCtrHmacAeadKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdum)) {
            throw new GeneralSecurityException("expected AesCtrHmacAeadKey proto");
        }
        zzdum zzdumVar = (zzdum) zzfjcVar;
        zzdyp.zzw(zzdumVar.getVersion(), 0);
        return new zzdxw((zzdyi) zzdtn.zzb("type.googleapis.com/google.crypto.tink.AesCtrKey", zzdumVar.zzbol()), (zzdtj) zzdtn.zzb("type.googleapis.com/google.crypto.tink.HmacKey", zzdumVar.zzbom()), zzdumVar.zzbom().zzbqk().zzbqr());
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzduo.zzj(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesCtrHmacAeadKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzduo)) {
            throw new GeneralSecurityException("expected AesCtrHmacAeadKeyFormat proto");
        }
        zzduo zzduoVar = (zzduo) zzfjcVar;
        zzduq zzduqVar = (zzduq) zzdtn.zza("type.googleapis.com/google.crypto.tink.AesCtrKey", zzduoVar.zzbop());
        return zzdum.zzbon().zzb(zzduqVar).zzb((zzdwa) zzdtn.zza("type.googleapis.com/google.crypto.tink.HmacKey", zzduoVar.zzboq())).zzgc(0).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey").zzai(((zzdum) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.SYMMETRIC).zzczx();
    }
}
