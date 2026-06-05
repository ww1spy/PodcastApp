package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* loaded from: classes.dex */
final class zzxz implements Runnable {
    private /* synthetic */ AdOverlayInfoParcel zzaqn;
    private /* synthetic */ zzxx zzckr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxz(zzxx zzxxVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzckr = zzxxVar;
        this.zzaqn = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        com.google.android.gms.ads.internal.zzbt.zzej();
        activity = this.zzckr.zzckp;
        com.google.android.gms.ads.internal.overlay.zzl.zza(activity, this.zzaqn, true);
    }
}
