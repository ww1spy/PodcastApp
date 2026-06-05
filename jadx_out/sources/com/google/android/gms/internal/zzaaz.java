package com.google.android.gms.internal;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzaaz implements zzalf<zzaof> {
    private /* synthetic */ String val$message;
    private /* synthetic */ JSONObject zzcqu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaaz(zzaar zzaarVar, String str, JSONObject jSONObject) {
        this.val$message = str;
        this.zzcqu = jSONObject;
    }

    @Override // com.google.android.gms.internal.zzalf
    public final /* synthetic */ void onSuccess(zzaof zzaofVar) {
        zzaofVar.zza(this.val$message, this.zzcqu);
    }

    @Override // com.google.android.gms.internal.zzalf
    public final void zzb(Throwable th) {
    }
}
