package com.google.android.gms.internal;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
final class zzqk implements zzpt {
    private /* synthetic */ View zzbzy;
    private /* synthetic */ zzqj zzbzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqk(zzqj zzqjVar, View view) {
        this.zzbzz = zzqjVar;
        this.zzbzy = view;
    }

    @Override // com.google.android.gms.internal.zzpt
    public final void zzc(MotionEvent motionEvent) {
        this.zzbzz.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.zzpt
    public final void zzkl() {
        this.zzbzz.onClick(this.zzbzy);
    }
}
