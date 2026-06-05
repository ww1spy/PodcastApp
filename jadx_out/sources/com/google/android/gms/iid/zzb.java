package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzcyy;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Hide
/* loaded from: classes.dex */
public abstract class zzb extends Service {
    private Binder zzimd;
    private int zzime;

    @VisibleForTesting
    final ExecutorService zzimc = Executors.newSingleThreadExecutor();
    private final Object mLock = new Object();
    private int zzimf = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(Intent intent) {
        if (intent != null) {
            zzcyy.completeWakefulIntent(intent);
        }
        synchronized (this.mLock) {
            this.zzimf--;
            if (this.zzimf == 0) {
                stopSelfResult(this.zzime);
            }
        }
    }

    @Hide
    public abstract void handleIntent(Intent intent);

    @Override // android.app.Service
    @Hide
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.zzimd == null) {
            this.zzimd = new zzf(this);
        }
        return this.zzimd;
    }

    @Override // android.app.Service
    @Hide
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.mLock) {
            this.zzime = i2;
            this.zzimf++;
        }
        if (intent == null) {
            zzh(intent);
            return 2;
        }
        this.zzimc.execute(new zzc(this, intent, intent));
        return 3;
    }
}
