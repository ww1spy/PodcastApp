package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzkh extends zzlj {
    private final AdListener zzbgu;

    public zzkh(AdListener adListener) {
        this.zzbgu = adListener;
    }

    public final AdListener getAdListener() {
        return this.zzbgu;
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClicked() {
        this.zzbgu.onAdClicked();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClosed() {
        this.zzbgu.onAdClosed();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdFailedToLoad(int i) {
        this.zzbgu.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdImpression() {
        this.zzbgu.onAdImpression();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLeftApplication() {
        this.zzbgu.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLoaded() {
        this.zzbgu.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdOpened() {
        this.zzbgu.onAdOpened();
    }
}
