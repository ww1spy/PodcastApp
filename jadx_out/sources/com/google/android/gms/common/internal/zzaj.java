package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaj implements ServiceConnection {
    private ComponentName mComponentName;
    private IBinder zzgfp;
    private boolean zzghb;
    private final zzah zzghc;
    private /* synthetic */ zzai zzghd;
    private final Set<ServiceConnection> zzgha = new HashSet();
    private int mState = 2;

    public zzaj(zzai zzaiVar, zzah zzahVar) {
        this.zzghd = zzaiVar;
        this.zzghc = zzahVar;
    }

    public final IBinder getBinder() {
        return this.zzgfp;
    }

    public final ComponentName getComponentName() {
        return this.mComponentName;
    }

    public final int getState() {
        return this.mState;
    }

    public final boolean isBound() {
        return this.zzghb;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.zzghd.zzggw;
        synchronized (hashMap) {
            handler = this.zzghd.mHandler;
            handler.removeMessages(1, this.zzghc);
            this.zzgfp = iBinder;
            this.mComponentName = componentName;
            Iterator<ServiceConnection> it = this.zzgha.iterator();
            while (it.hasNext()) {
                it.next().onServiceConnected(componentName, iBinder);
            }
            this.mState = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.zzghd.zzggw;
        synchronized (hashMap) {
            handler = this.zzghd.mHandler;
            handler.removeMessages(1, this.zzghc);
            this.zzgfp = null;
            this.mComponentName = componentName;
            Iterator<ServiceConnection> it = this.zzgha.iterator();
            while (it.hasNext()) {
                it.next().onServiceDisconnected(componentName);
            }
            this.mState = 2;
        }
    }

    public final void zza(ServiceConnection serviceConnection, String str) {
        Context context;
        com.google.android.gms.common.stats.zza unused;
        Context unused2;
        unused = this.zzghd.zzggx;
        unused2 = this.zzghd.mApplicationContext;
        zzah zzahVar = this.zzghc;
        context = this.zzghd.mApplicationContext;
        zzahVar.zzcq(context);
        this.zzgha.add(serviceConnection);
    }

    public final boolean zza(ServiceConnection serviceConnection) {
        return this.zzgha.contains(serviceConnection);
    }

    public final boolean zzamv() {
        return this.zzgha.isEmpty();
    }

    public final void zzb(ServiceConnection serviceConnection, String str) {
        com.google.android.gms.common.stats.zza unused;
        Context unused2;
        unused = this.zzghd.zzggx;
        unused2 = this.zzghd.mApplicationContext;
        this.zzgha.remove(serviceConnection);
    }

    public final void zzgr(String str) {
        com.google.android.gms.common.stats.zza zzaVar;
        Context context;
        Context context2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        com.google.android.gms.common.stats.zza unused;
        this.mState = 3;
        zzaVar = this.zzghd.zzggx;
        context = this.zzghd.mApplicationContext;
        zzah zzahVar = this.zzghc;
        context2 = this.zzghd.mApplicationContext;
        this.zzghb = zzaVar.zza(context, str, zzahVar.zzcq(context2), this, this.zzghc.zzamu());
        if (this.zzghb) {
            handler = this.zzghd.mHandler;
            Message obtainMessage = handler.obtainMessage(1, this.zzghc);
            handler2 = this.zzghd.mHandler;
            j = this.zzghd.zzggz;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.mState = 2;
        try {
            unused = this.zzghd.zzggx;
            context3 = this.zzghd.mApplicationContext;
            context3.unbindService(this);
        } catch (IllegalArgumentException unused2) {
        }
    }

    public final void zzgs(String str) {
        Handler handler;
        Context context;
        com.google.android.gms.common.stats.zza unused;
        handler = this.zzghd.mHandler;
        handler.removeMessages(1, this.zzghc);
        unused = this.zzghd.zzggx;
        context = this.zzghd.mApplicationContext;
        context.unbindService(this);
        this.zzghb = false;
        this.mState = 2;
    }
}
