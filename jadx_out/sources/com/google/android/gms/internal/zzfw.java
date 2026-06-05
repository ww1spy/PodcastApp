package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
final class zzfw extends BroadcastReceiver {
    private /* synthetic */ zzfv zzawp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfw(zzfv zzfvVar) {
        this.zzawp = zzfvVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzawp.zzl(3);
    }
}
