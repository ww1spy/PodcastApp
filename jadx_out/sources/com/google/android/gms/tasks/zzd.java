package com.google.android.gms.tasks;

/* loaded from: classes.dex */
final class zzd implements Runnable {
    private /* synthetic */ Task zzldy;
    private /* synthetic */ zzc zzlea;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzc zzcVar, Task task) {
        this.zzlea = zzcVar;
        this.zzldy = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzp zzpVar;
        zzp zzpVar2;
        zzp zzpVar3;
        Continuation continuation;
        try {
            continuation = this.zzlea.zzldw;
            Task task = (Task) continuation.then(this.zzldy);
            if (task == null) {
                this.zzlea.onFailure(new NullPointerException("Continuation returned null"));
            } else {
                task.addOnSuccessListener(TaskExecutors.zzlem, this.zzlea);
                task.addOnFailureListener(TaskExecutors.zzlem, this.zzlea);
            }
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzpVar3 = this.zzlea.zzldx;
                zzpVar3.setException((Exception) e.getCause());
            } else {
                zzpVar2 = this.zzlea.zzldx;
                zzpVar2.setException(e);
            }
        } catch (Exception e2) {
            zzpVar = this.zzlea.zzldx;
            zzpVar.setException(e2);
        }
    }
}
