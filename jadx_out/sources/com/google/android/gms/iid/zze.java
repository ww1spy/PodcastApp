package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zze implements Runnable {
    private /* synthetic */ Intent val$intent;
    private /* synthetic */ zzd zziml;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zzd zzdVar, Intent intent) {
        this.zziml = zzdVar;
        this.val$intent = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.val$intent.getAction();
        StringBuilder sb = new StringBuilder(61 + String.valueOf(action).length());
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb.toString());
        this.zziml.finish();
    }
}
