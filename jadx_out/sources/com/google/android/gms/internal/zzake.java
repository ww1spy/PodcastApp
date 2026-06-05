package com.google.android.gms.internal;

@zzabh
/* loaded from: classes.dex */
public final class zzake {
    private long zzdhr;
    private long zzdhs = Long.MIN_VALUE;
    private Object mLock = new Object();

    public zzake(long j) {
        this.zzdhr = j;
    }

    public final boolean tryAcquire() {
        synchronized (this.mLock) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime();
            if (this.zzdhs + this.zzdhr > elapsedRealtime) {
                return false;
            }
            this.zzdhs = elapsedRealtime;
            return true;
        }
    }
}
