package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* loaded from: classes.dex */
final class zzao implements Runnable {
    private /* synthetic */ AdOverlayInfoParcel zzaqn;
    private /* synthetic */ zzan zzaqo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzao(zzan zzanVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzaqo = zzanVar;
        this.zzaqn = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbt.zzej();
        com.google.android.gms.ads.internal.overlay.zzl.zza(this.zzaqo.zzaql.zzanm.zzaiq, this.zzaqn, true);
    }
}
