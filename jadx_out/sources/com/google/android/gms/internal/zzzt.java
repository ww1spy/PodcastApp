package com.google.android.gms.internal;

import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zzzt implements Runnable {
    private /* synthetic */ CountDownLatch zzanq;
    private /* synthetic */ zzzs zzcoq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzt(zzzs zzzsVar, CountDownLatch countDownLatch) {
        this.zzcoq = zzzsVar;
        this.zzanq = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaof zzaofVar;
        synchronized (this.zzcoq.zzcoe) {
            zzzs zzzsVar = this.zzcoq;
            zzaofVar = this.zzcoq.zzcct;
            zzzsVar.zzcop = com.google.android.gms.ads.internal.zzar.zza(zzaofVar, this.zzcoq.zzcoo, this.zzanq);
        }
    }
}
