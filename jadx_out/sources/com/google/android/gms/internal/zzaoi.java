package com.google.android.gms.internal;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaoi implements Runnable {
    private /* synthetic */ View val$view;
    private /* synthetic */ zzagq zzdps;
    private /* synthetic */ int zzdpt;
    private /* synthetic */ zzaog zzdpu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaoi(zzaog zzaogVar, View view, zzagq zzagqVar, int i) {
        this.zzdpu = zzaogVar;
        this.val$view = view;
        this.zzdps = zzagqVar;
        this.zzdpt = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdpu.zza(this.val$view, this.zzdps, this.zzdpt - 1);
    }
}
