package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzj implements Executor {
    private /* synthetic */ Handler val$handler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzi zziVar, Handler handler) {
        this.val$handler = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.val$handler.post(runnable);
    }
}
