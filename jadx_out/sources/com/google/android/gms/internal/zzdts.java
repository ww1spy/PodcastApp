package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdts implements zzdtf<zzdsy> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzdtf
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzdsy zza(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            zzduw zzo = zzduw.zzo(zzfgsVar);
            if (!(zzo instanceof zzduw)) {
                throw new GeneralSecurityException("expected AesEaxKey proto");
            }
            zzduw zzduwVar = zzo;
            zzdyp.zzw(zzduwVar.getVersion(), 0);
            zzdyp.zzgz(zzduwVar.zzbot().size());
            if (zzduwVar.zzbpc().zzboz() == 12 || zzduwVar.zzbpc().zzboz() == 16) {
                return new zzdxg(zzduwVar.zzbot().toByteArray(), zzduwVar.zzbpc().zzboz());
            }
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesEaxKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final /* synthetic */ zzdsy zza(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzduw)) {
            throw new GeneralSecurityException("expected AesEaxKey proto");
        }
        zzduw zzduwVar = (zzduw) zzfjcVar;
        zzdyp.zzw(zzduwVar.getVersion(), 0);
        zzdyp.zzgz(zzduwVar.zzbot().size());
        if (zzduwVar.zzbpc().zzboz() == 12 || zzduwVar.zzbpc().zzboz() == 16) {
            return new zzdxg(zzduwVar.zzbot().toByteArray(), zzduwVar.zzbpc().zzboz());
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfgs zzfgsVar) throws GeneralSecurityException {
        try {
            return zzb(zzduy.zzq(zzfgsVar));
        } catch (zzfie e) {
            throw new GeneralSecurityException("expected serialized AesEaxKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzfjc zzb(zzfjc zzfjcVar) throws GeneralSecurityException {
        if (!(zzfjcVar instanceof zzduy)) {
            throw new GeneralSecurityException("expected AesEaxKeyFormat proto");
        }
        zzduy zzduyVar = (zzduy) zzfjcVar;
        zzdyp.zzgz(zzduyVar.getKeySize());
        if (zzduyVar.zzbpc().zzboz() == 12 || zzduyVar.zzbpc().zzboz() == 16) {
            return zzduw.zzbpd().zzp(zzfgs.zzaz(zzdyl.zzgy(zzduyVar.getKeySize()))).zzb(zzduyVar.zzbpc()).zzge(0).zzczx();
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.zzdtf
    public final zzdwg zzc(zzfgs zzfgsVar) throws GeneralSecurityException {
        return zzdwg.zzbqx().zzop("type.googleapis.com/google.crypto.tink.AesEaxKey").zzai(((zzduw) zzb(zzfgsVar)).toByteString()).zzb(zzdwg.zzb.SYMMETRIC).zzczx();
    }
}
