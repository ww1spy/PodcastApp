package com.google.android.gms.ads.internal;

import android.view.View;

/* loaded from: classes.dex */
final class zzo implements View.OnClickListener {
    private /* synthetic */ zzl zzaoc;
    private /* synthetic */ zzw zzaod;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(zzl zzlVar, zzw zzwVar) {
        this.zzaoc = zzlVar;
        this.zzaod = zzwVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzaod.recordClick();
        if (this.zzaoc.zzaoa != null) {
            this.zzaoc.zzaoa.zzpg();
        }
    }
}
