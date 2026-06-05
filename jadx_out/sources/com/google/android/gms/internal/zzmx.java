package com.google.android.gms.internal;

import com.google.android.gms.ads.VideoController;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmx extends zzle {
    private /* synthetic */ zzmw zzbka;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmx(zzmw zzmwVar) {
        this.zzbka = zzmwVar;
    }

    @Override // com.google.android.gms.internal.zzle, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        VideoController videoController;
        videoController = this.zzbka.zzbjt;
        videoController.zza(this.zzbka.zzbh());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.zzle, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        videoController = this.zzbka.zzbjt;
        videoController.zza(this.zzbka.zzbh());
        super.onAdLoaded();
    }
}
