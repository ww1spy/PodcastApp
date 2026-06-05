package com.google.android.gms.internal;

import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaih implements Runnable {
    private /* synthetic */ zzamd zzcde;
    private /* synthetic */ Future zzdfl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaih(zzamd zzamdVar, Future future) {
        this.zzcde = zzamdVar;
        this.zzdfl = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcde.isCancelled()) {
            this.zzdfl.cancel(true);
        }
    }
}
