package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;

/* loaded from: classes.dex */
final class zzc implements Runnable {
    private /* synthetic */ BroadcastReceiver.PendingResult zzdue;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(CampaignTrackingReceiver campaignTrackingReceiver, BroadcastReceiver.PendingResult pendingResult) {
        this.zzdue = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdue != null) {
            this.zzdue.finish();
        }
    }
}
