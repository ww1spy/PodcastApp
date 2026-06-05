package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzaof;
import io.fabric.sdk.android.services.network.HttpRequest;

/* loaded from: classes.dex */
final class zzi implements Runnable {
    private /* synthetic */ zze zzcfc;
    private /* synthetic */ String zzcfd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(zze zzeVar, String str) {
        this.zzcfc = zzeVar;
        this.zzcfd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaof zzaofVar;
        zzaofVar = this.zzcfc.zzcct;
        zzaofVar.loadData(this.zzcfd, "text/html", HttpRequest.CHARSET_UTF8);
    }
}
