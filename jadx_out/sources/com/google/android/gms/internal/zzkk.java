package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.Arrays;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzkk extends zzbgl {
    public static final Parcelable.Creator<zzkk> CREATOR = new zzkm();
    public final Bundle extras;
    public final int versionCode;
    public final long zzbgv;
    public final int zzbgw;
    public final List<String> zzbgx;
    public final boolean zzbgy;
    public final int zzbgz;
    public final boolean zzbha;
    public final String zzbhb;
    public final zzno zzbhc;
    public final Location zzbhd;
    public final String zzbhe;
    public final Bundle zzbhf;
    public final Bundle zzbhg;
    public final List<String> zzbhh;
    public final String zzbhi;
    public final String zzbhj;
    public final boolean zzbhk;

    public zzkk(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzno zznoVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3) {
        this.versionCode = i;
        this.zzbgv = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzbgw = i2;
        this.zzbgx = list;
        this.zzbgy = z;
        this.zzbgz = i3;
        this.zzbha = z2;
        this.zzbhb = str;
        this.zzbhc = zznoVar;
        this.zzbhd = location;
        this.zzbhe = str2;
        this.zzbhf = bundle2 == null ? new Bundle() : bundle2;
        this.zzbhg = bundle3;
        this.zzbhh = list2;
        this.zzbhi = str3;
        this.zzbhj = str4;
        this.zzbhk = z3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzkk)) {
            return false;
        }
        zzkk zzkkVar = (zzkk) obj;
        return this.versionCode == zzkkVar.versionCode && this.zzbgv == zzkkVar.zzbgv && com.google.android.gms.common.internal.zzbg.equal(this.extras, zzkkVar.extras) && this.zzbgw == zzkkVar.zzbgw && com.google.android.gms.common.internal.zzbg.equal(this.zzbgx, zzkkVar.zzbgx) && this.zzbgy == zzkkVar.zzbgy && this.zzbgz == zzkkVar.zzbgz && this.zzbha == zzkkVar.zzbha && com.google.android.gms.common.internal.zzbg.equal(this.zzbhb, zzkkVar.zzbhb) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhc, zzkkVar.zzbhc) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhd, zzkkVar.zzbhd) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhe, zzkkVar.zzbhe) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhf, zzkkVar.zzbhf) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhg, zzkkVar.zzbhg) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhh, zzkkVar.zzbhh) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhi, zzkkVar.zzbhi) && com.google.android.gms.common.internal.zzbg.equal(this.zzbhj, zzkkVar.zzbhj) && this.zzbhk == zzkkVar.zzbhk;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.versionCode), Long.valueOf(this.zzbgv), this.extras, Integer.valueOf(this.zzbgw), this.zzbgx, Boolean.valueOf(this.zzbgy), Integer.valueOf(this.zzbgz), Boolean.valueOf(this.zzbha), this.zzbhb, this.zzbhc, this.zzbhd, this.zzbhe, this.zzbhf, this.zzbhg, this.zzbhh, this.zzbhi, this.zzbhj, Boolean.valueOf(this.zzbhk)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.versionCode);
        zzbgo.zza(parcel, 2, this.zzbgv);
        zzbgo.zza(parcel, 3, this.extras, false);
        zzbgo.zzc(parcel, 4, this.zzbgw);
        zzbgo.zzb(parcel, 5, this.zzbgx, false);
        zzbgo.zza(parcel, 6, this.zzbgy);
        zzbgo.zzc(parcel, 7, this.zzbgz);
        zzbgo.zza(parcel, 8, this.zzbha);
        zzbgo.zza(parcel, 9, this.zzbhb, false);
        zzbgo.zza(parcel, 10, (Parcelable) this.zzbhc, i, false);
        zzbgo.zza(parcel, 11, (Parcelable) this.zzbhd, i, false);
        zzbgo.zza(parcel, 12, this.zzbhe, false);
        zzbgo.zza(parcel, 13, this.zzbhf, false);
        zzbgo.zza(parcel, 14, this.zzbhg, false);
        zzbgo.zzb(parcel, 15, this.zzbhh, false);
        zzbgo.zza(parcel, 16, this.zzbhi, false);
        zzbgo.zza(parcel, 17, this.zzbhj, false);
        zzbgo.zza(parcel, 18, this.zzbhk);
        zzbgo.zzai(parcel, zze);
    }

    public final zzkk zzhz() {
        Bundle bundle = this.zzbhf.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle == null) {
            bundle = this.extras;
            this.zzbhf.putBundle("com.google.ads.mediation.admob.AdMobAdapter", this.extras);
        }
        return new zzkk(this.versionCode, this.zzbgv, bundle, this.zzbgw, this.zzbgx, this.zzbgy, this.zzbgz, this.zzbha, this.zzbhb, this.zzbhc, this.zzbhd, this.zzbhe, this.zzbhf, this.zzbhg, this.zzbhh, this.zzbhi, this.zzbhj, this.zzbhk);
    }
}
