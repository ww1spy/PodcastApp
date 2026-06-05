package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzaj implements Parcelable.Creator<MediaStatus> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaStatus createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        double d = 0.0d;
        double d2 = 0.0d;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        MediaInfo mediaInfo = null;
        long[] jArr = null;
        String str = null;
        ArrayList arrayList = null;
        AdBreakStatus adBreakStatus = null;
        VideoInfo videoInfo = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    mediaInfo = (MediaInfo) zzbgm.zza(parcel, readInt, MediaInfo.CREATOR);
                    break;
                case 3:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 4:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    d = zzbgm.zzn(parcel, readInt);
                    break;
                case 6:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 7:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 8:
                    j2 = zzbgm.zzi(parcel, readInt);
                    break;
                case 9:
                    j3 = zzbgm.zzi(parcel, readInt);
                    break;
                case 10:
                    d2 = zzbgm.zzn(parcel, readInt);
                    break;
                case 11:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 12:
                    jArr = zzbgm.zzx(parcel, readInt);
                    break;
                case 13:
                    i4 = zzbgm.zzg(parcel, readInt);
                    break;
                case 14:
                    i5 = zzbgm.zzg(parcel, readInt);
                    break;
                case 15:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 16:
                    i6 = zzbgm.zzg(parcel, readInt);
                    break;
                case 17:
                    arrayList = zzbgm.zzc(parcel, readInt, MediaQueueItem.CREATOR);
                    break;
                case 18:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 19:
                    adBreakStatus = (AdBreakStatus) zzbgm.zza(parcel, readInt, AdBreakStatus.CREATOR);
                    break;
                case 20:
                    videoInfo = (VideoInfo) zzbgm.zza(parcel, readInt, VideoInfo.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new MediaStatus(mediaInfo, j, i, d, i2, i3, j2, j3, d2, z, jArr, i4, i5, str, i6, arrayList, z2, adBreakStatus, videoInfo);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaStatus[] newArray(int i) {
        return new MediaStatus[i];
    }
}
