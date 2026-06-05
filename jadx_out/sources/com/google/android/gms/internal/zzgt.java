package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgt extends BroadcastReceiver {
    private /* synthetic */ zzgr zzaxp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgt(zzgr zzgrVar) {
        this.zzaxp = zzgrVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzaxp.zzm(3);
    }
}
