package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;

@Hide
/* loaded from: classes.dex */
public final class zzai implements Parcelable.Creator<MediaQueueItem> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaQueueItem createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        boolean z = false;
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        MediaInfo mediaInfo = null;
        long[] jArr = null;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    mediaInfo = (MediaInfo) zzbgm.zza(parcel, readInt, MediaInfo.CREATOR);
                    break;
                case 3:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 4:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 5:
                    d = zzbgm.zzn(parcel, readInt);
                    break;
                case 6:
                    d2 = zzbgm.zzn(parcel, readInt);
                    break;
                case 7:
                    d3 = zzbgm.zzn(parcel, readInt);
                    break;
                case 8:
                    jArr = zzbgm.zzx(parcel, readInt);
                    break;
                case 9:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new MediaQueueItem(mediaInfo, i, z, d, d2, d3, jArr, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaQueueItem[] newArray(int i) {
        return new MediaQueueItem[i];
    }
}
