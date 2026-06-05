package com.google.android.gms.tasks;

/* loaded from: classes.dex */
final class zzb implements Runnable {
    private /* synthetic */ Task zzldy;
    private /* synthetic */ zza zzldz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar, Task task) {
        this.zzldz = zzaVar;
        this.zzldy = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzp zzpVar;
        zzp zzpVar2;
        zzp zzpVar3;
        Continuation continuation;
        zzp zzpVar4;
        try {
            continuation = this.zzldz.zzldw;
            Object then = continuation.then(this.zzldy);
            zzpVar4 = this.zzldz.zzldx;
            zzpVar4.setResult(then);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzpVar3 = this.zzldz.zzldx;
                zzpVar3.setException((Exception) e.getCause());
            } else {
                zzpVar2 = this.zzldz.zzldx;
                zzpVar2.setException(e);
            }
        } catch (Exception e2) {
            zzpVar = this.zzldz.zzldx;
            zzpVar.setException(e2);
        }
    }
}
