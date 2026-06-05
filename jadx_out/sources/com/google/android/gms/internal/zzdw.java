package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdw extends BroadcastReceiver {
    private /* synthetic */ zzdu zzakf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdw(zzdu zzduVar) {
        this.zzakf = zzduVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zzakf.zzav();
    }
}
