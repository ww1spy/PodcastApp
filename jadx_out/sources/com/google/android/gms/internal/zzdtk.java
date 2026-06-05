package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import com.google.android.gms.internal.zzdwp;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzdtk {
    @Deprecated
    public static final zzdtg zzag(byte[] bArr) throws GeneralSecurityException {
        try {
            zzdwp zzai = zzdwp.zzai(bArr);
            for (zzdwp.zzb zzbVar : zzai.zzbrk()) {
                if (zzbVar.zzbro().zzbqw() == zzdwg.zzb.UNKNOWN_KEYMATERIAL || zzbVar.zzbro().zzbqw() == zzdwg.zzb.SYMMETRIC || zzbVar.zzbro().zzbqw() == zzdwg.zzb.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return zzdtg.zza(zzai);
        } catch (zzfie unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
