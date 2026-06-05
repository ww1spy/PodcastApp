package com.google.android.gms.internal;

import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaam implements ViewTreeObserver.OnScrollChangedListener {
    private /* synthetic */ zzaaf zzcqd;
    private /* synthetic */ WeakReference zzcqe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaam(zzaaf zzaafVar, WeakReference weakReference) {
        this.zzcqd = zzaafVar;
        this.zzcqe = weakReference;
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        this.zzcqd.zza((WeakReference<zzaof>) this.zzcqe, true);
    }
}
