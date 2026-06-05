package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdkj {
    private final zzbt zzktb;
    private final Map<String, zzbt> zzlce;

    private zzdkj(Map<String, zzbt> map, zzbt zzbtVar) {
        this.zzlce = map;
        this.zzktb = zzbtVar;
    }

    public static zzdkk zzbku() {
        return new zzdkk();
    }

    public final String toString() {
        String valueOf = String.valueOf(Collections.unmodifiableMap(this.zzlce));
        String valueOf2 = String.valueOf(this.zzktb);
        StringBuilder sb = new StringBuilder(32 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
        sb.append("Properties: ");
        sb.append(valueOf);
        sb.append(" pushAfterEvaluate: ");
        sb.append(valueOf2);
        return sb.toString();
    }

    public final void zza(String str, zzbt zzbtVar) {
        this.zzlce.put(str, zzbtVar);
    }

    public final zzbt zzbhr() {
        return this.zzktb;
    }

    public final Map<String, zzbt> zzbkd() {
        return Collections.unmodifiableMap(this.zzlce);
    }
}
