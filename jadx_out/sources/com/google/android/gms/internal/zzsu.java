package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
/* loaded from: classes.dex */
public final class zzsu extends zzsf {
    private final OnPublisherAdViewLoadedListener zzcax;

    public zzsu(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.zzcax = onPublisherAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzse
    public final void zza(zzlt zzltVar, IObjectWrapper iObjectWrapper) {
        if (zzltVar == null || iObjectWrapper == null) {
            return;
        }
        PublisherAdView publisherAdView = new PublisherAdView((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
        try {
            if (zzltVar.zzcd() instanceof zzkh) {
                zzkh zzkhVar = (zzkh) zzltVar.zzcd();
                publisherAdView.setAdListener(zzkhVar != null ? zzkhVar.getAdListener() : null);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Failed to get ad listener.", e);
        }
        try {
            if (zzltVar.zzcc() instanceof zzkq) {
                zzkq zzkqVar = (zzkq) zzltVar.zzcc();
                publisherAdView.setAppEventListener(zzkqVar != null ? zzkqVar.getAppEventListener() : null);
            }
        } catch (RemoteException e2) {
            zzaky.zzc("Failed to get app event listener.", e2);
        }
        zzako.zzaju.post(new zzsv(this, publisherAdView, zzltVar));
    }
}
