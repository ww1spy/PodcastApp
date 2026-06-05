package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzbdd extends zzbgl {

    @Hide
    public static final Parcelable.Creator<zzbdd> CREATOR = new zzbde();
    private String zzflu;

    public zzbdd() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdd(String str) {
        this.zzflu = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbdd) {
            return zzbdw.zza(this.zzflu, ((zzbdd) obj).zzflu);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzflu});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzflu, false);
        zzbgo.zzai(parcel, zze);
    }

    public final String zzagl() {
        return this.zzflu;
    }
}
