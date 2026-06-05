package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdxy;
import com.google.android.gms.security.ProviderInstaller;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class zzdxx<T_WRAPPER extends zzdxy<T_ENGINE>, T_ENGINE> {
    private static final Logger logger = Logger.getLogger(zzdxx.class.getName());
    private static final List<Provider> zzmlj;
    public static final zzdxx<zzdxz, Cipher> zzmlk;
    public static final zzdxx<zzdyd, Mac> zzmll;
    private static zzdxx<zzdyf, Signature> zzmlm;
    private static zzdxx<zzdye, MessageDigest> zzmln;
    public static final zzdxx<zzdya, KeyAgreement> zzmlo;
    public static final zzdxx<zzdyc, KeyPairGenerator> zzmlp;
    public static final zzdxx<zzdyb, KeyFactory> zzmlq;
    private T_WRAPPER zzmlr;
    private List<Provider> zzmls = zzmlj;
    private boolean zzmlt = true;

    static {
        if (zzdyo.zzakt()) {
            String[] strArr = {ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < 2; i++) {
                String str = strArr[i];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    logger.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            zzmlj = arrayList;
        } else {
            zzmlj = new ArrayList();
        }
        zzmlk = new zzdxx<>(new zzdxz());
        zzmll = new zzdxx<>(new zzdyd());
        zzmlm = new zzdxx<>(new zzdyf());
        zzmln = new zzdxx<>(new zzdye());
        zzmlo = new zzdxx<>(new zzdya());
        zzmlp = new zzdxx<>(new zzdyc());
        zzmlq = new zzdxx<>(new zzdyb());
    }

    private zzdxx(T_WRAPPER t_wrapper) {
        this.zzmlr = t_wrapper;
    }

    private final boolean zza(String str, Provider provider) {
        try {
            this.zzmlr.zzb(str, provider);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        return (T_ENGINE) r0.zzb(r4, r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T_ENGINE zzoy(java.lang.String r4) throws java.security.GeneralSecurityException {
        /*
            r3 = this;
            java.util.List<java.security.Provider> r0 = r3.zzmls
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L1f
            java.lang.Object r1 = r0.next()
            java.security.Provider r1 = (java.security.Provider) r1
            boolean r2 = r3.zza(r4, r1)
            if (r2 == 0) goto L6
            T_WRAPPER extends com.google.android.gms.internal.zzdxy<T_ENGINE> r0 = r3.zzmlr
        L1a:
            java.lang.Object r4 = r0.zzb(r4, r1)
            return r4
        L1f:
            boolean r0 = r3.zzmlt
            if (r0 == 0) goto L27
            T_WRAPPER extends com.google.android.gms.internal.zzdxy<T_ENGINE> r0 = r3.zzmlr
            r1 = 0
            goto L1a
        L27:
            java.security.GeneralSecurityException r4 = new java.security.GeneralSecurityException
            java.lang.String r0 = "No good Provider found."
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdxx.zzoy(java.lang.String):java.lang.Object");
    }
}
