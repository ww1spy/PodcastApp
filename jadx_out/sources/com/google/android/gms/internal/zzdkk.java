package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdkk {
    private zzbt zzktb;
    private final Map<String, zzbt> zzlce;

    private zzdkk() {
        this.zzlce = new HashMap();
    }

    public final zzdkk zzb(String str, zzbt zzbtVar) {
        this.zzlce.put(str, zzbtVar);
        return this;
    }

    public final zzdkj zzbkv() {
        return new zzdkj(this.zzlce, this.zzktb);
    }

    public final zzdkk zzn(zzbt zzbtVar) {
        this.zzktb = zzbtVar;
        return this;
    }
}
