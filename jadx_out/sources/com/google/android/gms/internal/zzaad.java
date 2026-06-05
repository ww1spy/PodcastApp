package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaad implements Runnable {
    private /* synthetic */ AtomicInteger zzcps;
    private /* synthetic */ int zzcpt;
    private /* synthetic */ zzamd zzcpu;
    private /* synthetic */ List zzcpv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaad(AtomicInteger atomicInteger, int i, zzamd zzamdVar, List list) {
        this.zzcps = atomicInteger;
        this.zzcpt = i;
        this.zzcpu = zzamdVar;
        this.zzcpv = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List zzm;
        if (this.zzcps.incrementAndGet() >= this.zzcpt) {
            try {
                zzamd zzamdVar = this.zzcpu;
                zzm = zzzy.zzm(this.zzcpv);
                zzamdVar.set(zzm);
            } catch (InterruptedException | ExecutionException e) {
                zzahw.zzc("Unable to convert list of futures to a future of list", e);
            }
        }
    }
}
