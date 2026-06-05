package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

@zzabh
/* loaded from: classes.dex */
public final class zzaci extends zzacr {
    private final WeakReference<zzabx> zzctm;

    public zzaci(zzabx zzabxVar) {
        this.zzctm = new WeakReference<>(zzabxVar);
    }

    @Override // com.google.android.gms.internal.zzacq
    public final void zza(zzacj zzacjVar) {
        zzabx zzabxVar = this.zzctm.get();
        if (zzabxVar != null) {
            zzabxVar.zza(zzacjVar);
        }
    }
}
