package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgs implements Runnable {
    private /* synthetic */ zzgr zzaxp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgs(zzgr zzgrVar) {
        this.zzaxp = zzgrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaxp.zzm(3);
    }
}
