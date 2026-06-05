package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class zzbhm extends zzbgl {
    public static final Parcelable.Creator<zzbhm> CREATOR = new zzbho();
    private int versionCode;
    final String zzgim;
    final int zzgin;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhm(int i, String str, int i2) {
        this.versionCode = i;
        this.zzgim = str;
        this.zzgin = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhm(String str, int i) {
        this.versionCode = 1;
        this.zzgim = str;
        this.zzgin = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.versionCode);
        zzbgo.zza(parcel, 2, this.zzgim, false);
        zzbgo.zzc(parcel, 3, this.zzgin);
        zzbgo.zzai(parcel, zze);
    }
}
