package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbhk implements Parcelable.Creator<zzbhj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhj createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        zzbhl zzbhlVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    zzbhlVar = (zzbhl) zzbgm.zza(parcel, readInt, zzbhl.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbhj(i, zzbhlVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhj[] newArray(int i) {
        return new zzbhj[i];
    }
}
