package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzbj {
    private final zzbh zzfzd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbj(zzbh zzbhVar) {
        this.zzfzd = zzbhVar;
    }

    protected abstract void zzajj();

    public final void zzc(zzbi zzbiVar) {
        Lock lock;
        Lock lock2;
        zzbh zzbhVar;
        lock = zzbiVar.zzfwa;
        lock.lock();
        try {
            zzbhVar = zzbiVar.zzfyz;
            if (zzbhVar == this.zzfzd) {
                zzajj();
            }
        } finally {
            lock2 = zzbiVar.zzfwa;
            lock2.unlock();
        }
    }
}
