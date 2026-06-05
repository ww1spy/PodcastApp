package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzack implements Parcelable.Creator<zzacj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacj createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int i4 = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        zzacv zzacvVar = null;
        String str7 = null;
        String str8 = null;
        zzagd zzagdVar = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        zzacl zzaclVar = null;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        String str10 = null;
        zzagn zzagnVar = null;
        String str11 = null;
        Bundle bundle = null;
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
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 4:
                    arrayList = zzbgm.zzac(parcel, readInt);
                    break;
                case 5:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 6:
                    arrayList2 = zzbgm.zzac(parcel, readInt);
                    break;
                case 7:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 8:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    j2 = zzbgm.zzi(parcel, readInt);
                    break;
                case 10:
                    arrayList3 = zzbgm.zzac(parcel, readInt);
                    break;
                case 11:
                    j3 = zzbgm.zzi(parcel, readInt);
                    break;
                case 12:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 13:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 14:
                    j4 = zzbgm.zzi(parcel, readInt);
                    break;
                case 15:
                    str4 = zzbgm.zzq(parcel, readInt);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                case 41:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 18:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 19:
                    str5 = zzbgm.zzq(parcel, readInt);
                    break;
                case 21:
                    str6 = zzbgm.zzq(parcel, readInt);
                    break;
                case 22:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                case 23:
                    z4 = zzbgm.zzc(parcel, readInt);
                    break;
                case 24:
                    z5 = zzbgm.zzc(parcel, readInt);
                    break;
                case 25:
                    z6 = zzbgm.zzc(parcel, readInt);
                    break;
                case 26:
                    z7 = zzbgm.zzc(parcel, readInt);
                    break;
                case 28:
                    zzacvVar = (zzacv) zzbgm.zza(parcel, readInt, zzacv.CREATOR);
                    break;
                case 29:
                    str7 = zzbgm.zzq(parcel, readInt);
                    break;
                case 30:
                    str8 = zzbgm.zzq(parcel, readInt);
                    break;
                case 31:
                    z8 = zzbgm.zzc(parcel, readInt);
                    break;
                case 32:
                    z9 = zzbgm.zzc(parcel, readInt);
                    break;
                case 33:
                    zzagdVar = (zzagd) zzbgm.zza(parcel, readInt, zzagd.CREATOR);
                    break;
                case 34:
                    arrayList4 = zzbgm.zzac(parcel, readInt);
                    break;
                case 35:
                    arrayList5 = zzbgm.zzac(parcel, readInt);
                    break;
                case 36:
                    z10 = zzbgm.zzc(parcel, readInt);
                    break;
                case 37:
                    zzaclVar = (zzacl) zzbgm.zza(parcel, readInt, zzacl.CREATOR);
                    break;
                case 38:
                    z11 = zzbgm.zzc(parcel, readInt);
                    break;
                case 39:
                    str9 = zzbgm.zzq(parcel, readInt);
                    break;
                case 40:
                    arrayList6 = zzbgm.zzac(parcel, readInt);
                    break;
                case 42:
                    z12 = zzbgm.zzc(parcel, readInt);
                    break;
                case 43:
                    str10 = zzbgm.zzq(parcel, readInt);
                    break;
                case 44:
                    zzagnVar = (zzagn) zzbgm.zza(parcel, readInt, zzagn.CREATOR);
                    break;
                case 45:
                    str11 = zzbgm.zzq(parcel, readInt);
                    break;
                case 46:
                    z13 = zzbgm.zzc(parcel, readInt);
                    break;
                case 47:
                    z14 = zzbgm.zzc(parcel, readInt);
                    break;
                case 48:
                    bundle = zzbgm.zzs(parcel, readInt);
                    break;
                case 49:
                    z15 = zzbgm.zzc(parcel, readInt);
                    break;
                case 50:
                    i4 = zzbgm.zzg(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzacj(i, str, str2, arrayList, i2, arrayList2, j, z, j2, arrayList3, j3, i3, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, zzacvVar, str7, str8, z8, z9, zzagdVar, arrayList4, arrayList5, z10, zzaclVar, z11, str9, arrayList6, z12, str10, zzagnVar, str11, z13, z14, bundle, z15, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacj[] newArray(int i) {
        return new zzacj[i];
    }
}
