package com.google.android.gms.internal;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzwa implements Callable<zzvw> {
    private /* synthetic */ zzvt zzcjr;
    private /* synthetic */ zzvz zzcjs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwa(zzvz zzvzVar, zzvt zzvtVar) {
        this.zzcjs = zzvzVar;
        this.zzcjr = zzvtVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: zzmo, reason: merged with bridge method [inline-methods] */
    public final zzvw call() throws Exception {
        Object obj;
        boolean z;
        long j;
        long j2;
        obj = this.zzcjs.mLock;
        synchronized (obj) {
            z = this.zzcjs.zzcjn;
            if (z) {
                return null;
            }
            zzvt zzvtVar = this.zzcjr;
            j = this.zzcjs.mStartTime;
            j2 = this.zzcjs.zzcjl;
            return zzvtVar.zza(j, j2);
        }
    }
}
