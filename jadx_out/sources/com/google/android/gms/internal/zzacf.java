package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzacf extends zzbgl {
    public static final Parcelable.Creator<zzacf> CREATOR = new zzach();
    public final ApplicationInfo applicationInfo;
    public final int versionCode;
    public final String zzatw;
    public final String zzatx;
    public final zzala zzatz;
    public final zzko zzaud;
    public final zzqh zzauq;

    @Nullable
    public final zzms zzaus;
    public final List<Integer> zzauu;
    public final List<String> zzauy;
    public final float zzaxz;
    public final boolean zzcia;

    @Nullable
    public final Bundle zzcru;
    public final zzkk zzcrv;

    @Nullable
    public final PackageInfo zzcrw;
    public final String zzcrx;
    public final String zzcry;
    public final String zzcrz;
    public final Bundle zzcsa;
    public final int zzcsb;
    public final Bundle zzcsc;
    public final boolean zzcsd;
    public final int zzcse;
    public final int zzcsf;
    public final String zzcsg;
    public final long zzcsh;
    public final String zzcsi;

    @Nullable
    public final List<String> zzcsj;
    public final List<String> zzcsk;
    public final long zzcsl;
    public final String zzcsm;
    public final float zzcsn;
    public final int zzcso;
    public final int zzcsp;
    public final boolean zzcsq;
    public final boolean zzcsr;
    public final String zzcss;
    public final boolean zzcst;
    public final String zzcsu;
    public final int zzcsv;
    public final Bundle zzcsw;
    public final String zzcsx;
    public final boolean zzcsy;
    public final Bundle zzcsz;

    @Nullable
    public final String zzcta;

    @Nullable
    public final String zzctb;

    @Nullable
    public final String zzctc;
    public final boolean zzctd;
    public final String zzcte;
    public final List<String> zzctf;
    public final int zzctg;
    public final boolean zzcth;
    public final boolean zzcti;
    public final boolean zzctj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacf(int i, Bundle bundle, zzkk zzkkVar, zzko zzkoVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzala zzalaVar, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, zzqh zzqhVar, List<String> list3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, boolean z4, String str9, String str10, boolean z5, int i7, Bundle bundle4, String str11, zzms zzmsVar, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7, List<Integer> list4, String str15, List<String> list5, int i8, boolean z8, boolean z9, boolean z10) {
        this.versionCode = i;
        this.zzcru = bundle;
        this.zzcrv = zzkkVar;
        this.zzaud = zzkoVar;
        this.zzatx = str;
        this.applicationInfo = applicationInfo;
        this.zzcrw = packageInfo;
        this.zzcrx = str2;
        this.zzcry = str3;
        this.zzcrz = str4;
        this.zzatz = zzalaVar;
        this.zzcsa = bundle2;
        this.zzcsb = i2;
        this.zzauy = list;
        this.zzcsk = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzcsc = bundle3;
        this.zzcsd = z;
        this.zzcse = i3;
        this.zzcsf = i4;
        this.zzaxz = f;
        this.zzcsg = str5;
        this.zzcsh = j;
        this.zzcsi = str6;
        this.zzcsj = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzatw = str7;
        this.zzauq = zzqhVar;
        this.zzcsl = j2;
        this.zzcsm = str8;
        this.zzcsn = f2;
        this.zzcst = z2;
        this.zzcso = i5;
        this.zzcsp = i6;
        this.zzcsq = z3;
        this.zzcsr = z4;
        this.zzcss = str9;
        this.zzcsu = str10;
        this.zzcia = z5;
        this.zzcsv = i7;
        this.zzcsw = bundle4;
        this.zzcsx = str11;
        this.zzaus = zzmsVar;
        this.zzcsy = z6;
        this.zzcsz = bundle5;
        this.zzcta = str12;
        this.zzctb = str13;
        this.zzctc = str14;
        this.zzctd = z7;
        this.zzauu = list4;
        this.zzcte = str15;
        this.zzctf = list5;
        this.zzctg = i8;
        this.zzcth = z8;
        this.zzcti = z9;
        this.zzctj = z10;
    }

    private zzacf(@Nullable Bundle bundle, zzkk zzkkVar, zzko zzkoVar, String str, ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo, String str2, String str3, String str4, zzala zzalaVar, Bundle bundle2, int i, List<String> list, List<String> list2, Bundle bundle3, boolean z, int i2, int i3, float f, String str5, long j, String str6, @Nullable List<String> list3, String str7, zzqh zzqhVar, long j2, String str8, float f2, boolean z2, int i4, int i5, boolean z3, boolean z4, String str9, String str10, boolean z5, int i6, Bundle bundle4, String str11, @Nullable zzms zzmsVar, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7, List<Integer> list4, String str15, List<String> list5, int i7, boolean z8, boolean z9, boolean z10) {
        this(24, bundle, zzkkVar, zzkoVar, str, applicationInfo, packageInfo, str2, str3, str4, zzalaVar, bundle2, i, list, bundle3, z, i2, i3, f, str5, j, str6, list3, str7, zzqhVar, list2, j2, str8, f2, z2, i4, i5, z3, z4, str9, str10, z5, i6, bundle4, str11, zzmsVar, z6, bundle5, str12, str13, str14, z7, list4, str15, list5, i7, z8, z9, z10);
    }

    public zzacf(zzacg zzacgVar, long j, String str, String str2, String str3) {
        this(zzacgVar.zzcru, zzacgVar.zzcrv, zzacgVar.zzaud, zzacgVar.zzatx, zzacgVar.applicationInfo, zzacgVar.zzcrw, (String) zzali.zza(zzacgVar.zzctl, ""), zzacgVar.zzcry, zzacgVar.zzcrz, zzacgVar.zzatz, zzacgVar.zzcsa, zzacgVar.zzcsb, zzacgVar.zzauy, zzacgVar.zzcsk, zzacgVar.zzcsc, zzacgVar.zzcsd, zzacgVar.zzcse, zzacgVar.zzcsf, zzacgVar.zzaxz, zzacgVar.zzcsg, zzacgVar.zzcsh, zzacgVar.zzcsi, zzacgVar.zzcsj, zzacgVar.zzatw, zzacgVar.zzauq, j, zzacgVar.zzcsm, zzacgVar.zzcsn, zzacgVar.zzcst, zzacgVar.zzcso, zzacgVar.zzcsp, zzacgVar.zzcsq, zzacgVar.zzcsr, (String) zzali.zza(zzacgVar.zzctk, "", 1L, TimeUnit.SECONDS), zzacgVar.zzcsu, zzacgVar.zzcia, zzacgVar.zzcsv, zzacgVar.zzcsw, zzacgVar.zzcsx, zzacgVar.zzaus, zzacgVar.zzcsy, zzacgVar.zzcsz, str, str2, str3, zzacgVar.zzctd, zzacgVar.zzauu, zzacgVar.zzcte, zzacgVar.zzctf, zzacgVar.zzctg, zzacgVar.zzcth, zzacgVar.zzcti, zzacgVar.zzctj);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.versionCode);
        zzbgo.zza(parcel, 2, this.zzcru, false);
        zzbgo.zza(parcel, 3, (Parcelable) this.zzcrv, i, false);
        zzbgo.zza(parcel, 4, (Parcelable) this.zzaud, i, false);
        zzbgo.zza(parcel, 5, this.zzatx, false);
        zzbgo.zza(parcel, 6, (Parcelable) this.applicationInfo, i, false);
        zzbgo.zza(parcel, 7, (Parcelable) this.zzcrw, i, false);
        zzbgo.zza(parcel, 8, this.zzcrx, false);
        zzbgo.zza(parcel, 9, this.zzcry, false);
        zzbgo.zza(parcel, 10, this.zzcrz, false);
        zzbgo.zza(parcel, 11, (Parcelable) this.zzatz, i, false);
        zzbgo.zza(parcel, 12, this.zzcsa, false);
        zzbgo.zzc(parcel, 13, this.zzcsb);
        zzbgo.zzb(parcel, 14, this.zzauy, false);
        zzbgo.zza(parcel, 15, this.zzcsc, false);
        zzbgo.zza(parcel, 16, this.zzcsd);
        zzbgo.zzc(parcel, 18, this.zzcse);
        zzbgo.zzc(parcel, 19, this.zzcsf);
        zzbgo.zza(parcel, 20, this.zzaxz);
        zzbgo.zza(parcel, 21, this.zzcsg, false);
        zzbgo.zza(parcel, 25, this.zzcsh);
        zzbgo.zza(parcel, 26, this.zzcsi, false);
        zzbgo.zzb(parcel, 27, this.zzcsj, false);
        zzbgo.zza(parcel, 28, this.zzatw, false);
        zzbgo.zza(parcel, 29, (Parcelable) this.zzauq, i, false);
        zzbgo.zzb(parcel, 30, this.zzcsk, false);
        zzbgo.zza(parcel, 31, this.zzcsl);
        zzbgo.zza(parcel, 33, this.zzcsm, false);
        zzbgo.zza(parcel, 34, this.zzcsn);
        zzbgo.zzc(parcel, 35, this.zzcso);
        zzbgo.zzc(parcel, 36, this.zzcsp);
        zzbgo.zza(parcel, 37, this.zzcsq);
        zzbgo.zza(parcel, 38, this.zzcsr);
        zzbgo.zza(parcel, 39, this.zzcss, false);
        zzbgo.zza(parcel, 40, this.zzcst);
        zzbgo.zza(parcel, 41, this.zzcsu, false);
        zzbgo.zza(parcel, 42, this.zzcia);
        zzbgo.zzc(parcel, 43, this.zzcsv);
        zzbgo.zza(parcel, 44, this.zzcsw, false);
        zzbgo.zza(parcel, 45, this.zzcsx, false);
        zzbgo.zza(parcel, 46, (Parcelable) this.zzaus, i, false);
        zzbgo.zza(parcel, 47, this.zzcsy);
        zzbgo.zza(parcel, 48, this.zzcsz, false);
        zzbgo.zza(parcel, 49, this.zzcta, false);
        zzbgo.zza(parcel, 50, this.zzctb, false);
        zzbgo.zza(parcel, 51, this.zzctc, false);
        zzbgo.zza(parcel, 52, this.zzctd);
        zzbgo.zza(parcel, 53, this.zzauu, false);
        zzbgo.zza(parcel, 54, this.zzcte, false);
        zzbgo.zzb(parcel, 55, this.zzctf, false);
        zzbgo.zzc(parcel, 56, this.zzctg);
        zzbgo.zza(parcel, 57, this.zzcth);
        zzbgo.zza(parcel, 58, this.zzcti);
        zzbgo.zza(parcel, 59, this.zzctj);
        zzbgo.zzai(parcel, zze);
    }
}
