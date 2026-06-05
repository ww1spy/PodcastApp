package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzac extends BroadcastReceiver {
    private /* synthetic */ zzaa zzioa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(zzaa zzaaVar) {
        this.zzioa = zzaaVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            Log.d("InstanceID/Rpc", "Received GSF callback via dynamic receiver");
        }
        this.zzioa.zzj(intent);
    }
}
