package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzcyv implements Parcelable.Creator<zzcyu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyu createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        com.google.android.gms.common.internal.zzbr zzbrVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    zzbrVar = (com.google.android.gms.common.internal.zzbr) zzbgm.zza(parcel, readInt, com.google.android.gms.common.internal.zzbr.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcyu(i, zzbrVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyu[] newArray(int i) {
        return new zzcyu[i];
    }
}
