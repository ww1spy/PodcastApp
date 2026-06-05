package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzanw implements Runnable {
    private /* synthetic */ zzanv zzdon;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanw(zzanv zzanvVar) {
        this.zzdon = zzanvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzbt.zzff().zzb(this.zzdon);
    }
}
