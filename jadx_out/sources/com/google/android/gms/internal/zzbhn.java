package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzbhn implements Parcelable.Creator<zzbhl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhl createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    arrayList = zzbgm.zzc(parcel, readInt, zzbhm.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbhl(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhl[] newArray(int i) {
        return new zzbhl[i];
    }
}
