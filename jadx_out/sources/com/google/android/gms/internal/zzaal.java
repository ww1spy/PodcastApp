package com.google.android.gms.internal;

import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaal implements ViewTreeObserver.OnGlobalLayoutListener {
    private /* synthetic */ zzaaf zzcqd;
    private /* synthetic */ WeakReference zzcqe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaal(zzaaf zzaafVar, WeakReference weakReference) {
        this.zzcqd = zzaafVar;
        this.zzcqe = weakReference;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.zzcqd.zza((WeakReference<zzaof>) this.zzcqe, false);
    }
}
