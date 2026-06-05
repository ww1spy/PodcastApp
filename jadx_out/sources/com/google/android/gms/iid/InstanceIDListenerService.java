package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;

/* loaded from: classes.dex */
public class InstanceIDListenerService extends zzb {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public static void zza(Context context, zzaf zzafVar) {
        zzafVar.zzawz();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "RST");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    @Override // com.google.android.gms.iid.zzb
    @Hide
    public void handleIntent(Intent intent) {
        if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            Bundle bundle = null;
            String stringExtra = intent.getStringExtra("subtype");
            if (stringExtra != null) {
                bundle = new Bundle();
                bundle.putString("subtype", stringExtra);
            }
            InstanceID instanceID = InstanceID.getInstance(this, bundle);
            String stringExtra2 = intent.getStringExtra("CMD");
            if (Log.isLoggable("InstanceID", 3)) {
                StringBuilder sb = new StringBuilder(34 + String.valueOf(stringExtra).length() + String.valueOf(stringExtra2).length());
                sb.append("Service command. subtype:");
                sb.append(stringExtra);
                sb.append(" command:");
                sb.append(stringExtra2);
                Log.d("InstanceID", sb.toString());
            }
            if ("RST".equals(stringExtra2)) {
                instanceID.zzawq();
            } else {
                if (!"RST_FULL".equals(stringExtra2)) {
                    if ("SYNC".equals(stringExtra2)) {
                        InstanceID.zzawr().zzih(String.valueOf(stringExtra).concat("|T|"));
                        onTokenRefresh();
                        return;
                    }
                    return;
                }
                if (InstanceID.zzawr().isEmpty()) {
                    return;
                } else {
                    InstanceID.zzawr().zzawz();
                }
            }
            onTokenRefresh();
        }
    }

    public void onTokenRefresh() {
    }
}
