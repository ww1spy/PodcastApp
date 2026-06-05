package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbeo {
    private final com.google.android.gms.common.util.zze zzata;
    private long zzfok;
    private zzben zzfom;
    private static final zzbei zzeus = new zzbei("RequestTracker");
    public static final Object zzakj = new Object();
    private long zzfle = -1;
    private long zzfol = 0;

    public zzbeo(com.google.android.gms.common.util.zze zzeVar, long j) {
        this.zzata = zzeVar;
        this.zzfok = j;
    }

    private final void zzagz() {
        this.zzfle = -1L;
        this.zzfom = null;
        this.zzfol = 0L;
    }

    public final void clear() {
        synchronized (zzakj) {
            if (this.zzfle != -1) {
                zzagz();
            }
        }
    }

    public final boolean test(long j) {
        boolean z;
        synchronized (zzakj) {
            z = this.zzfle != -1 && this.zzfle == j;
        }
        return z;
    }

    public final void zza(long j, zzben zzbenVar) {
        zzben zzbenVar2;
        long j2;
        synchronized (zzakj) {
            zzbenVar2 = this.zzfom;
            j2 = this.zzfle;
            this.zzfle = j;
            this.zzfom = zzbenVar;
            this.zzfol = this.zzata.elapsedRealtime();
        }
        if (zzbenVar2 != null) {
            zzbenVar2.zzx(j2);
        }
    }

    public final boolean zzaha() {
        boolean z;
        synchronized (zzakj) {
            z = this.zzfle != -1;
        }
        return z;
    }

    public final boolean zzc(long j, int i, Object obj) {
        boolean z;
        zzben zzbenVar;
        synchronized (zzakj) {
            z = false;
            if (this.zzfle == -1 || this.zzfle != j) {
                zzbenVar = null;
            } else {
                zzeus.zzb("request %d completed", Long.valueOf(this.zzfle));
                zzben zzbenVar2 = this.zzfom;
                zzagz();
                z = true;
                zzbenVar = zzbenVar2;
            }
        }
        if (zzbenVar != null) {
            zzbenVar.zza(j, i, obj);
        }
        return z;
    }

    public final boolean zzd(long j, int i) {
        boolean z;
        long j2;
        zzben zzbenVar;
        synchronized (zzakj) {
            z = true;
            if (this.zzfle == -1 || j - this.zzfol < this.zzfok) {
                j2 = 0;
                z = false;
                zzbenVar = null;
            } else {
                zzeus.zzb("request %d timed out", Long.valueOf(this.zzfle));
                j2 = this.zzfle;
                zzbenVar = this.zzfom;
                zzagz();
            }
        }
        if (zzbenVar != null) {
            zzbenVar.zza(j2, i, null);
        }
        return z;
    }
}
