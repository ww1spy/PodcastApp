package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdub implements zzdsz<zzdtd> {
    @Override // com.google.android.gms.internal.zzdsz
    public final zzdtf<zzdtd> zzd(String str, String str2, int i) throws GeneralSecurityException {
        String lowerCase = str2.toLowerCase();
        char c = 65535;
        if ((lowerCase.hashCode() == 275448849 && lowerCase.equals("hybriddecrypt")) ? false : -1) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        if (str.hashCode() == -80133005 && str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
            c = 0;
        }
        if (c != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive 'HybridEncrypt' with key type '%s'.", str));
        }
        zzdty zzdtyVar = new zzdty();
        if (i > 0) {
            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
        }
        return zzdtyVar;
    }
}
