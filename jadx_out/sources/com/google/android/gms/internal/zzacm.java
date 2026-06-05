package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;

@Hide
/* loaded from: classes.dex */
public final class zzacm implements Parcelable.Creator<zzacl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacl createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 3:
                    arrayList = zzbgm.zzac(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzacl(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzacl[] newArray(int i) {
        return new zzacl[i];
    }
}
