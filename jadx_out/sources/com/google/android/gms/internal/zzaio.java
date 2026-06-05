package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaio extends BroadcastReceiver {
    private /* synthetic */ zzaij zzdfv;

    private zzaio(zzaij zzaijVar) {
        this.zzdfv = zzaijVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaio(zzaij zzaijVar, zzaik zzaikVar) {
        this(zzaijVar);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzdfv.zzdfo = true;
        } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.zzdfv.zzdfo = false;
        }
    }
}
