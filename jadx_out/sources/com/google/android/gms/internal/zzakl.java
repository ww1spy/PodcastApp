package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzakl extends BroadcastReceiver {
    private /* synthetic */ zzakk zzdhz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakl(zzakk zzakkVar) {
        this.zzdhz = zzakkVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzdhz.zzc(context, intent);
    }
}
