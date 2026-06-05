package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzpe extends zzpc {
    private final OnCustomRenderedAdLoadedListener zzbjx;

    public zzpe(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzbjx = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.zzpb
    public final void zza(zzoy zzoyVar) {
        this.zzbjx.onCustomRenderedAdLoaded(new zzox(zzoyVar));
    }
}
