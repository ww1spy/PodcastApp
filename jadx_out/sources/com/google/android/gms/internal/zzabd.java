package com.google.android.gms.internal;

import java.lang.Thread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzabd implements Thread.UncaughtExceptionHandler {
    private /* synthetic */ zzabb zzcra;
    private /* synthetic */ Thread.UncaughtExceptionHandler zzcrb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabd(zzabb zzabbVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzcra = zzabbVar;
        this.zzcrb = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.zzcra.zza(thread, th);
                if (this.zzcrb == null) {
                    return;
                }
            } catch (Throwable unused) {
                zzaky.e("AdMob exception reporter failed reporting the exception.");
                if (this.zzcrb == null) {
                    return;
                }
            }
            this.zzcrb.uncaughtException(thread, th);
        } catch (Throwable th2) {
            if (this.zzcrb != null) {
                this.zzcrb.uncaughtException(thread, th);
            }
            throw th2;
        }
    }
}
