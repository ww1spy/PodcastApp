package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzd implements Parcelable.Creator<ApplicationMetadata> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ApplicationMetadata createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        String str2 = null;
        ArrayList arrayList = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        Uri uri = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 3:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 4:
                    arrayList = zzbgm.zzc(parcel, readInt, WebImage.CREATOR);
                    break;
                case 5:
                    arrayList2 = zzbgm.zzac(parcel, readInt);
                    break;
                case 6:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 7:
                    uri = (Uri) zzbgm.zza(parcel, readInt, Uri.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new ApplicationMetadata(str, str2, arrayList, arrayList2, str3, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ApplicationMetadata[] newArray(int i) {
        return new ApplicationMetadata[i];
    }
}
