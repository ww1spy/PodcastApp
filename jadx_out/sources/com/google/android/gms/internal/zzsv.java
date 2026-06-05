package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;

/* loaded from: classes.dex */
final class zzsv implements Runnable {
    private /* synthetic */ PublisherAdView zzcay;
    private /* synthetic */ zzlt zzcaz;
    private /* synthetic */ zzsu zzcba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsv(zzsu zzsuVar, PublisherAdView publisherAdView, zzlt zzltVar) {
        this.zzcba = zzsuVar;
        this.zzcay = publisherAdView;
        this.zzcaz = zzltVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener;
        if (!this.zzcay.zza(this.zzcaz)) {
            zzaky.zzcz("Could not bind ad manager");
        } else {
            onPublisherAdViewLoadedListener = this.zzcba.zzcax;
            onPublisherAdViewLoadedListener.onPublisherAdViewLoaded(this.zzcay);
        }
    }
}
