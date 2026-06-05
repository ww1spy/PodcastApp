package com.google.android.gms.internal;

import android.content.ComponentName;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzfxe extends CustomTabsServiceConnection {
    private WeakReference<zzfxf> zzrni;

    public zzfxe(zzfxf zzfxfVar) {
        this.zzrni = new WeakReference<>(zzfxfVar);
    }

    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        zzfxf zzfxfVar = this.zzrni.get();
        if (zzfxfVar != null) {
            zzfxfVar.zza(customTabsClient);
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        zzfxf zzfxfVar = this.zzrni.get();
        if (zzfxfVar != null) {
            zzfxfVar.zzjt();
        }
    }
}
