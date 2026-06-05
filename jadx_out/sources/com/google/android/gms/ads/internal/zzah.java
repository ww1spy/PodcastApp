package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzkk;

/* loaded from: classes.dex */
final class zzah implements Runnable {
    private /* synthetic */ zzkk zzaps;
    private /* synthetic */ zzag zzapt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(zzag zzagVar, zzkk zzkkVar) {
        this.zzapt = zzagVar;
        this.zzaps = zzkkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean zzdf;
        obj = this.zzapt.mLock;
        synchronized (obj) {
            zzdf = this.zzapt.zzdf();
            if (zzdf) {
                this.zzapt.zze(this.zzaps);
            } else {
                this.zzapt.zzb(this.zzaps, 1);
            }
        }
    }
}
