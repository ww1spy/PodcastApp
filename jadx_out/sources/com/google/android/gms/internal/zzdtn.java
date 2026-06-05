package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import com.google.android.gms.internal.zzdwp;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class zzdtn {
    private static final Logger logger = Logger.getLogger(zzdtn.class.getName());
    private static final ConcurrentMap<String, zzdtf> zzmfb = new ConcurrentHashMap();
    private static final ConcurrentMap<String, Boolean> zzmfc = new ConcurrentHashMap();
    private static final ConcurrentMap<String, zzdsz> zzmfd = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    public static <P> zzdtl<P> zza(zzdtg zzdtgVar, zzdtf<P> zzdtfVar) throws GeneralSecurityException {
        zzdwp zzboe = zzdtgVar.zzboe();
        if (zzboe.zzbrl() == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        int zzbrj = zzboe.zzbrj();
        boolean z = true;
        boolean z2 = false;
        for (zzdwp.zzb zzbVar : zzboe.zzbrk()) {
            if (!zzbVar.zzbrn()) {
                throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzbVar.zzbrq())));
            }
            if (zzbVar.zzbrr() == zzdxb.UNKNOWN_PREFIX) {
                throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzbVar.zzbrq())));
            }
            if (zzbVar.zzbrp() == zzdwj.UNKNOWN_STATUS) {
                throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzbVar.zzbrq())));
            }
            if (zzbVar.zzbrp() == zzdwj.ENABLED && zzbVar.zzbrq() == zzbrj) {
                if (z2) {
                    throw new GeneralSecurityException("keyset contains multiple primary keys");
                }
                z2 = true;
            }
            if (zzbVar.zzbro().zzbqw() != zzdwg.zzb.ASYMMETRIC_PUBLIC) {
                z = false;
            }
        }
        if (!z2 && !z) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        zzdtl<P> zzdtlVar = (zzdtl<P>) new zzdtl();
        for (zzdwp.zzb zzbVar2 : zzdtgVar.zzboe().zzbrk()) {
            if (zzbVar2.zzbrp() == zzdwj.ENABLED) {
                zzdtm zza = zzdtlVar.zza(zza(zzbVar2.zzbro().zzbqu(), zzbVar2.zzbro().zzbqv()), zzbVar2);
                if (zzbVar2.zzbrq() == zzdtgVar.zzboe().zzbrj()) {
                    zzdtlVar.zza(zza);
                }
            }
        }
        return zzdtlVar;
    }

    public static <P> zzdwg zza(zzdwl zzdwlVar) throws GeneralSecurityException {
        zzdtf zzon = zzon(zzdwlVar.zzbqu());
        if (zzmfc.get(zzdwlVar.zzbqu()).booleanValue()) {
            return zzon.zzc(zzdwlVar.zzbqv());
        }
        String valueOf = String.valueOf(zzdwlVar.zzbqu());
        throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
    }

    public static <P> zzfjc zza(String str, zzfjc zzfjcVar) throws GeneralSecurityException {
        zzdtf zzon = zzon(str);
        if (zzmfc.get(str).booleanValue()) {
            return zzon.zzb(zzfjcVar);
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
    }

    private static <P> P zza(String str, zzfgs zzfgsVar) throws GeneralSecurityException {
        return (P) zzon(str).zza(zzfgsVar);
    }

    public static synchronized <P> void zza(String str, zzdsz<P> zzdszVar) throws GeneralSecurityException {
        synchronized (zzdtn.class) {
            if (zzmfd.containsKey(str.toLowerCase())) {
                if (!zzdszVar.getClass().equals(zzmfd.get(str.toLowerCase()).getClass())) {
                    Logger logger2 = logger;
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(str);
                    logger2.logp(level, "com.google.crypto.tink.Registry", "addCatalogue", valueOf.length() != 0 ? "Attempted overwrite of a catalogueName catalogue for name ".concat(valueOf) : new String("Attempted overwrite of a catalogueName catalogue for name "));
                    StringBuilder sb = new StringBuilder(47 + String.valueOf(str).length());
                    sb.append("catalogue for name ");
                    sb.append(str);
                    sb.append(" has been already registered");
                    throw new GeneralSecurityException(sb.toString());
                }
            }
            zzmfd.put(str.toLowerCase(), zzdszVar);
        }
    }

    public static <P> void zza(String str, zzdtf<P> zzdtfVar) throws GeneralSecurityException {
        zza(str, zzdtfVar, true);
    }

    public static synchronized <P> void zza(String str, zzdtf<P> zzdtfVar, boolean z) throws GeneralSecurityException {
        synchronized (zzdtn.class) {
            try {
                if (zzdtfVar == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                if (zzmfb.containsKey(str)) {
                    zzdtf zzon = zzon(str);
                    boolean booleanValue = zzmfc.get(str).booleanValue();
                    if (!zzdtfVar.getClass().equals(zzon.getClass()) || (!booleanValue && z)) {
                        Logger logger2 = logger;
                        Level level = Level.WARNING;
                        String valueOf = String.valueOf(str);
                        logger2.logp(level, "com.google.crypto.tink.Registry", "registerKeyManager", valueOf.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(valueOf) : new String("Attempted overwrite of a registered key manager for key type "));
                        throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", str, zzon.getClass().getName(), zzdtfVar.getClass().getName()));
                    }
                }
                zzmfb.put(str, zzdtfVar);
                zzmfc.put(str, Boolean.valueOf(z));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <P> zzfjc zzb(zzdwl zzdwlVar) throws GeneralSecurityException {
        zzdtf zzon = zzon(zzdwlVar.zzbqu());
        if (zzmfc.get(zzdwlVar.zzbqu()).booleanValue()) {
            return zzon.zzb(zzdwlVar.zzbqv());
        }
        String valueOf = String.valueOf(zzdwlVar.zzbqu());
        throw new GeneralSecurityException(valueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(valueOf) : new String("newKey-operation not permitted for key type "));
    }

    public static <P> P zzb(String str, zzfjc zzfjcVar) throws GeneralSecurityException {
        return (P) zzon(str).zza(zzfjcVar);
    }

    public static <P> P zzf(String str, byte[] bArr) throws GeneralSecurityException {
        return (P) zza(str, zzfgs.zzaz(bArr));
    }

    public static <P> zzdsz<P> zzom(String str) throws GeneralSecurityException {
        String valueOf;
        String str2;
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        zzdsz<P> zzdszVar = zzmfd.get(str.toLowerCase());
        if (zzdszVar != null) {
            return zzdszVar;
        }
        String format = String.format("no catalogue found for %s. ", str);
        if (str.toLowerCase().startsWith("tinkaead")) {
            format = String.valueOf(format).concat("Maybe call AeadConfig.init().");
        }
        if (str.toLowerCase().startsWith("tinkdeterministicaead")) {
            valueOf = String.valueOf(format);
            str2 = "Maybe call DeterministicAeadConfig.init().";
        } else if (str.toLowerCase().startsWith("tinkstreamingaead")) {
            valueOf = String.valueOf(format);
            str2 = "Maybe call StreamingAeadConfig.init().";
        } else if (str.toLowerCase().startsWith("tinkhybriddecrypt") || str.toLowerCase().startsWith("tinkhybridencrypt")) {
            valueOf = String.valueOf(format);
            str2 = "Maybe call HybridConfig.init().";
        } else if (str.toLowerCase().startsWith("tinkmac")) {
            valueOf = String.valueOf(format);
            str2 = "Maybe call MacConfig.init().";
        } else {
            if (!str.toLowerCase().startsWith("tinkpublickeysign") && !str.toLowerCase().startsWith("tinkpublickeyverify")) {
                if (str.toLowerCase().startsWith("tink")) {
                    valueOf = String.valueOf(format);
                    str2 = "Maybe call TinkConfig.init().";
                }
                throw new GeneralSecurityException(format);
            }
            valueOf = String.valueOf(format);
            str2 = "Maybe call SignatureConfig.init().";
        }
        format = valueOf.concat(str2);
        throw new GeneralSecurityException(format);
    }

    private static <P> zzdtf<P> zzon(String str) throws GeneralSecurityException {
        zzdtf<P> zzdtfVar = zzmfb.get(str);
        if (zzdtfVar != null) {
            return zzdtfVar;
        }
        StringBuilder sb = new StringBuilder(78 + String.valueOf(str).length());
        sb.append("No key manager found for key type: ");
        sb.append(str);
        sb.append(".  Check the configuration of the registry.");
        throw new GeneralSecurityException(sb.toString());
    }
}
