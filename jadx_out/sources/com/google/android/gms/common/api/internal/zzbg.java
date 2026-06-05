package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbg extends zzby {
    private WeakReference<zzba> zzfyv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbg(zzba zzbaVar) {
        this.zzfyv = new WeakReference<>(zzbaVar);
    }

    @Override // com.google.android.gms.common.api.internal.zzby
    public final void zzaio() {
        zzba zzbaVar = this.zzfyv.get();
        if (zzbaVar == null) {
            return;
        }
        zzbaVar.resume();
    }
}
