package com.google.android.gms.tagmanager;

/* loaded from: classes.dex */
final class zzfq implements Runnable {
    private /* synthetic */ zzfo zzktv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfq(zzfo zzfoVar) {
        this.zzktv = zzfoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcc zzccVar;
        zzccVar = this.zzktv.zzktk;
        zzccVar.dispatch();
    }
}
