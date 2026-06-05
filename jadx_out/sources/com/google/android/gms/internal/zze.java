package com.google.android.gms.internal;

import java.util.concurrent.BlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zze implements Runnable {
    private /* synthetic */ zzr zzn;
    private /* synthetic */ zzd zzo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zzd zzdVar, zzr zzrVar) {
        this.zzo = zzdVar;
        this.zzn = zzrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.zzo.zzi;
            blockingQueue.put(this.zzn);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
