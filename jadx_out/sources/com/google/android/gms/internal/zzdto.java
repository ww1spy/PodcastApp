package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdto implements zzdsz<zzdsy> {
    @Override // com.google.android.gms.internal.zzdsz
    public final zzdtf<zzdsy> zzd(String str, String str2, int i) throws GeneralSecurityException {
        zzdtf<zzdsy> zzdtqVar;
        String lowerCase = str2.toLowerCase();
        char c = 65535;
        if ((lowerCase.hashCode() == 2989895 && lowerCase.equals("aead")) ? false : -1) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        switch (str.hashCode()) {
            case 360753376:
                if (str.equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    c = 3;
                    break;
                }
                break;
            case 1215885937:
                if (str.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                    c = 0;
                    break;
                }
                break;
            case 1469984853:
                if (str.equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    c = 4;
                    break;
                }
                break;
            case 1797113348:
                if (str.equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    c = 1;
                    break;
                }
                break;
            case 1855890991:
                if (str.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    c = 2;
                    break;
                }
                break;
            case 2079211877:
                if (str.equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                zzdtqVar = new zzdtq();
                break;
            case 1:
                zzdtqVar = new zzdts();
                break;
            case 2:
                zzdtqVar = new zzdtt();
                break;
            case 3:
                zzdtqVar = new zzdtu();
                break;
            case 4:
                zzdtqVar = new zzdtv();
                break;
            case 5:
                zzdtqVar = new zzdtx();
                break;
            default:
                throw new GeneralSecurityException(String.format("No support for primitive 'Aead' with key type '%s'.", str));
        }
        if (zzdtqVar.getVersion() < i) {
            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
        }
        return zzdtqVar;
    }
}
