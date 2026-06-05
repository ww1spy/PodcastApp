package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzduk implements zzdsz<zzdtj> {
    @Override // com.google.android.gms.internal.zzdsz
    public final zzdtf<zzdtj> zzd(String str, String str2, int i) throws GeneralSecurityException {
        String lowerCase = str2.toLowerCase();
        char c = 65535;
        if ((lowerCase.hashCode() == 107855 && lowerCase.equals("mac")) ? false : -1) {
            throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
        if (str.hashCode() == 836622442 && str.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            c = 0;
        }
        if (c != 0) {
            throw new GeneralSecurityException(String.format("No support for primitive 'Mac' with key type '%s'.", str));
        }
        zzdui zzduiVar = new zzdui();
        if (i > 0) {
            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
        }
        return zzduiVar;
    }
}
