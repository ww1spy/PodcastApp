package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

@Hide
@zzabh
/* loaded from: classes.dex */
final class zzalw<V> extends FutureTask<V> implements zzalt<V> {
    private final zzalu zzdjo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalw(Runnable runnable, V v) {
        super(runnable, v);
        this.zzdjo = new zzalu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalw(Callable<V> callable) {
        super(callable);
        this.zzdjo = new zzalu();
    }

    @Override // java.util.concurrent.FutureTask
    protected final void done() {
        this.zzdjo.zzsf();
    }

    @Override // com.google.android.gms.internal.zzalt
    public final void zza(Runnable runnable, Executor executor) {
        this.zzdjo.zza(runnable, executor);
    }
}
