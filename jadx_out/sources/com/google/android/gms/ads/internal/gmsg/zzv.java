package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzahw;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzv implements Runnable {
    private /* synthetic */ JSONObject zzcca;
    private /* synthetic */ zzu zzccb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(zzu zzuVar, JSONObject jSONObject) {
        this.zzccb = zzuVar;
        this.zzcca = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzccb.zzcby.zza("fetchHttpRequestCompleted", this.zzcca);
        zzahw.zzby("Dispatched http response.");
    }
}
