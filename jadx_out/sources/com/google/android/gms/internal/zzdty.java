package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;

/* loaded from: classes.dex */
final class zzdty implements zzdtf<zzdtd> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzdtd zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzdvq zzx = zzdvq.zzx(zzfgsVar);
            if (!(zzx instanceof zzdvq)) {
                throw new GeneralSecurityException("expected EciesAeadHkdfPrivateKey proto");
            }
            zzdvq zzdvqVar = zzx;
            zzdyp.zzw(zzdvqVar.getVersion(), 0);
            zzduf.zza(zzdvqVar.zzbpx().zzbpq());
            zzdvo zzbpq = zzdvqVar.zzbpx().zzbpq();
            zzdvu zzbps = zzbpq.zzbps();
            zzdxu zza = zzduf.zza(zzbps.zzbqf());
            byte[] byteArray = zzdvqVar.zzbot().toByteArray();
            return new zzdxn((ECPrivateKey) zzdxx.zzmlq.zzoy("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, byteArray), zzdxs.zza(zza))), zzbps.zzbqh().toByteArray(), zzduf.zza(zzbps.zzbqg()), zzduf.zza(zzbpq.zzbpu()), new zzduh(zzbpq.zzbpt().zzbpn()));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized EciesAeadHkdfPrivateKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdtd zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdvq)) {
            throw new GeneralSecurityException("expected EciesAeadHkdfPrivateKey proto");
        }
        zzdvq zzdvqVar = (zzdvq) zzfjcVar;
        zzdyp.zzw(zzdvqVar.getVersion(), 0);
        zzduf.zza(zzdvqVar.zzbpx().zzbpq());
        zzdvo zzbpq = zzdvqVar.zzbpx().zzbpq();
        zzdvu zzbps = zzbpq.zzbps();
        zzdxu zza = zzduf.zza(zzbps.zzbqf());
        byte[] byteArray = zzdvqVar.zzbot().toByteArray();
        return new zzdxn((ECPrivateKey) zzdxx.zzmlq.zzoy("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, byteArray), zzdxs.zza(zza))), zzbps.zzbqh().toByteArray(), zzduf.zza(zzbps.zzbqg()), zzduf.zza(zzbpq.zzbpu()), new zzduh(zzbpq.zzbpt().zzbpn()));
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzdvm.zzw(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("invalid EciesAeadHkdf key format", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdvm)) {
            throw new GeneralSecurityException("expected EciesAeadHkdfKeyFormat proto");
        }
        zzdvm zzdvmVar = (zzdvm) zzfjcVar;
        zzduf.zza(zzdvmVar.zzbpq());
        KeyPair zza = zzdxs.zza(zzdxs.zza(zzduf.zza(zzdvmVar.zzbpq().zzbps().zzbqf())));
        ECPublicKey eCPublicKey = (ECPublicKey) zza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) zza.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return zzdvq.zzbpy().zzgi(0).zzb(zzdvs.zzbqc().zzgj(0).zzc(zzdvmVar.zzbpq()).zzac(zzfgs.zzaz(w.getAffineX().toByteArray())).zzad(zzfgs.zzaz(w.getAffineY().toByteArray())).zzczx()).zzy(zzfgs.zzaz(eCPrivateKey.getS().toByteArray())).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").zzai(((zzdvq) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.ASYMMETRIC_PRIVATE).zzczx();
    }
}
