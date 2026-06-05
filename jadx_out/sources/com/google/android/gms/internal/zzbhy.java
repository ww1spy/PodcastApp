package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzbhy implements Parcelable.Creator<zzbhv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhv createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        ArrayList arrayList = null;
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    arrayList = zzbgm.zzc(parcel, readInt, zzbhw.CREATOR);
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
        return new zzbhv(i, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhv[] newArray(int i) {
        return new zzbhv[i];
    }
}
