package com.google.android.gms.internal;

import com.google.android.gms.internal.zzduq;
import com.google.android.gms.internal.zzdvc;
import com.google.android.gms.internal.zzdwa;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzduh implements zzdxm {
    private final String zzmfn;
    private final int zzmfo;
    private zzdvc zzmfp;
    private zzdum zzmfq;
    private int zzmfr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzduh(zzdwl zzdwlVar) throws GeneralSecurityException {
        this.zzmfn = zzdwlVar.zzbqu();
        if (this.zzmfn.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzdve zzt = zzdve.zzt(zzdwlVar.zzbqv());
                this.zzmfp = (zzdvc) zzdtn.zzb(zzdwlVar);
                this.zzmfo = zzt.getKeySize();
                return;
            } catch (zzfie e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        }
        if (!this.zzmfn.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            String valueOf = String.valueOf(this.zzmfn);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        }
        try {
            zzduo zzj = zzduo.zzj(zzdwlVar.zzbqv());
            this.zzmfq = (zzdum) zzdtn.zzb(zzdwlVar);
            this.zzmfr = zzj.zzbop().getKeySize();
            this.zzmfo = this.zzmfr + zzj.zzboq().getKeySize();
        } catch (zzfie e2) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e2);
        }
    }

    @Override // com.google.android.gms.internal.zzdxm
    public final zzdsy zzah(byte[] bArr) throws GeneralSecurityException {
        zzdum zzczx;
        if (bArr.length != this.zzmfo) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.zzmfn.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            zzczx = zzdvc.zzbpi().zza((zzdvc.zza) this.zzmfp).zzs(zzfgs.zzf(bArr, 0, this.zzmfo)).zzczx();
        } else {
            if (!this.zzmfn.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                throw new GeneralSecurityException("unknown DEM key type");
            }
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.zzmfr);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.zzmfr, this.zzmfo);
            zzduq zzczx2 = zzduq.zzbou().zza((zzduq.zza) this.zzmfq.zzbol()).zzm(zzfgs.zzaz(copyOfRange)).zzczx();
            zzczx = zzdum.zzbon().zzgc(this.zzmfq.getVersion()).zzb(zzczx2).zzb(zzdwa.zzbql().zza((zzdwa.zza) this.zzmfq.zzbom()).zzaf(zzfgs.zzaz(copyOfRange2)).zzczx()).zzczx();
        }
        return (zzdsy) zzdtn.zzb(this.zzmfn, zzczx);
    }

    @Override // com.google.android.gms.internal.zzdxm
    public final int zzbok() {
        return this.zzmfo;
    }
}
