package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzog {
    private Context zzbky;
    private final Object mLock = new Object();
    private final ConditionVariable zzbkw = new ConditionVariable();
    private volatile boolean zzarf = false;

    @Nullable
    private SharedPreferences zzbkx = null;

    public final void initialize(Context context) {
        if (this.zzarf) {
            return;
        }
        synchronized (this.mLock) {
            if (this.zzarf) {
                return;
            }
            this.zzbky = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                Context remoteContext = com.google.android.gms.common.zzs.getRemoteContext(context);
                if (remoteContext == null && context != null && (remoteContext = context.getApplicationContext()) == null) {
                    remoteContext = context;
                }
                if (remoteContext == null) {
                    return;
                }
                zzlc.zzim();
                this.zzbkx = remoteContext.getSharedPreferences("google_ads_flags", 0);
                this.zzarf = true;
            } finally {
                this.zzbkw.open();
            }
        }
    }

    public final <T> T zzd(zzny<T> zznyVar) {
        if (!this.zzbkw.block(5000L)) {
            throw new IllegalStateException("Flags.initialize() was not called!");
        }
        if (!this.zzarf || this.zzbkx == null) {
            synchronized (this.mLock) {
                if (this.zzarf && this.zzbkx != null) {
                }
                return zznyVar.zzje();
            }
        }
        return (T) zzakg.zza(this.zzbky, new zzoh(this, zznyVar));
    }
}
