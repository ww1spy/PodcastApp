package com.google.android.gms.internal;

import android.view.View;

/* loaded from: classes.dex */
final class zzhn implements Runnable {
    private /* synthetic */ View zzazo;
    private /* synthetic */ zzhm zzazp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhn(zzhm zzhmVar, View view) {
        this.zzazp = zzhmVar;
        this.zzazo = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzazp.zzj(this.zzazo);
    }
}
