package com.google.android.gms.tasks;

/* loaded from: classes.dex */
final class zzf implements Runnable {
    private /* synthetic */ Task zzldy;
    private /* synthetic */ zze zzlec;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(zze zzeVar, Task task) {
        this.zzlec = zzeVar;
        this.zzldy = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.zzlec.mLock;
        synchronized (obj) {
            onCompleteListener = this.zzlec.zzleb;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.zzlec.zzleb;
                onCompleteListener2.onComplete(this.zzldy);
            }
        }
    }
}
