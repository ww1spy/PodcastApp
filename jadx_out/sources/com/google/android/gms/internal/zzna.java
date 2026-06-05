package com.google.android.gms.internal;

import android.content.Context;

/* loaded from: classes.dex */
final class zzna implements Runnable {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzmz zzbkg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzna(zzmz zzmzVar, Context context) {
        this.zzbkg = zzmzVar;
        this.val$context = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbkg.getRewardedVideoAdInstance(this.val$context);
    }
}
