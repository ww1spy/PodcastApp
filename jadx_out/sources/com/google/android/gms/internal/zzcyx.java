package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzcyx implements Parcelable.Creator<zzcyw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyw createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        ConnectionResult connectionResult = null;
        int i = 0;
        com.google.android.gms.common.internal.zzbt zzbtVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    connectionResult = (ConnectionResult) zzbgm.zza(parcel, readInt, ConnectionResult.CREATOR);
                    break;
                case 3:
                    zzbtVar = (com.google.android.gms.common.internal.zzbt) zzbgm.zza(parcel, readInt, com.google.android.gms.common.internal.zzbt.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcyw(i, connectionResult, zzbtVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyw[] newArray(int i) {
        return new zzcyw[i];
    }
}
