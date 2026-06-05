package com.google.android.gms.internal;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzase implements Callable<String> {
    private /* synthetic */ zzasc zzeau;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzase(zzasc zzascVar) {
        this.zzeau = zzascVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        String zzzs;
        zzzs = this.zzeau.zzzs();
        return zzzs;
    }
}
