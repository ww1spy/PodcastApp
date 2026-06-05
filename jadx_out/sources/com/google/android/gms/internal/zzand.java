package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzand implements Runnable {
    private /* synthetic */ zzanb zzdlw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzand(zzanb zzanbVar) {
        this.zzdlw = zzanbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdlw.zza("surfaceDestroyed", new String[0]);
    }
}
