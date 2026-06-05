package com.google.android.gms.internal;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzgk implements zzami<com.google.android.gms.ads.internal.js.zzaj> {
    private /* synthetic */ JSONObject zzaxg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgk(zzgh zzghVar, JSONObject jSONObject) {
        this.zzaxg = jSONObject;
    }

    @Override // com.google.android.gms.internal.zzami
    public final /* synthetic */ void zze(com.google.android.gms.ads.internal.js.zzaj zzajVar) {
        zzajVar.zzb("AFMA_updateActiveView", this.zzaxg);
    }
}
