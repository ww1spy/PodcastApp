package com.google.android.gms.internal;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzarm {
    private final Context mApplicationContext;
    private final Context zzdzh;

    public zzarm(Context context) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.zzbq.checkNotNull(applicationContext, "Application context can't be null");
        this.mApplicationContext = applicationContext;
        this.zzdzh = applicationContext;
    }

    public final Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public final Context zzyl() {
        return this.zzdzh;
    }
}
