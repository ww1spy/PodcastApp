package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzae implements Parcelable.Creator<MediaInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaInfo createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        String str2 = null;
        MediaMetadata mediaMetadata = null;
        ArrayList arrayList = null;
        TextTrackStyle textTrackStyle = null;
        String str3 = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        String str4 = null;
        int i = 0;
        long j = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 3:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 4:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 5:
                    mediaMetadata = (MediaMetadata) zzbgm.zza(parcel, readInt, MediaMetadata.CREATOR);
                    break;
                case 6:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 7:
                    arrayList = zzbgm.zzc(parcel, readInt, MediaTrack.CREATOR);
                    break;
                case 8:
                    textTrackStyle = (TextTrackStyle) zzbgm.zza(parcel, readInt, TextTrackStyle.CREATOR);
                    break;
                case 9:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 10:
                    arrayList2 = zzbgm.zzc(parcel, readInt, AdBreakInfo.CREATOR);
                    break;
                case 11:
                    arrayList3 = zzbgm.zzc(parcel, readInt, AdBreakClipInfo.CREATOR);
                    break;
                case 12:
                    str4 = zzbgm.zzq(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new MediaInfo(str, i, str2, mediaMetadata, j, arrayList, textTrackStyle, str3, arrayList2, arrayList3, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaInfo[] newArray(int i) {
        return new MediaInfo[i];
    }
}
