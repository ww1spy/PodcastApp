package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzadk implements Parcelable.Creator<zzadj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzadj createFromParcel(Parcel parcel) {
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
        return new zzadj(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzadj[] newArray(int i) {
        return new zzadj[i];
    }
}
