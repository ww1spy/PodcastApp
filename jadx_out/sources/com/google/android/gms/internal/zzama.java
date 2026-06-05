package com.google.android.gms.internal;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzama implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
