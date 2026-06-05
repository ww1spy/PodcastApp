package com.google.android.gms.internal;

import android.view.MotionEvent;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* loaded from: classes.dex */
final class zzpp implements zzpt {
    private /* synthetic */ zzpo zzbyq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpp(zzpo zzpoVar) {
        this.zzbyq = zzpoVar;
    }

    @Override // com.google.android.gms.internal.zzpt
    public final void zzc(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.zzpt
    public final void zzkl() {
        this.zzbyq.performClick(NativeCustomTemplateAd.ASSET_NAME_VIDEO);
    }
}
