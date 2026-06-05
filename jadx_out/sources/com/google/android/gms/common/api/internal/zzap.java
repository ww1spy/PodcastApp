package com.google.android.gms.common.api.internal;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzap implements Runnable {
    private /* synthetic */ zzao zzfxt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(zzao zzaoVar) {
        this.zzfxt = zzaoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        context = this.zzfxt.mContext;
        com.google.android.gms.common.zzf.zzcf(context);
    }
}
