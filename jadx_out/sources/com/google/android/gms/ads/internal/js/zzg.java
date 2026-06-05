package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzaof;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzg implements Runnable {
    private /* synthetic */ String zzcfa;
    private /* synthetic */ JSONObject zzcfb;
    private /* synthetic */ zze zzcfc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zze zzeVar, String str, JSONObject jSONObject) {
        this.zzcfc = zzeVar;
        this.zzcfa = str;
        this.zzcfb = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaof zzaofVar;
        zzaofVar = this.zzcfc.zzcct;
        zzaofVar.zzb(this.zzcfa, this.zzcfb);
    }
}
