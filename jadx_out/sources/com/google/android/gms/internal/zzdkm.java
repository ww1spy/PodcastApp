package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdkm {
    private String zzfli;
    private final List<zzdkn> zzlcb;
    private final Map<String, List<zzdkj>> zzlcc;
    private int zzlcd;

    private zzdkm() {
        this.zzlcb = new ArrayList();
        this.zzlcc = new HashMap();
        this.zzfli = "";
        this.zzlcd = 0;
    }

    public final zzdkm zzb(zzdkn zzdknVar) {
        this.zzlcb.add(zzdknVar);
        return this;
    }

    public final zzdkl zzbky() {
        return new zzdkl(this.zzlcb, this.zzlcc, this.zzfli, this.zzlcd);
    }

    public final zzdkm zzc(zzdkj zzdkjVar) {
        String zzd = com.google.android.gms.tagmanager.zzgk.zzd(zzdkjVar.zzbkd().get(zzbi.INSTANCE_NAME.toString()));
        List<zzdkj> list = this.zzlcc.get(zzd);
        if (list == null) {
            list = new ArrayList<>();
            this.zzlcc.put(zzd, list);
        }
        list.add(zzdkjVar);
        return this;
    }

    public final zzdkm zzfk(int i) {
        this.zzlcd = i;
        return this;
    }

    public final zzdkm zznn(String str) {
        this.zzfli = str;
        return this;
    }
}
