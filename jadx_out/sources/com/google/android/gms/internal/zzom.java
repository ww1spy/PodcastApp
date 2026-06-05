package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzom implements Runnable {
    private /* synthetic */ zzol zzbwl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzom(zzol zzolVar) {
        this.zzbwl = zzolVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbwl.zzjk();
    }
}
