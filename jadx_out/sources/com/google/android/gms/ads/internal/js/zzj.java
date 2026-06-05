package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzaof;

/* loaded from: classes.dex */
final class zzj implements Runnable {
    private /* synthetic */ zze zzcfc;
    private /* synthetic */ String zzcfe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zze zzeVar, String str) {
        this.zzcfc = zzeVar;
        this.zzcfe = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaof zzaofVar;
        zzaofVar = this.zzcfc.zzcct;
        zzaofVar.loadUrl(this.zzcfe);
    }
}
