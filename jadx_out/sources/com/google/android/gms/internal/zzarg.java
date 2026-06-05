package com.google.android.gms.internal;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzarg implements Callable<Void> {
    private /* synthetic */ zzaqz zzdyj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarg(zzaqz zzaqzVar) {
        this.zzdyj = zzaqzVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zzzj();
        return null;
    }
}
