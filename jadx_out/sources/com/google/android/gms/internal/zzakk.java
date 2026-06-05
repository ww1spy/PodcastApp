package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;
import java.util.WeakHashMap;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzakk {
    private Context zzajv;
    private boolean zzdhy;
    private boolean zzaje = false;
    private final Map<BroadcastReceiver, IntentFilter> zzdhx = new WeakHashMap();
    private final BroadcastReceiver zzdhw = new zzakl(this);

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzc(Context context, Intent intent) {
        for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.zzdhx.entrySet()) {
            if (entry.getValue().hasAction(intent.getAction())) {
                entry.getKey().onReceive(context, intent);
            }
        }
    }

    public final synchronized void initialize(Context context) {
        if (this.zzaje) {
            return;
        }
        this.zzajv = context.getApplicationContext();
        if (this.zzajv == null) {
            this.zzajv = context;
        }
        zzoi.initialize(this.zzajv);
        this.zzdhy = ((Boolean) zzlc.zzio().zzd(zzoi.zzbsu)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.zzajv.registerReceiver(this.zzdhw, intentFilter);
        this.zzaje = true;
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.zzdhy) {
            this.zzdhx.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.zzdhy) {
            this.zzdhx.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }
}
