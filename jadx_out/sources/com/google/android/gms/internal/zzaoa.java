package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaoa implements Runnable {
    private /* synthetic */ String zzcrd;
    private /* synthetic */ String zzdoq;
    private /* synthetic */ int zzdos;
    private /* synthetic */ zzany zzdou;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaoa(zzany zzanyVar, String str, String str2, int i) {
        this.zzdou = zzanyVar;
        this.zzcrd = str;
        this.zzdoq = str2;
        this.zzdos = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.zzcrd);
        hashMap.put("cachedSrc", this.zzdoq);
        hashMap.put("totalBytes", Integer.toString(this.zzdos));
        this.zzdou.zza("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
