package com.google.android.gms.internal;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class zzdyj implements zzdtj {
    private Mac zzmlu;
    private final int zzmlv;
    private final String zzmlw;
    private final Key zzmlx;

    public zzdyj(String str, Key key, int i) throws GeneralSecurityException {
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -1823053428) {
            if (hashCode != 392315118) {
                if (hashCode == 392317873 && str.equals("HMACSHA512")) {
                    c = 2;
                }
            } else if (str.equals("HMACSHA256")) {
                c = 1;
            }
        } else if (str.equals("HMACSHA1")) {
            c = 0;
        }
        switch (c) {
            case 0:
                if (i > 20) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            case 1:
                if (i > 32) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            case 2:
                if (i > 64) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            default:
                String valueOf = String.valueOf(str);
                throw new NoSuchAlgorithmException(valueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(valueOf) : new String("unknown Hmac algorithm: "));
        }
        this.zzmlw = str;
        this.zzmlv = i;
        this.zzmlx = key;
        this.zzmlu = zzdxx.zzmll.zzoy(str);
        this.zzmlu.init(key);
    }

    @Override // com.google.android.gms.internal.zzdtj
    public final byte[] zzaf(byte[] bArr) throws GeneralSecurityException {
        Mac zzoy;
        try {
            zzoy = (Mac) this.zzmlu.clone();
        } catch (CloneNotSupportedException unused) {
            zzoy = zzdxx.zzmll.zzoy(this.zzmlw);
            zzoy.init(this.zzmlx);
        }
        zzoy.update(bArr);
        byte[] bArr2 = new byte[this.zzmlv];
        System.arraycopy(zzoy.doFinal(), 0, bArr2, 0, this.zzmlv);
        return bArr2;
    }
}
