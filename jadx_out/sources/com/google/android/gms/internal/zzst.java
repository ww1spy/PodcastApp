package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzst extends zzsc {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zzcaw;

    public zzst(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.zzcaw = onCustomTemplateAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzsb
    public final void zzb(zzro zzroVar) {
        this.zzcaw.onCustomTemplateAdLoaded(zzrr.zza(zzroVar));
    }
}
