package com.google.android.gms.internal;

@zzabh
/* loaded from: classes.dex */
final class zzanp implements Runnable {
    private boolean zzayx = false;
    private zzanb zzdof;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanp(zzanb zzanbVar) {
        this.zzdof = zzanbVar;
    }

    private final void zztq() {
        zzaij.zzdfn.removeCallbacks(this);
        zzaij.zzdfn.postDelayed(this, 250L);
    }

    public final void pause() {
        this.zzayx = true;
    }

    public final void resume() {
        this.zzayx = false;
        zztq();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzayx) {
            return;
        }
        this.zzdof.zzsy();
        zztq();
    }
}
