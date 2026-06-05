package com.google.android.gms.common.api.internal;

import android.os.Handler;

/* loaded from: classes.dex */
final class zzbn implements zzl {
    private /* synthetic */ zzbm zzfzq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbn(zzbm zzbmVar) {
        this.zzfzq = zzbmVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzl
    public final void zzbj(boolean z) {
        Handler handler;
        Handler handler2;
        handler = this.zzfzq.mHandler;
        handler2 = this.zzfzq.mHandler;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z)));
    }
}
