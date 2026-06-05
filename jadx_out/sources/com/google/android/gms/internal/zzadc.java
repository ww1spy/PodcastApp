package com.google.android.gms.internal;

import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzadc implements Runnable {
    private /* synthetic */ zzada zzcve;
    final /* synthetic */ JSONObject zzcvf;
    final /* synthetic */ String zzcvg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadc(zzada zzadaVar, JSONObject jSONObject, String str) {
        this.zzcve = zzadaVar;
        this.zzcvf = jSONObject;
        this.zzcvg = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.js.zzn zznVar;
        com.google.android.gms.ads.internal.js.zzaa zzaaVar;
        zzada zzadaVar = this.zzcve;
        zznVar = zzada.zzcql;
        zzadaVar.zzcvd = zznVar.zzb((zzcv) null);
        zzaaVar = this.zzcve.zzcvd;
        zzaaVar.zza(new zzadd(this), new zzade(this));
    }
}
