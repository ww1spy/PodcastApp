package com.google.android.gms.internal;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqn implements zzpt {
    private /* synthetic */ View zzbzy;
    private /* synthetic */ zzql zzcaf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqn(zzql zzqlVar, View view) {
        this.zzcaf = zzqlVar;
        this.zzbzy = view;
    }

    @Override // com.google.android.gms.internal.zzpt
    public final void zzc(MotionEvent motionEvent) {
        this.zzcaf.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.zzpt
    public final void zzkl() {
        boolean zza;
        zza = this.zzcaf.zza(zzql.zzbzo);
        if (zza) {
            this.zzcaf.onClick(this.zzbzy);
        }
    }
}
