package com.google.android.gms.common.api.internal;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbs implements com.google.android.gms.common.internal.zzp {
    final /* synthetic */ zzbo zzgaa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbs(zzbo zzboVar) {
        this.zzgaa = zzboVar;
    }

    @Override // com.google.android.gms.common.internal.zzp
    public final void zzako() {
        Handler handler;
        handler = this.zzgaa.zzfzq.mHandler;
        handler.post(new zzbt(this));
    }
}
