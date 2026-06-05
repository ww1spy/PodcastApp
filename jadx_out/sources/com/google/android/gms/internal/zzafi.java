package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzafi extends zzbgl {
    public static final Parcelable.Creator<zzafi> CREATOR = new zzafj();
    public final String zzatx;
    public final zzkk zzcrv;

    public zzafi(zzkk zzkkVar, String str) {
        this.zzcrv = zzkkVar;
        this.zzatx = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzcrv, i, false);
        zzbgo.zza(parcel, 3, this.zzatx, false);
        zzbgo.zzai(parcel, zze);
    }
}
