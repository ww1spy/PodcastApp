package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbdy implements Parcelable.Creator<zzbdx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbdx createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        int i = 0;
        int i2 = 0;
        double d = 0.0d;
        ApplicationMetadata applicationMetadata = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    d = zzbgm.zzn(parcel, readInt);
                    break;
                case 3:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 4:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    applicationMetadata = (ApplicationMetadata) zzbgm.zza(parcel, readInt, ApplicationMetadata.CREATOR);
                    break;
                case 6:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbdx(d, z, i, applicationMetadata, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbdx[] newArray(int i) {
        return new zzbdx[i];
    }
}
