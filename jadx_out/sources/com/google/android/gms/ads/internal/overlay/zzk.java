package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
final class zzk implements Runnable {
    private /* synthetic */ Drawable zzcnh;
    private /* synthetic */ zzj zzcni;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(zzj zzjVar, Drawable drawable) {
        this.zzcni = zzjVar;
        this.zzcnh = drawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcni.zzcne.mActivity.getWindow().setBackgroundDrawable(this.zzcnh);
    }
}
