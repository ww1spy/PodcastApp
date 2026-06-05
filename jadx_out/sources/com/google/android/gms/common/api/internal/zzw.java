package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzw implements Runnable {
    private /* synthetic */ zzv zzfwc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(zzv zzvVar) {
        this.zzfwc = zzvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.zzfwc.zzfwa;
        lock.lock();
        try {
            this.zzfwc.zzait();
        } finally {
            lock2 = this.zzfwc.zzfwa;
            lock2.unlock();
        }
    }
}
