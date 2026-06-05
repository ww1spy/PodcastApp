package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzcyw extends zzbgl {
    public static final Parcelable.Creator<zzcyw> CREATOR = new zzcyx();
    private int zzehz;
    private final ConnectionResult zzfuw;
    private final com.google.android.gms.common.internal.zzbt zzklz;

    public zzcyw(int i) {
        this(new ConnectionResult(8, null), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcyw(int i, ConnectionResult connectionResult, com.google.android.gms.common.internal.zzbt zzbtVar) {
        this.zzehz = i;
        this.zzfuw = connectionResult;
        this.zzklz = zzbtVar;
    }

    private zzcyw(ConnectionResult connectionResult, com.google.android.gms.common.internal.zzbt zzbtVar) {
        this(1, connectionResult, null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzehz);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzfuw, i, false);
        zzbgo.zza(parcel, 3, (Parcelable) this.zzklz, i, false);
        zzbgo.zzai(parcel, zze);
    }

    public final ConnectionResult zzain() {
        return this.zzfuw;
    }

    public final com.google.android.gms.common.internal.zzbt zzbfa() {
        return this.zzklz;
    }
}
