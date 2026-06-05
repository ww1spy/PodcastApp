package com.google.android.gms.internal;

import java.lang.Thread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzabc implements Thread.UncaughtExceptionHandler {
    private /* synthetic */ Thread.UncaughtExceptionHandler zzcqz;
    private /* synthetic */ zzabb zzcra;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabc(zzabb zzabbVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzcra = zzabbVar;
        this.zzcqz = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.zzcra.zza(thread, th);
                if (this.zzcqz == null) {
                    return;
                }
            } catch (Throwable unused) {
                zzaky.e("AdMob exception reporter failed reporting the exception.");
                if (this.zzcqz == null) {
                    return;
                }
            }
            this.zzcqz.uncaughtException(thread, th);
        } catch (Throwable th2) {
            if (this.zzcqz != null) {
                this.zzcqz.uncaughtException(thread, th);
            }
            throw th2;
        }
    }
}
