package com.google.android.gms.internal;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzail implements Runnable {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzaij zzdfv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzail(zzaij zzaijVar, Context context) {
        this.zzdfv = zzaijVar;
        this.val$context = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.zzdfv.mLock;
        synchronized (obj) {
            this.zzdfv.zzddt = zzaij.zzaj(this.val$context);
            obj2 = this.zzdfv.mLock;
            obj2.notifyAll();
        }
    }
}
