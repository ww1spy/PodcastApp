package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzamg;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzx implements zzamg {
    private /* synthetic */ zzn zzcfu;
    private /* synthetic */ zzae zzcfx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(zzn zznVar, zzae zzaeVar) {
        this.zzcfu = zznVar;
        this.zzcfx = zzaeVar;
    }

    @Override // com.google.android.gms.internal.zzamg
    public final void run() {
        Object obj;
        obj = this.zzcfu.mLock;
        synchronized (obj) {
            this.zzcfu.zzcfl = 1;
            zzahw.v("Failed loading new engine. Marking new engine destroyable.");
            this.zzcfx.zzmc();
        }
    }
}
