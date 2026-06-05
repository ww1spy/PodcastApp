package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzbhz implements Parcelable.Creator<zzbhw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhw createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 3:
                    arrayList = zzbgm.zzc(parcel, readInt, zzbhx.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbhw(i, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhw[] newArray(int i) {
        return new zzbhw[i];
    }
}
