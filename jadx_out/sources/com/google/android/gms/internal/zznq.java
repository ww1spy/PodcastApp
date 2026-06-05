package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zznq extends zzko {
    public zznq(zzko zzkoVar) {
        super(zzkoVar.zzbia, zzkoVar.height, zzkoVar.heightPixels, zzkoVar.zzbib, zzkoVar.width, zzkoVar.widthPixels, zzkoVar.zzbic, zzkoVar.zzbid, zzkoVar.zzbie, zzkoVar.zzbif);
    }

    @Override // com.google.android.gms.internal.zzko, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzbia, false);
        zzbgo.zzc(parcel, 3, this.height);
        zzbgo.zzc(parcel, 6, this.width);
        zzbgo.zzai(parcel, zze);
    }
}
