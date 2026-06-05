package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

@zzabh
/* loaded from: classes.dex */
public final class zzms extends zzbgl {
    public static final Parcelable.Creator<zzms> CREATOR = new zzmt();
    public final int zzbjh;

    public zzms(int i) {
        this.zzbjh = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 2, this.zzbjh);
        zzbgo.zzai(parcel, zze);
    }
}
