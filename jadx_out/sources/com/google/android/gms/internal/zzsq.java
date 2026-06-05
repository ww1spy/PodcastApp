package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzsq extends zzrt {
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener zzcat;

    public zzsq(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzcat = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzrs
    public final void zza(zzrg zzrgVar) {
        this.zzcat.onAppInstallAdLoaded(new zzrj(zzrgVar));
    }
}
