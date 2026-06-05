package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzd {
    final Intent intent;
    private final BroadcastReceiver.PendingResult zzimi;
    private boolean zzimj = false;
    private final ScheduledFuture<?> zzimk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.intent = intent;
        this.zzimi = pendingResult;
        this.zzimk = scheduledExecutorService.schedule(new zze(this, intent), 9500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void finish() {
        if (!this.zzimj) {
            this.zzimi.finish();
            this.zzimk.cancel(false);
            this.zzimj = true;
        }
    }
}
