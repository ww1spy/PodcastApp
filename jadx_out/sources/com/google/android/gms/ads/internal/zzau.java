package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzaof;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zzau implements com.google.android.gms.ads.internal.gmsg.zzt<zzaof> {
    private /* synthetic */ CountDownLatch zzanq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzau(CountDownLatch countDownLatch) {
        this.zzanq = countDownLatch;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        this.zzanq.countDown();
        zzaofVar.getView().setVisibility(0);
    }
}
