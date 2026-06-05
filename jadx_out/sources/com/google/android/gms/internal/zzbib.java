package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbib implements Parcelable.Creator<zzbia> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbia createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        Parcel parcel2 = null;
        int i = 0;
        zzbhv zzbhvVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    parcel2 = zzbgm.zzad(parcel, readInt);
                    break;
                case 3:
                    zzbhvVar = (zzbhv) zzbgm.zza(parcel, readInt, zzbhv.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbia(i, parcel2, zzbhvVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbia[] newArray(int i) {
        return new zzbia[i];
    }
}
