package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzacz implements Parcelable.Creator<zzacy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacy createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        Bundle bundle = null;
        zzala zzalaVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    bundle = zzbgm.zzs(parcel, readInt);
                    break;
                case 2:
                    zzalaVar = (zzala) zzbgm.zza(parcel, readInt, zzala.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) zzbgm.zza(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 5:
                    arrayList = zzbgm.zzac(parcel, readInt);
                    break;
                case 6:
                    packageInfo = (PackageInfo) zzbgm.zza(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 8:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzacy(bundle, zzalaVar, applicationInfo, str, arrayList, packageInfo, str2, z, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacy[] newArray(int i) {
        return new zzacy[i];
    }
}
