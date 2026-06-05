package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzabs implements Runnable {
    private /* synthetic */ zzabk zzcrm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabs(zzabk zzabkVar) {
        this.zzcrm = zzabkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzcrm.zzcoe;
        synchronized (obj) {
            if (this.zzcrm.zzcri == null) {
                return;
            }
            this.zzcrm.onStop();
            this.zzcrm.zzc(2, "Timed out waiting for ad response.");
        }
    }
}
