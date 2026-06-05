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
public final class zzach implements Parcelable.Creator<zzacf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacf createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        long j = 0;
        long j2 = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i7 = 0;
        boolean z6 = false;
        boolean z7 = false;
        int i8 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        Bundle bundle = null;
        zzkk zzkkVar = null;
        zzko zzkoVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzala zzalaVar = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzqh zzqhVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        zzms zzmsVar = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    bundle = zzbgm.zzs(parcel, readInt);
                    break;
                case 3:
                    zzkkVar = (zzkk) zzbgm.zza(parcel, readInt, zzkk.CREATOR);
                    break;
                case 4:
                    zzkoVar = (zzko) zzbgm.zza(parcel, readInt, zzko.CREATOR);
                    break;
                case 5:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) zzbgm.zza(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) zzbgm.zza(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 9:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 10:
                    str4 = zzbgm.zzq(parcel, readInt);
                    break;
                case 11:
                    zzalaVar = (zzala) zzbgm.zza(parcel, readInt, zzala.CREATOR);
                    break;
                case 12:
                    bundle2 = zzbgm.zzs(parcel, readInt);
                    break;
                case 13:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 14:
                    arrayList = zzbgm.zzac(parcel, readInt);
                    break;
                case 15:
                    bundle3 = zzbgm.zzs(parcel, readInt);
                    break;
                case 16:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 18:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 19:
                    i4 = zzbgm.zzg(parcel, readInt);
                    break;
                case 20:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 21:
                    str5 = zzbgm.zzq(parcel, readInt);
                    break;
                case 25:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 26:
                    str6 = zzbgm.zzq(parcel, readInt);
                    break;
                case 27:
                    arrayList2 = zzbgm.zzac(parcel, readInt);
                    break;
                case 28:
                    str7 = zzbgm.zzq(parcel, readInt);
                    break;
                case 29:
                    zzqhVar = (zzqh) zzbgm.zza(parcel, readInt, zzqh.CREATOR);
                    break;
                case 30:
                    arrayList3 = zzbgm.zzac(parcel, readInt);
                    break;
                case 31:
                    j2 = zzbgm.zzi(parcel, readInt);
                    break;
                case 33:
                    str8 = zzbgm.zzq(parcel, readInt);
                    break;
                case 34:
                    f2 = zzbgm.zzl(parcel, readInt);
                    break;
                case 35:
                    i5 = zzbgm.zzg(parcel, readInt);
                    break;
                case 36:
                    i6 = zzbgm.zzg(parcel, readInt);
                    break;
                case 37:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                case 38:
                    z4 = zzbgm.zzc(parcel, readInt);
                    break;
                case 39:
                    str9 = zzbgm.zzq(parcel, readInt);
                    break;
                case 40:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 41:
                    str10 = zzbgm.zzq(parcel, readInt);
                    break;
                case 42:
                    z5 = zzbgm.zzc(parcel, readInt);
                    break;
                case 43:
                    i7 = zzbgm.zzg(parcel, readInt);
                    break;
                case 44:
                    bundle4 = zzbgm.zzs(parcel, readInt);
                    break;
                case 45:
                    str11 = zzbgm.zzq(parcel, readInt);
                    break;
                case 46:
                    zzmsVar = (zzms) zzbgm.zza(parcel, readInt, zzms.CREATOR);
                    break;
                case 47:
                    z6 = zzbgm.zzc(parcel, readInt);
                    break;
                case 48:
                    bundle5 = zzbgm.zzs(parcel, readInt);
                    break;
                case 49:
                    str12 = zzbgm.zzq(parcel, readInt);
                    break;
                case 50:
                    str13 = zzbgm.zzq(parcel, readInt);
                    break;
                case 51:
                    str14 = zzbgm.zzq(parcel, readInt);
                    break;
                case 52:
                    z7 = zzbgm.zzc(parcel, readInt);
                    break;
                case 53:
                    arrayList4 = zzbgm.zzab(parcel, readInt);
                    break;
                case 54:
                    str15 = zzbgm.zzq(parcel, readInt);
                    break;
                case 55:
                    arrayList5 = zzbgm.zzac(parcel, readInt);
                    break;
                case 56:
                    i8 = zzbgm.zzg(parcel, readInt);
                    break;
                case 57:
                    z8 = zzbgm.zzc(parcel, readInt);
                    break;
                case 58:
                    z9 = zzbgm.zzc(parcel, readInt);
                    break;
                case 59:
                    z10 = zzbgm.zzc(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzacf(i, bundle, zzkkVar, zzkoVar, str, applicationInfo, packageInfo, str2, str3, str4, zzalaVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, j, str6, arrayList2, str7, zzqhVar, arrayList3, j2, str8, f2, z2, i5, i6, z3, z4, str9, str10, z5, i7, bundle4, str11, zzmsVar, z6, bundle5, str12, str13, str14, z7, arrayList4, str15, arrayList5, i8, z8, z9, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacf[] newArray(int i) {
        return new zzacf[i];
    }
}
