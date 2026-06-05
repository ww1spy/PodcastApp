package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* loaded from: classes.dex */
class zzdo extends BroadcastReceiver {
    private static String zzedv = "com.google.android.gms.tagmanager.zzdo";
    private final zzfn zzkqx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdo(zzfn zzfnVar) {
        this.zzkqx = zzfnVar;
    }

    public static void zzeo(Context context) {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(zzedv, true);
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            if (!"com.google.analytics.RADIO_POWERED".equals(action) || intent.hasExtra(zzedv)) {
                return;
            }
            this.zzkqx.zzbhy();
            return;
        }
        Bundle extras = intent.getExtras();
        Boolean bool = Boolean.FALSE;
        if (extras != null) {
            bool = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
        }
        this.zzkqx.zzca(!bool.booleanValue());
    }
}
