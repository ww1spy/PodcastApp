package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

@Hide
/* loaded from: classes.dex */
public interface zzalt<A> extends Future<A> {
    void zza(Runnable runnable, Executor executor);
}
