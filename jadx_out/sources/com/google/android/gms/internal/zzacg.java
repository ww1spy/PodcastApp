package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.List;
import java.util.concurrent.Future;

@zzabh
/* loaded from: classes.dex */
public final class zzacg {
    public final ApplicationInfo applicationInfo;
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
    public final String zzcsm;
    public final float zzcsn;
    public final int zzcso;
    public final int zzcsp;
    public final boolean zzcsq;
    public final boolean zzcsr;
    public final boolean zzcst;
    public final String zzcsu;
    public final int zzcsv;
    public final Bundle zzcsw;
    public final String zzcsx;
    public final boolean zzcsy;

    @Nullable
    public final Bundle zzcsz;
    public final boolean zzctd;
    public final String zzcte;
    public final List<String> zzctf;
    public final int zzctg;
    public final boolean zzcth;
    public final boolean zzcti;
    public final boolean zzctj;
    public final Future<String> zzctk;
    public final Future<String> zzctl;

    public zzacg(@Nullable Bundle bundle, zzkk zzkkVar, zzko zzkoVar, String str, ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo, String str2, String str3, zzala zzalaVar, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, int i, int i2, float f, String str4, long j, String str5, @Nullable List<String> list3, String str6, zzqh zzqhVar, String str7, float f2, boolean z2, int i3, int i4, boolean z3, boolean z4, Future<String> future, String str8, boolean z5, int i5, Bundle bundle4, String str9, @Nullable zzms zzmsVar, boolean z6, Bundle bundle5, boolean z7, Future<String> future2, List<Integer> list4, String str10, List<String> list5, int i6, boolean z8, boolean z9, boolean z10) {
        List<String> list6;
        this.zzcru = bundle;
        this.zzcrv = zzkkVar;
        this.zzaud = zzkoVar;
        this.zzatx = str;
        this.applicationInfo = applicationInfo;
        this.zzcrw = packageInfo;
        this.zzcry = str2;
        this.zzcrz = str3;
        this.zzatz = zzalaVar;
        this.zzcsa = bundle2;
        this.zzcsd = z;
        this.zzcse = i;
        this.zzcsf = i2;
        this.zzaxz = f;
        if (list == null || list.size() <= 0) {
            this.zzcsb = 0;
            list6 = null;
            this.zzauy = null;
        } else {
            this.zzcsb = 3;
            this.zzauy = list;
            list6 = list2;
        }
        this.zzcsk = list6;
        this.zzcsc = bundle3;
        this.zzcsg = str4;
        this.zzcsh = j;
        this.zzcsi = str5;
        this.zzcsj = list3;
        this.zzatw = str6;
        this.zzauq = zzqhVar;
        this.zzcsm = str7;
        this.zzcsn = f2;
        this.zzcst = z2;
        this.zzcso = i3;
        this.zzcsp = i4;
        this.zzcsq = z3;
        this.zzcsr = z4;
        this.zzctk = future;
        this.zzcsu = str8;
        this.zzcia = z5;
        this.zzcsv = i5;
        this.zzcsw = bundle4;
        this.zzcsx = str9;
        this.zzaus = zzmsVar;
        this.zzcsy = z6;
        this.zzcsz = bundle5;
        this.zzctd = z7;
        this.zzctl = future2;
        this.zzauu = list4;
        this.zzcte = str10;
        this.zzctf = list5;
        this.zzctg = i6;
        this.zzcth = z8;
        this.zzcti = z9;
        this.zzctj = z10;
    }
}
