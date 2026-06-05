package com.google.android.gms.tasks;

/* loaded from: classes.dex */
final class zzl implements Runnable {
    private /* synthetic */ Task zzldy;
    private /* synthetic */ zzk zzlei;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzk zzkVar, Task task) {
        this.zzlei = zzkVar;
        this.zzldy = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SuccessContinuation successContinuation;
        try {
            successContinuation = this.zzlei.zzleh;
            Task then = successContinuation.then(this.zzldy.getResult());
            if (then == null) {
                this.zzlei.onFailure(new NullPointerException("Continuation returned null"));
            } else {
                then.addOnSuccessListener(TaskExecutors.zzlem, this.zzlei);
                then.addOnFailureListener(TaskExecutors.zzlem, this.zzlei);
            }
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzlei.onFailure((Exception) e.getCause());
            } else {
                this.zzlei.onFailure(e);
            }
        } catch (Exception e2) {
            this.zzlei.onFailure(e2);
        }
    }
}
