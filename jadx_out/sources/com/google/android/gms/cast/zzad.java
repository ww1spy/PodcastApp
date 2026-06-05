package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;

@Hide
/* loaded from: classes.dex */
public final class zzad implements Parcelable.Creator<LaunchOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LaunchOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    z = zzbgm.zzc(parcel, readInt);
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
        return new LaunchOptions(z, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LaunchOptions[] newArray(int i) {
        return new LaunchOptions[i];
    }
}
