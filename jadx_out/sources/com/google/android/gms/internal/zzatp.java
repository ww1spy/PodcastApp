package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzatp {
    private long mStartTime;
    private final com.google.android.gms.common.util.zze zzata;

    public zzatp(com.google.android.gms.common.util.zze zzeVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzeVar);
        this.zzata = zzeVar;
    }

    public zzatp(com.google.android.gms.common.util.zze zzeVar, long j) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzeVar);
        this.zzata = zzeVar;
        this.mStartTime = j;
    }

    public final void clear() {
        this.mStartTime = 0L;
    }

    public final void start() {
        this.mStartTime = this.zzata.elapsedRealtime();
    }

    public final boolean zzu(long j) {
        return this.mStartTime == 0 || this.zzata.elapsedRealtime() - this.mStartTime > j;
    }
}
