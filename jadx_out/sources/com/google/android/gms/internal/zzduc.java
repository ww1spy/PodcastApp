package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzduc implements zzdsz<zzdte> {
    @Override // com.google.android.gms.internal.zzdsz
    public final zzdtf<zzdte> zzd(String str, String str2, int i) throws GeneralSecurityException {
        String lowerCase = str2.toLowerCase();
        char c = 65535;
        if ((lowerCase.hashCode() == 1420614889 && lowerCase.equals("hybridencrypt")) ? false : -1) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        if (str.hashCode() == 396454335 && str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
            c = 0;
        }
        if (c != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive 'HybridEncrypt' with key type '%s'.", str));
        }
        zzdtz zzdtzVar = new zzdtz();
        if (i > 0) {
            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
        }
        return zzdtzVar;
    }
}
