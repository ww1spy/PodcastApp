package com.google.android.gms.internal;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;

/* loaded from: classes.dex */
final class zzxy implements com.google.android.gms.ads.internal.overlay.zzn {
    private /* synthetic */ zzxx zzckr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxy(zzxx zzxxVar) {
        this.zzckr = zzxxVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void onPause() {
        zzaky.zzby("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void onResume() {
        zzaky.zzby("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void zzcf() {
        MediationInterstitialListener mediationInterstitialListener;
        zzaky.zzby("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.zzckr.zzckq;
        mediationInterstitialListener.onAdClosed(this.zzckr);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void zzcg() {
        MediationInterstitialListener mediationInterstitialListener;
        zzaky.zzby("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.zzckr.zzckq;
        mediationInterstitialListener.onAdOpened(this.zzckr);
    }
}
