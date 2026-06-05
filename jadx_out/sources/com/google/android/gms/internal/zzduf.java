package com.google.android.gms.internal;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
final class zzduf {
    public static zzdxu zza(zzdvw zzdvwVar) throws GeneralSecurityException {
        switch (zzdug.zzmfl[zzdvwVar.ordinal()]) {
            case 1:
                return zzdxu.NIST_P256;
            case 2:
                return zzdxu.NIST_P384;
            case 3:
                return zzdxu.NIST_P521;
            default:
                String valueOf = String.valueOf(zzdvwVar);
                StringBuilder sb = new StringBuilder(20 + String.valueOf(valueOf).length());
                sb.append("unknown curve type: ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
        }
    }

    public static zzdxv zza(zzdvi zzdviVar) throws GeneralSecurityException {
        switch (zzdug.zzmfm[zzdviVar.ordinal()]) {
            case 1:
                return zzdxv.UNCOMPRESSED;
            case 2:
                return zzdxv.COMPRESSED;
            default:
                String valueOf = String.valueOf(zzdviVar);
                StringBuilder sb = new StringBuilder(22 + String.valueOf(valueOf).length());
                sb.append("unknown point format: ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
        }
    }

    public static String zza(zzdvy zzdvyVar) throws NoSuchAlgorithmException {
        switch (zzdug.zzmfk[zzdvyVar.ordinal()]) {
            case 1:
                return "HmacSha1";
            case 2:
                return "HmacSha256";
            case 3:
                return "HmacSha512";
            default:
                String valueOf = String.valueOf(zzdvyVar);
                StringBuilder sb = new StringBuilder(27 + String.valueOf(valueOf).length());
                sb.append("hash unsupported for HMAC: ");
                sb.append(valueOf);
                throw new NoSuchAlgorithmException(sb.toString());
        }
    }

    public static void zza(zzdvo zzdvoVar) throws GeneralSecurityException {
        zzdxs.zza(zza(zzdvoVar.zzbps().zzbqf()));
        zza(zzdvoVar.zzbps().zzbqg());
        if (zzdvoVar.zzbpu() == zzdvi.UNKNOWN_FORMAT) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        zzdtn.zza(zzdvoVar.zzbpt().zzbpn());
    }
}
