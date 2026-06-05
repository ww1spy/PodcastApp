package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzahk {
    private final Object mLock;
    private volatile int zzddw;
    private volatile long zzddx;

    private zzahk() {
        this.mLock = new Object();
        this.zzddw = zzahl.zzddy;
        this.zzddx = 0L;
    }

    private final void zzd(int i, int i2) {
        zzqf();
        long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
        synchronized (this.mLock) {
            if (this.zzddw != i) {
                return;
            }
            this.zzddw = i2;
            if (this.zzddw == zzahl.zzdea) {
                this.zzddx = currentTimeMillis;
            }
        }
    }

    private final void zzqf() {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
        synchronized (this.mLock) {
            if (this.zzddw == zzahl.zzdea) {
                if (this.zzddx + ((Long) zzlc.zzio().zzd(zzoi.zzbvs)).longValue() <= currentTimeMillis) {
                    this.zzddw = zzahl.zzddy;
                }
            }
        }
    }

    public final boolean zzpx() {
        zzqf();
        return this.zzddw == zzahl.zzddz;
    }

    public final boolean zzpy() {
        zzqf();
        return this.zzddw == zzahl.zzdea;
    }

    public final void zzpz() {
        zzd(zzahl.zzddz, zzahl.zzdea);
    }

    public final void zzz(boolean z) {
        int i;
        int i2;
        if (z) {
            i = zzahl.zzddy;
            i2 = zzahl.zzddz;
        } else {
            i = zzahl.zzddz;
            i2 = zzahl.zzddy;
        }
        zzd(i, i2);
    }
}
