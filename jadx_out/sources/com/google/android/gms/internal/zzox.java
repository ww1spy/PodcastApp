package com.google.android.gms.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzox implements CustomRenderedAd {
    private final zzoy zzbxa;

    public zzox(zzoy zzoyVar) {
        this.zzbxa = zzoyVar;
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final String getBaseUrl() {
        try {
            return this.zzbxa.zzjs();
        } catch (RemoteException e) {
            zzaky.zzc("Could not delegate getBaseURL to CustomRenderedAd", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final String getContent() {
        try {
            return this.zzbxa.getContent();
        } catch (RemoteException e) {
            zzaky.zzc("Could not delegate getContent to CustomRenderedAd", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void onAdRendered(View view) {
        try {
            this.zzbxa.zze(view != null ? com.google.android.gms.dynamic.zzn.zzz(view) : null);
        } catch (RemoteException e) {
            zzaky.zzc("Could not delegate onAdRendered to CustomRenderedAd", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void recordClick() {
        try {
            this.zzbxa.recordClick();
        } catch (RemoteException e) {
            zzaky.zzc("Could not delegate recordClick to CustomRenderedAd", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void recordImpression() {
        try {
            this.zzbxa.recordImpression();
        } catch (RemoteException e) {
            zzaky.zzc("Could not delegate recordImpression to CustomRenderedAd", e);
        }
    }
}
