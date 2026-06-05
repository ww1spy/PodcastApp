package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzkk;

/* loaded from: classes.dex */
final class zzai implements Runnable {
    private /* synthetic */ zzkk zzaps;
    private /* synthetic */ zzag zzapt;
    private /* synthetic */ int zzapu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzai(zzag zzagVar, zzkk zzkkVar, int i) {
        this.zzapt = zzagVar;
        this.zzaps = zzkkVar;
        this.zzapu = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzapt.mLock;
        synchronized (obj) {
            this.zzapt.zzb(this.zzaps, this.zzapu);
        }
    }
}
