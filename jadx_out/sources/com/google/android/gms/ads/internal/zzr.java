package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzahd;

/* loaded from: classes.dex */
final class zzr implements Runnable {
    private /* synthetic */ zzq zzaog;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(zzq zzqVar) {
        this.zzaog = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzahd zzahdVar;
        zzq zzqVar = this.zzaog;
        zzahdVar = this.zzaog.zzaoe;
        zzqVar.zzb(zzahdVar);
    }
}
