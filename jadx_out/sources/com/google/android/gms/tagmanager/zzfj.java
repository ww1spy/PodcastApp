package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzdkj;
import com.google.android.gms.internal.zzdkn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class zzfj {
    private zzdkj zzktg;
    private final Set<zzdkn> zzkss = new HashSet();
    private final Map<zzdkn, List<zzdkj>> zzktc = new HashMap();
    private final Map<zzdkn, List<String>> zzkte = new HashMap();
    private final Map<zzdkn, List<zzdkj>> zzktd = new HashMap();
    private final Map<zzdkn, List<String>> zzktf = new HashMap();

    public final void zza(zzdkn zzdknVar) {
        this.zzkss.add(zzdknVar);
    }

    public final void zza(zzdkn zzdknVar, zzdkj zzdkjVar) {
        List<zzdkj> list = this.zzktc.get(zzdknVar);
        if (list == null) {
            list = new ArrayList<>();
            this.zzktc.put(zzdknVar, list);
        }
        list.add(zzdkjVar);
    }

    public final void zza(zzdkn zzdknVar, String str) {
        List<String> list = this.zzkte.get(zzdknVar);
        if (list == null) {
            list = new ArrayList<>();
            this.zzkte.put(zzdknVar, list);
        }
        list.add(str);
    }

    public final void zzb(zzdkj zzdkjVar) {
        this.zzktg = zzdkjVar;
    }

    public final void zzb(zzdkn zzdknVar, zzdkj zzdkjVar) {
        List<zzdkj> list = this.zzktd.get(zzdknVar);
        if (list == null) {
            list = new ArrayList<>();
            this.zzktd.put(zzdknVar, list);
        }
        list.add(zzdkjVar);
    }

    public final void zzb(zzdkn zzdknVar, String str) {
        List<String> list = this.zzktf.get(zzdknVar);
        if (list == null) {
            list = new ArrayList<>();
            this.zzktf.put(zzdknVar, list);
        }
        list.add(str);
    }

    public final Set<zzdkn> zzbhs() {
        return this.zzkss;
    }

    public final Map<zzdkn, List<zzdkj>> zzbht() {
        return this.zzktc;
    }

    public final Map<zzdkn, List<String>> zzbhu() {
        return this.zzkte;
    }

    public final Map<zzdkn, List<String>> zzbhv() {
        return this.zzktf;
    }

    public final Map<zzdkn, List<zzdkj>> zzbhw() {
        return this.zzktd;
    }

    public final zzdkj zzbhx() {
        return this.zzktg;
    }
}
