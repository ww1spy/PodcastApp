package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzkm implements Parcelable.Creator<zzkk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkk createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zzno zznoVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 3:
                    bundle = zzbgm.zzs(parcel, readInt);
                    break;
                case 4:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    arrayList = zzbgm.zzac(parcel, readInt);
                    break;
                case 6:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 7:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 8:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 10:
                    zznoVar = (zzno) zzbgm.zza(parcel, readInt, zzno.CREATOR);
                    break;
                case 11:
                    location = (Location) zzbgm.zza(parcel, readInt, Location.CREATOR);
                    break;
                case 12:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 13:
                    bundle2 = zzbgm.zzs(parcel, readInt);
                    break;
                case 14:
                    bundle3 = zzbgm.zzs(parcel, readInt);
                    break;
                case 15:
                    arrayList2 = zzbgm.zzac(parcel, readInt);
                    break;
                case 16:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 17:
                    str4 = zzbgm.zzq(parcel, readInt);
                    break;
                case 18:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzkk(i, j, bundle, i2, arrayList, z, i3, z2, str, zznoVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkk[] newArray(int i) {
        return new zzkk[i];
    }
}
