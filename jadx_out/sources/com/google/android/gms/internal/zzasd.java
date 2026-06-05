package com.google.android.gms.internal;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzasd implements Callable<String> {
    private /* synthetic */ zzasc zzeau;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasd(zzasc zzascVar) {
        this.zzeau = zzascVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.zzeau.zzzr();
    }
}
