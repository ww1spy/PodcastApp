package com.google.android.gms.common.api.internal;

import android.app.Dialog;

/* loaded from: classes.dex */
final class zzr extends zzby {
    private /* synthetic */ Dialog zzfuz;
    private /* synthetic */ zzq zzfva;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(zzq zzqVar, Dialog dialog) {
        this.zzfva = zzqVar;
        this.zzfuz = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zzby
    public final void zzaio() {
        this.zzfva.zzfuy.zzail();
        if (this.zzfuz.isShowing()) {
            this.zzfuz.dismiss();
        }
    }
}
