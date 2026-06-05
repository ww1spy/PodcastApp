package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzsr extends zzrw {
    private final NativeContentAd.OnContentAdLoadedListener zzcau;

    public zzsr(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzcau = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzrv
    public final void zza(zzrk zzrkVar) {
        this.zzcau.onContentAdLoaded(new zzrn(zzrkVar));
    }
}
