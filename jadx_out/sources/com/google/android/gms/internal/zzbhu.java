package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbhu implements Parcelable.Creator<zzbhx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhx createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        int i = 0;
        zzbhq zzbhqVar = null;
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
                    zzbhqVar = (zzbhq) zzbgm.zza(parcel, readInt, zzbhq.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbhx(i, str, zzbhqVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhx[] newArray(int i) {
        return new zzbhx[i];
    }
}
