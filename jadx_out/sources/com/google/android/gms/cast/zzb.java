package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;

@Hide
/* loaded from: classes.dex */
public final class zzb implements Parcelable.Creator<AdBreakInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdBreakInfo createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        boolean z2 = false;
        String str = null;
        String[] strArr = null;
        long j = 0;
        long j2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 3:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 4:
                    j2 = zzbgm.zzi(parcel, readInt);
                    break;
                case 5:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 6:
                    strArr = zzbgm.zzaa(parcel, readInt);
                    break;
                case 7:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new AdBreakInfo(j, str, j2, z, strArr, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdBreakInfo[] newArray(int i) {
        return new AdBreakInfo[i];
    }
}
