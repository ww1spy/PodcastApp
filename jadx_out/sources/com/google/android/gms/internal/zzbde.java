package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbde implements Parcelable.Creator<zzbdd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbdd createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzbgm.zzb(parcel, readInt);
            } else {
                str = zzbgm.zzq(parcel, readInt);
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbdd(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbdd[] newArray(int i) {
        return new zzbdd[i];
    }
}
