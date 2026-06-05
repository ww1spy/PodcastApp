package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzab extends Handler {
    private /* synthetic */ zzaa zzioa;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzab(zzaa zzaaVar, Looper looper) {
        super(looper);
        this.zzioa = zzaaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzioa.zzd(message);
    }
}
