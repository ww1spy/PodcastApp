package com.google.android.gms.tasks;

/* loaded from: classes.dex */
final class zzh implements Runnable {
    private /* synthetic */ Task zzldy;
    private /* synthetic */ zzg zzlee;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzg zzgVar, Task task) {
        this.zzlee = zzgVar;
        this.zzldy = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnFailureListener onFailureListener;
        OnFailureListener onFailureListener2;
        obj = this.zzlee.mLock;
        synchronized (obj) {
            onFailureListener = this.zzlee.zzled;
            if (onFailureListener != null) {
                onFailureListener2 = this.zzlee.zzled;
                onFailureListener2.onFailure(this.zzldy.getException());
            }
        }
    }
}
