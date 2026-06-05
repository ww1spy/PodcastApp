package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaaa implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzzy zzcpf;
    private /* synthetic */ zzpo zzcpg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaaa(zzzy zzzyVar, zzpo zzpoVar) {
        this.zzcpf = zzzyVar;
        this.zzcpg = zzpoVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        this.zzcpf.zzc(this.zzcpg, map.get("asset"));
    }
}
