package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzafj implements Parcelable.Creator<zzafi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzafi createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        zzkk zzkkVar = null;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    zzkkVar = (zzkk) zzbgm.zza(parcel, readInt, zzkk.CREATOR);
                    break;
                case 3:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzafi(zzkkVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzafi[] newArray(int i) {
        return new zzafi[i];
    }
}
