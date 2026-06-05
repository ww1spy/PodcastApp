package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
abstract class zzay implements Runnable {
    private /* synthetic */ zzao zzfxt;

    private zzay(zzao zzaoVar) {
        this.zzfxt = zzaoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzay(zzao zzaoVar, zzap zzapVar) {
        this(zzaoVar);
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        Lock lock;
        Lock lock2;
        zzbi zzbiVar;
        lock = this.zzfxt.zzfwa;
        lock.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    zzajj();
                }
            } catch (RuntimeException e) {
                zzbiVar = this.zzfxt.zzfxd;
                zzbiVar.zzb(e);
            }
        } finally {
            lock2 = this.zzfxt.zzfwa;
            lock2.unlock();
        }
    }

    @WorkerThread
    protected abstract void zzajj();
}
