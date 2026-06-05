package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaig implements Runnable {
    private /* synthetic */ Callable val$callable;
    private /* synthetic */ zzamd zzcde;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaig(zzamd zzamdVar, Callable callable) {
        this.zzcde = zzamdVar;
        this.val$callable = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Process.setThreadPriority(10);
            this.zzcde.set(this.val$callable.call());
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AdThreadPool.submit");
            this.zzcde.setException(e);
        }
    }
}
