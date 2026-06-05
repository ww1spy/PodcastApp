package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahd {
    public final int errorCode;
    public final int orientation;
    public final boolean zzaqw;
    public final List<String> zzchw;
    public final List<String> zzchx;

    @Nullable
    public final List<String> zzchz;
    public final long zzcic;

    @Nullable
    public final zzvp zzcje;

    @Nullable
    public final zzwi zzcjf;

    @Nullable
    public final String zzcjg;

    @Nullable
    public final zzvs zzcjh;

    @Nullable
    public final zzaof zzcnm;
    public final zzkk zzcrv;
    public final String zzcry;
    private long zzctn;
    public final boolean zzcto;
    private long zzctp;
    public final List<String> zzctq;
    public final String zzctt;

    @Nullable
    public final zzagd zzcuc;

    @Nullable
    public final List<String> zzcue;
    public final boolean zzcuf;
    private zzacl zzcug;
    public final String zzcuj;
    public final JSONObject zzdch;
    public boolean zzdci;
    public final zzvq zzdcj;

    @Nullable
    public final String zzdck;
    public final zzko zzdcl;

    @Nullable
    public final List<String> zzdcm;
    public final long zzdcn;
    public final long zzdco;

    @Nullable
    public final zzpx zzdcp;
    public boolean zzdcq;
    public boolean zzdcr;
    public boolean zzdcs;
    public boolean zzdct;
    public final zziu zzdcu;
    public final boolean zzdcv;

    public zzahd(zzahe zzaheVar, @Nullable zzaof zzaofVar, @Nullable zzvp zzvpVar, @Nullable zzwi zzwiVar, @Nullable String str, @Nullable zzvs zzvsVar, @Nullable zzpx zzpxVar, @Nullable String str2) {
        this(zzaheVar.zzcvm.zzcrv, null, zzaheVar.zzdcw.zzchw, zzaheVar.errorCode, zzaheVar.zzdcw.zzchx, zzaheVar.zzdcw.zzctq, zzaheVar.zzdcw.orientation, zzaheVar.zzdcw.zzcic, zzaheVar.zzcvm.zzcry, zzaheVar.zzdcw.zzcto, null, null, null, zzaheVar.zzdcj, null, zzaheVar.zzdcw.zzctp, zzaheVar.zzaud, zzaheVar.zzdcw.zzctn, zzaheVar.zzdcn, zzaheVar.zzdco, zzaheVar.zzdcw.zzctt, zzaheVar.zzdch, null, zzaheVar.zzdcw.zzcuc, zzaheVar.zzdcw.zzcud, zzaheVar.zzdcw.zzcud, zzaheVar.zzdcw.zzcuf, zzaheVar.zzdcw.zzcug, null, zzaheVar.zzdcw.zzchz, zzaheVar.zzdcw.zzcuj, zzaheVar.zzdcu, zzaheVar.zzdcw.zzaqw, zzaheVar.zzdcv);
    }

    public zzahd(zzkk zzkkVar, @Nullable zzaof zzaofVar, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, @Nullable zzvp zzvpVar, @Nullable zzwi zzwiVar, @Nullable String str2, zzvq zzvqVar, @Nullable zzvs zzvsVar, long j2, zzko zzkoVar, long j3, long j4, long j5, String str3, JSONObject jSONObject, @Nullable zzpx zzpxVar, zzagd zzagdVar, List<String> list4, List<String> list5, boolean z2, zzacl zzaclVar, @Nullable String str4, List<String> list6, String str5, zziu zziuVar, boolean z3, boolean z4) {
        this.zzdcq = false;
        this.zzdcr = false;
        this.zzdcs = false;
        this.zzdct = false;
        this.zzcrv = zzkkVar;
        this.zzcnm = zzaofVar;
        this.zzchw = zzq(list);
        this.errorCode = i;
        this.zzchx = zzq(list2);
        this.zzctq = zzq(list3);
        this.orientation = i2;
        this.zzcic = j;
        this.zzcry = str;
        this.zzcto = z;
        this.zzcje = zzvpVar;
        this.zzcjf = zzwiVar;
        this.zzcjg = str2;
        this.zzdcj = zzvqVar;
        this.zzcjh = zzvsVar;
        this.zzctp = j2;
        this.zzdcl = zzkoVar;
        this.zzctn = j3;
        this.zzdcn = j4;
        this.zzdco = j5;
        this.zzctt = str3;
        this.zzdch = jSONObject;
        this.zzdcp = zzpxVar;
        this.zzcuc = zzagdVar;
        this.zzdcm = zzq(list4);
        this.zzcue = zzq(list5);
        this.zzcuf = z2;
        this.zzcug = zzaclVar;
        this.zzdck = str4;
        this.zzchz = zzq(list6);
        this.zzcuj = str5;
        this.zzdcu = zziuVar;
        this.zzaqw = z3;
        this.zzdcv = z4;
    }

    @Nullable
    private static <T> List<T> zzq(@Nullable List<T> list) {
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public final boolean zzfz() {
        if (this.zzcnm == null || this.zzcnm.zzua() == null) {
            return false;
        }
        return this.zzcnm.zzua().zzfz();
    }
}
