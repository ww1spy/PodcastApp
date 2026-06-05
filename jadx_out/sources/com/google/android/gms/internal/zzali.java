package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzali {
    public static <V> zzalt<V> zza(zzalt<V> zzaltVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        final zzamd zzamdVar = new zzamd();
        zza((zzalt) zzamdVar, (Future) zzaltVar);
        final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable(zzamdVar) { // from class: com.google.android.gms.internal.zzalm
            private final zzamd zzcdk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcdk = zzamdVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcdk.setException(new TimeoutException());
            }
        }, j, timeUnit);
        zza((zzalt) zzaltVar, zzamdVar);
        zzamdVar.zza(new Runnable(schedule) { // from class: com.google.android.gms.internal.zzaln
            private final Future zzdjj;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdjj = schedule;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Future future = this.zzdjj;
                if (future.isDone()) {
                    return;
                }
                future.cancel(true);
            }
        }, zzaly.zzdju);
        return zzamdVar;
    }

    public static <A, B> zzalt<B> zza(final zzalt<A> zzaltVar, final zzald<? super A, ? extends B> zzaldVar, Executor executor) {
        final zzamd zzamdVar = new zzamd();
        zzaltVar.zza(new Runnable(zzamdVar, zzaldVar, zzaltVar) { // from class: com.google.android.gms.internal.zzall
            private final zzamd zzcdk;
            private final zzalt zzdjh;
            private final zzald zzdji;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcdk = zzamdVar;
                this.zzdji = zzaldVar;
                this.zzdjh = zzaltVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzali.zza(this.zzcdk, this.zzdji, this.zzdjh);
            }
        }, executor);
        zza((zzalt) zzamdVar, (Future) zzaltVar);
        return zzamdVar;
    }

    public static <A, B> zzalt<B> zza(final zzalt<A> zzaltVar, final zzale<A, B> zzaleVar, Executor executor) {
        final zzamd zzamdVar = new zzamd();
        zzaltVar.zza(new Runnable(zzamdVar, zzaleVar, zzaltVar) { // from class: com.google.android.gms.internal.zzalk
            private final zzamd zzcdk;
            private final zzale zzdjg;
            private final zzalt zzdjh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcdk = zzamdVar;
                this.zzdjg = zzaleVar;
                this.zzdjh = zzaltVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzamd zzamdVar2 = this.zzcdk;
                try {
                    zzamdVar2.set(this.zzdjg.apply(this.zzdjh.get()));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    zzamdVar2.setException(e);
                } catch (CancellationException unused) {
                    zzamdVar2.cancel(true);
                } catch (ExecutionException e2) {
                    e = e2;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    zzamdVar2.setException(e);
                } catch (Exception e3) {
                    zzamdVar2.setException(e3);
                }
            }
        }, executor);
        zza((zzalt) zzamdVar, (Future) zzaltVar);
        return zzamdVar;
    }

    public static <V, X extends Throwable> zzalt<V> zza(final zzalt<? extends V> zzaltVar, final Class<X> cls, final zzald<? super X, ? extends V> zzaldVar, final Executor executor) {
        final zzamd zzamdVar = new zzamd();
        zza((zzalt) zzamdVar, (Future) zzaltVar);
        zzaltVar.zza(new Runnable(zzamdVar, zzaltVar, cls, zzaldVar, executor) { // from class: com.google.android.gms.internal.zzalo
            private final zzamd zzcdk;
            private final zzalt zzdjf;
            private final Class zzdjk;
            private final zzald zzdjl;
            private final Executor zzdjm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcdk = zzamdVar;
                this.zzdjf = zzaltVar;
                this.zzdjk = cls;
                this.zzdjl = zzaldVar;
                this.zzdjm = executor;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzali.zza(this.zzcdk, this.zzdjf, this.zzdjk, this.zzdjl, this.zzdjm);
            }
        }, zzaly.zzdju);
        return zzamdVar;
    }

    public static <T> T zza(Future<T> future, T t) {
        try {
            return future.get(((Long) zzlc.zzio().zzd(zzoi.zzbre)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e = e;
            future.cancel(true);
            zzahw.zzc("InterruptedException caught while resolving future.", e);
            Thread.currentThread().interrupt();
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "Futures.resolveFuture");
            return t;
        } catch (Exception e2) {
            e = e2;
            future.cancel(true);
            zzahw.zzb("Error waiting for future.", e);
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "Futures.resolveFuture");
            return t;
        }
    }

    public static <T> T zza(Future<T> future, T t, long j, TimeUnit timeUnit) {
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            e = e;
            future.cancel(true);
            zzahw.zzc("InterruptedException caught while resolving future.", e);
            Thread.currentThread().interrupt();
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "Futures.resolveFuture");
            return t;
        } catch (Exception e2) {
            e = e2;
            future.cancel(true);
            zzahw.zzb("Error waiting for future.", e);
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "Futures.resolveFuture");
            return t;
        }
    }

    public static <V> void zza(final zzalt<V> zzaltVar, final zzalf<V> zzalfVar, Executor executor) {
        zzaltVar.zza(new Runnable(zzalfVar, zzaltVar) { // from class: com.google.android.gms.internal.zzalj
            private final zzalf zzdje;
            private final zzalt zzdjf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdje = zzalfVar;
                this.zzdjf = zzaltVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzalf zzalfVar2 = this.zzdje;
                try {
                    zzalfVar2.onSuccess(this.zzdjf.get());
                } catch (InterruptedException e) {
                    e = e;
                    Thread.currentThread().interrupt();
                    zzalfVar2.zzb(e);
                } catch (ExecutionException e2) {
                    e = e2.getCause();
                    zzalfVar2.zzb(e);
                } catch (Exception e3) {
                    e = e3;
                    zzalfVar2.zzb(e);
                }
            }
        }, executor);
    }

    private static <V> void zza(final zzalt<? extends V> zzaltVar, final zzamd<V> zzamdVar) {
        zza((zzalt) zzamdVar, (Future) zzaltVar);
        zzaltVar.zza(new Runnable(zzamdVar, zzaltVar) { // from class: com.google.android.gms.internal.zzalp
            private final zzamd zzcdk;
            private final zzalt zzdjf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcdk = zzamdVar;
                this.zzdjf = zzaltVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Throwable e;
                zzamd zzamdVar2 = this.zzcdk;
                try {
                    zzamdVar2.set(this.zzdjf.get());
                } catch (InterruptedException e2) {
                    e = e2;
                    Thread.currentThread().interrupt();
                    zzamdVar2.setException(e);
                } catch (ExecutionException e3) {
                    e = e3.getCause();
                    zzamdVar2.setException(e);
                } catch (Exception e4) {
                    zzamdVar2.setException(e4);
                }
            }
        }, zzaly.zzdju);
    }

    private static <A, B> void zza(final zzalt<A> zzaltVar, final Future<B> future) {
        zzaltVar.zza(new Runnable(zzaltVar, future) { // from class: com.google.android.gms.internal.zzalq
            private final Future zzcdl;
            private final zzalt zzdjn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdjn = zzaltVar;
                this.zzcdl = future;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzalt zzaltVar2 = this.zzdjn;
                Future future2 = this.zzcdl;
                if (zzaltVar2.isCancelled()) {
                    future2.cancel(true);
                }
            }
        }, zzaly.zzdju);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(zzamd zzamdVar, zzald zzaldVar, zzalt zzaltVar) {
        if (zzamdVar.isCancelled()) {
            return;
        }
        try {
            zza(zzaldVar.zzc(zzaltVar.get()), zzamdVar);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            zzamdVar.setException(e);
        } catch (CancellationException unused) {
            zzamdVar.cancel(true);
        } catch (ExecutionException e2) {
            zzamdVar.setException(e2.getCause());
        } catch (Exception e3) {
            zzamdVar.setException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void zza(com.google.android.gms.internal.zzamd r1, com.google.android.gms.internal.zzalt r2, java.lang.Class r3, com.google.android.gms.internal.zzald r4, java.util.concurrent.Executor r5) {
        /*
            java.lang.Object r2 = r2.get()     // Catch: java.lang.Exception -> L8 java.lang.InterruptedException -> La java.util.concurrent.ExecutionException -> L13
            r1.set(r2)     // Catch: java.lang.Exception -> L8 java.lang.InterruptedException -> La java.util.concurrent.ExecutionException -> L13
            return
        L8:
            r2 = move-exception
            goto L18
        La:
            r2 = move-exception
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L18
        L13:
            r2 = move-exception
            java.lang.Throwable r2 = r2.getCause()
        L18:
            boolean r3 = r3.isInstance(r2)
            if (r3 == 0) goto L2a
            com.google.android.gms.internal.zzals r2 = zzh(r2)
            com.google.android.gms.internal.zzalt r2 = zza(r2, r4, r5)
            zza(r2, r1)
            return
        L2a:
            r1.setException(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzali.zza(com.google.android.gms.internal.zzamd, com.google.android.gms.internal.zzalt, java.lang.Class, com.google.android.gms.internal.zzald, java.util.concurrent.Executor):void");
    }

    public static <T> zzalr<T> zzd(Throwable th) {
        return new zzalr<>(th);
    }

    public static <T> zzals<T> zzh(T t) {
        return new zzals<>(t);
    }
}
