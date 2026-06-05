package com.google.android.gms.internal;

import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.common.internal.Hide;
import java.util.Date;
import java.util.HashSet;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxu {
    public static int zza(AdRequest.ErrorCode errorCode) {
        switch (zzxv.zzckn[errorCode.ordinal()]) {
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            default:
                return 0;
        }
    }

    public static MediationAdRequest zza(zzkk zzkkVar, boolean z) {
        AdRequest.Gender gender;
        HashSet hashSet = zzkkVar.zzbgx != null ? new HashSet(zzkkVar.zzbgx) : null;
        Date date = new Date(zzkkVar.zzbgv);
        switch (zzkkVar.zzbgw) {
            case 1:
                gender = AdRequest.Gender.MALE;
                break;
            case 2:
                gender = AdRequest.Gender.FEMALE;
                break;
            default:
                gender = AdRequest.Gender.UNKNOWN;
                break;
        }
        return new MediationAdRequest(date, gender, hashSet, z, zzkkVar.zzbhd);
    }

    public static AdSize zzb(zzko zzkoVar) {
        AdSize[] adSizeArr = {AdSize.SMART_BANNER, AdSize.BANNER, AdSize.IAB_MRECT, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_WIDE_SKYSCRAPER};
        for (int i = 0; i < 6; i++) {
            if (adSizeArr[i].getWidth() == zzkoVar.width && adSizeArr[i].getHeight() == zzkoVar.height) {
                return adSizeArr[i];
            }
        }
        return new AdSize(com.google.android.gms.ads.zzb.zza(zzkoVar.width, zzkoVar.height, zzkoVar.zzbia));
    }
}
