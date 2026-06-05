package com.google.android.gms.iid;

import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzg implements Runnable {
    private /* synthetic */ zzd zzimn;
    private /* synthetic */ zzf zzimo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzf zzfVar, zzd zzdVar) {
        this.zzimo = zzfVar;
        this.zzimn = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb zzbVar;
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        zzbVar = this.zzimo.zzimm;
        zzbVar.handleIntent(this.zzimn.intent);
        this.zzimn.finish();
    }
}
