package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzno extends zzbgl {
    public static final Parcelable.Creator<zzno> CREATOR = new zznp();
    public final String zzbkm;

    public zzno(SearchAdRequest searchAdRequest) {
        this.zzbkm = searchAdRequest.getQuery();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzno(String str) {
        this.zzbkm = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 15, this.zzbkm, false);
        zzbgo.zzai(parcel, zze);
    }
}
