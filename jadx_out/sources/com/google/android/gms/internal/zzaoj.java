package com.google.android.gms.internal;

import android.view.View;

/* loaded from: classes.dex */
final class zzaoj implements View.OnAttachStateChangeListener {
    private /* synthetic */ zzagq zzdps;
    private /* synthetic */ zzaog zzdpu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaoj(zzaog zzaogVar, zzagq zzagqVar) {
        this.zzdpu = zzaogVar;
        this.zzdps = zzagqVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzdpu.zza(view, this.zzdps, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
