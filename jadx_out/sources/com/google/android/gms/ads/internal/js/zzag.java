package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzamg;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzag implements zzamg {
    private /* synthetic */ zzaa zzcgf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzag(zzae zzaeVar, zzaa zzaaVar) {
        this.zzcgf = zzaaVar;
    }

    @Override // com.google.android.gms.internal.zzamg
    public final void run() {
        zzahw.v("Rejecting reference for JS Engine.");
        this.zzcgf.reject();
    }
}
