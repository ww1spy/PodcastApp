package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

@zzabh
/* loaded from: classes.dex */
public final class zzacy extends zzbgl {
    public static final Parcelable.Creator<zzacy> CREATOR = new zzacz();
    private ApplicationInfo applicationInfo;
    private String packageName;
    private PackageInfo zzcrw;
    private List<String> zzcsj;
    private String zzcss;
    private Bundle zzcuu;
    private zzala zzcuv;
    private boolean zzcuw;
    private String zzcux;

    public zzacy(Bundle bundle, zzala zzalaVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, boolean z, String str3) {
        this.zzcuu = bundle;
        this.zzcuv = zzalaVar;
        this.packageName = str;
        this.applicationInfo = applicationInfo;
        this.zzcsj = list;
        this.zzcrw = packageInfo;
        this.zzcss = str2;
        this.zzcuw = z;
        this.zzcux = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 1, this.zzcuu, false);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzcuv, i, false);
        zzbgo.zza(parcel, 3, (Parcelable) this.applicationInfo, i, false);
        zzbgo.zza(parcel, 4, this.packageName, false);
        zzbgo.zzb(parcel, 5, this.zzcsj, false);
        zzbgo.zza(parcel, 6, (Parcelable) this.zzcrw, i, false);
        zzbgo.zza(parcel, 7, this.zzcss, false);
        zzbgo.zza(parcel, 8, this.zzcuw);
        zzbgo.zza(parcel, 9, this.zzcux, false);
        zzbgo.zzai(parcel, zze);
    }
}
