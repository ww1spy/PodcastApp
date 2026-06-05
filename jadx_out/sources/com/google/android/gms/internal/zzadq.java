package com.google.android.gms.internal;

import java.util.concurrent.Future;

/* loaded from: classes.dex */
final class zzadq implements Runnable {
    private /* synthetic */ Future zzcwh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadq(zzadn zzadnVar, Future future) {
        this.zzcwh = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcwh.isDone()) {
            return;
        }
        this.zzcwh.cancel(true);
    }
}
