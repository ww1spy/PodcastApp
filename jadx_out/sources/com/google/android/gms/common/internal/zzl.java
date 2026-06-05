package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class zzl implements ServiceConnection {
    private /* synthetic */ zzd zzgfk;
    private final int zzgfn;

    public zzl(zzd zzdVar, int i) {
        this.zzgfk = zzdVar;
        this.zzgfn = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        zzay zzazVar;
        if (iBinder == null) {
            this.zzgfk.zzce(16);
            return;
        }
        obj = this.zzgfk.zzgeu;
        synchronized (obj) {
            zzd zzdVar = this.zzgfk;
            if (iBinder == null) {
                zzazVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzazVar = (queryLocalInterface == null || !(queryLocalInterface instanceof zzay)) ? new zzaz(iBinder) : (zzay) queryLocalInterface;
            }
            zzdVar.zzgev = zzazVar;
        }
        this.zzgfk.zza(0, (Bundle) null, this.zzgfn);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.zzgfk.zzgeu;
        synchronized (obj) {
            this.zzgfk.zzgev = null;
        }
        this.zzgfk.mHandler.sendMessage(this.zzgfk.mHandler.obtainMessage(6, this.zzgfn, 1));
    }
}
