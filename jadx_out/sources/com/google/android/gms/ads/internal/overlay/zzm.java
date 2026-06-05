package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzap;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzbgm;

@Hide
/* loaded from: classes.dex */
public final class zzm implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        int i = 0;
        int i2 = 0;
        zzc zzcVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzala zzalaVar = null;
        String str4 = null;
        zzap zzapVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    zzcVar = (zzc) zzbgm.zza(parcel, readInt, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                case 4:
                    iBinder2 = zzbgm.zzr(parcel, readInt);
                    break;
                case 5:
                    iBinder3 = zzbgm.zzr(parcel, readInt);
                    break;
                case 6:
                    iBinder4 = zzbgm.zzr(parcel, readInt);
                    break;
                case 7:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 8:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 10:
                    iBinder5 = zzbgm.zzr(parcel, readInt);
                    break;
                case 11:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 12:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 13:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 14:
                    zzalaVar = (zzala) zzbgm.zza(parcel, readInt, zzala.CREATOR);
                    break;
                case 15:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 16:
                    str4 = zzbgm.zzq(parcel, readInt);
                    break;
                case 17:
                    zzapVar = (zzap) zzbgm.zza(parcel, readInt, zzap.CREATOR);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new AdOverlayInfoParcel(zzcVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzalaVar, str4, zzapVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
