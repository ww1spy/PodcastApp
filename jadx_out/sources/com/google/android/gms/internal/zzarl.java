package com.google.android.gms.internal;

import java.lang.Thread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzarl implements Thread.UncaughtExceptionHandler {
    private /* synthetic */ zzark zzdzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarl(zzark zzarkVar) {
        this.zzdzg = zzarkVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        zzatd zzym = this.zzdzg.zzym();
        if (zzym != null) {
            zzym.zze("Job execution failed", th);
        }
    }
}
