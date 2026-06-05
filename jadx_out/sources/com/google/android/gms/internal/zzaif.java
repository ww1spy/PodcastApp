package com.google.android.gms.internal;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzaif implements Callable<Void> {
    private /* synthetic */ Runnable zzdfk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaif(Runnable runnable) {
        this.zzdfk = runnable;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        this.zzdfk.run();
        return null;
    }
}
