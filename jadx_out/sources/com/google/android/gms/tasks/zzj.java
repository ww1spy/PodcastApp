package com.google.android.gms.tasks;

/* loaded from: classes.dex */
final class zzj implements Runnable {
    private /* synthetic */ Task zzldy;
    private /* synthetic */ zzi zzleg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzi zziVar, Task task) {
        this.zzleg = zziVar;
        this.zzldy = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnSuccessListener onSuccessListener;
        OnSuccessListener onSuccessListener2;
        obj = this.zzleg.mLock;
        synchronized (obj) {
            onSuccessListener = this.zzleg.zzlef;
            if (onSuccessListener != null) {
                onSuccessListener2 = this.zzleg.zzlef;
                onSuccessListener2.onSuccess(this.zzldy.getResult());
            }
        }
    }
}
