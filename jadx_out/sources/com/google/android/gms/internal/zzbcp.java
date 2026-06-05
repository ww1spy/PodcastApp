package com.google.android.gms.internal;

import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbcp extends zzbcr {
    private /* synthetic */ zzbcl zzfkt;
    private /* synthetic */ String zzfkw;
    private /* synthetic */ JSONObject zzfkx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbcp(zzbcl zzbclVar, String str, JSONObject jSONObject) {
        super(zzbclVar);
        this.zzfkt = zzbclVar;
        this.zzfkw = str;
        this.zzfkx = jSONObject;
    }

    @Override // com.google.android.gms.internal.zzbct
    public final void execute() {
        this.zzfkt.zza(this.zzfkw, 6, this.zzfkx, this.zzezb);
    }
}
