package com.google.android.gms.internal;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;

/* loaded from: classes.dex */
public final class zzdxq {
    private ECPublicKey zzmku;

    public zzdxq(ECPublicKey eCPublicKey) {
        this.zzmku = eCPublicKey;
    }

    public final zzdxr zza(String str, byte[] bArr, byte[] bArr2, int i, zzdxv zzdxvVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair zza = zzdxs.zza(this.zzmku.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) zza.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) zza.getPrivate();
        ECPublicKey eCPublicKey2 = this.zzmku;
        ECParameterSpec params = eCPublicKey2.getParams();
        ECParameterSpec params2 = eCPrivateKey.getParams();
        if (!params.getCurve().equals(params2.getCurve()) || !params.getGenerator().equals(params2.getGenerator()) || !params.getOrder().equals(params2.getOrder()) || params.getCofactor() != params2.getCofactor()) {
            throw new GeneralSecurityException("invalid public key spec");
        }
        byte[] zza2 = zzdxs.zza(eCPrivateKey, eCPublicKey2.getW());
        EllipticCurve curve = eCPublicKey.getParams().getCurve();
        ECPoint w = eCPublicKey.getW();
        zzdxs.zza(w, curve);
        int zzb = zzdxs.zzb(curve);
        switch (zzdxvVar) {
            case UNCOMPRESSED:
                int i2 = (2 * zzb) + 1;
                byte[] bArr4 = new byte[i2];
                byte[] byteArray = w.getAffineX().toByteArray();
                byte[] byteArray2 = w.getAffineY().toByteArray();
                System.arraycopy(byteArray2, 0, bArr4, i2 - byteArray2.length, byteArray2.length);
                System.arraycopy(byteArray, 0, bArr4, (zzb + 1) - byteArray.length, byteArray.length);
                bArr4[0] = 4;
                bArr3 = bArr4;
                break;
            case COMPRESSED:
                int i3 = zzb + 1;
                bArr3 = new byte[i3];
                byte[] byteArray3 = w.getAffineX().toByteArray();
                System.arraycopy(byteArray3, 0, bArr3, i3 - byteArray3.length, byteArray3.length);
                bArr3[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                break;
            default:
                String valueOf = String.valueOf(zzdxvVar);
                StringBuilder sb = new StringBuilder(15 + String.valueOf(valueOf).length());
                sb.append("invalid format:");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
        }
        return new zzdxr(bArr3, zzdyg.zza(str, zzdxi.zzc(bArr3, zza2), bArr, bArr2, i));
    }
}
