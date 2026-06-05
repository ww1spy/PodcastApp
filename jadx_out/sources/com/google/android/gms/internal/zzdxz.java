package com.google.android.gms.internal;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;

/* loaded from: classes.dex */
public final class zzdxz implements zzdxy<Cipher> {
    @Override // com.google.android.gms.internal.zzdxy
    public final /* synthetic */ Cipher zzb(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
