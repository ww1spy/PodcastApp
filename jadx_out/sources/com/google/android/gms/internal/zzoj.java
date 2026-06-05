package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzoj implements Callable<Void> {
    private /* synthetic */ Context val$context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzoj(Context context) {
        this.val$context = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        zzlc.zzio().initialize(this.val$context);
        return null;
    }
}
