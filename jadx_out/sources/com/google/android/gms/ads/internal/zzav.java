package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaof;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zzav implements com.google.android.gms.ads.internal.gmsg.zzt<zzaof> {
    private /* synthetic */ CountDownLatch zzanq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(CountDownLatch countDownLatch) {
        this.zzanq = countDownLatch;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzahw.zzcz("Adapter returned an ad, but assets substitution failed");
        this.zzanq.countDown();
        zzaofVar.destroy();
    }
}
