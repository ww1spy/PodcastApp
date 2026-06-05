package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbht implements Parcelable.Creator<zzbhq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhq createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        String str2 = null;
        zzbhj zzbhjVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 3:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 4:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 6:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 7:
                    i4 = zzbgm.zzg(parcel, readInt);
                    break;
                case 8:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 9:
                    zzbhjVar = (zzbhj) zzbgm.zza(parcel, readInt, zzbhj.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbhq(i, i2, z, i3, z2, str, i4, str2, zzbhjVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhq[] newArray(int i) {
        return new zzbhq[i];
    }
}
