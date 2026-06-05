package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
final class zzdui implements zzdtf<zzdtj> {
    private static void zza(zzdwe zzdweVar) throws GeneralSecurityException {
        if (zzdweVar.zzbqr() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        switch (zzdweVar.zzbqq()) {
            case SHA1:
                if (zzdweVar.zzbqr() > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            case SHA256:
                if (zzdweVar.zzbqr() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            case SHA512:
                if (zzdweVar.zzbqr() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            default:
                throw new GeneralSecurityException("unknown hash type");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzdtj zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        zzdyj zzdyjVar;
        try {
            zzdwa zzae = zzdwa.zzae(zzfgsVar);
            if (!(zzae instanceof zzdwa)) {
                throw new GeneralSecurityException("expected HmacKey proto");
            }
            zzdwa zzdwaVar = zzae;
            zzdyp.zzw(zzdwaVar.getVersion(), 0);
            if (zzdwaVar.zzbot().size() < 16) {
                throw new GeneralSecurityException("key too short");
            }
            zza(zzdwaVar.zzbqk());
            zzdvy zzbqq = zzdwaVar.zzbqk().zzbqq();
            SecretKeySpec secretKeySpec = new SecretKeySpec(zzdwaVar.zzbot().toByteArray(), "HMAC");
            int zzbqr = zzdwaVar.zzbqk().zzbqr();
            switch (zzbqq) {
                case SHA1:
                    zzdyjVar = new zzdyj("HMACSHA1", secretKeySpec, zzbqr);
                    break;
                case SHA256:
                    zzdyjVar = new zzdyj("HMACSHA256", secretKeySpec, zzbqr);
                    break;
                case SHA512:
                    zzdyjVar = new zzdyj("HMACSHA512", secretKeySpec, zzbqr);
                    break;
                default:
                    throw new GeneralSecurityException("unknown hash");
            }
            return zzdyjVar;
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized HmacKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdtj zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdwa)) {
            throw new GeneralSecurityException("expected HmacKey proto");
        }
        zzdwa zzdwaVar = (zzdwa) zzfjcVar;
        zzdyp.zzw(zzdwaVar.getVersion(), 0);
        if (zzdwaVar.zzbot().size() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zza(zzdwaVar.zzbqk());
        zzdvy zzbqq = zzdwaVar.zzbqk().zzbqq();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzdwaVar.zzbot().toByteArray(), "HMAC");
        int zzbqr = zzdwaVar.zzbqk().zzbqr();
        switch (zzbqq) {
            case SHA1:
                return new zzdyj("HMACSHA1", secretKeySpec, zzbqr);
            case SHA256:
                return new zzdyj("HMACSHA256", secretKeySpec, zzbqr);
            case SHA512:
                return new zzdyj("HMACSHA512", secretKeySpec, zzbqr);
            default:
                throw new GeneralSecurityException("unknown hash");
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzdwc.zzag(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized HmacKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzdwc)) {
            throw new GeneralSecurityException("expected HmacKeyFormat proto");
        }
        zzdwc zzdwcVar = (zzdwc) zzfjcVar;
        if (zzdwcVar.getKeySize() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        zza(zzdwcVar.zzbqk());
        return zzdwa.zzbql().zzgm(0).zzc(zzdwcVar.zzbqk()).zzaf(zzfgs.zzaz(zzdyl.zzgy(zzdwcVar.getKeySize()))).zzczx();
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.HmacKey").zzai(((zzdwa) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.SYMMETRIC).zzczx();
    }
}
