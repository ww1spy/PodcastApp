package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@zzabh
/* loaded from: classes.dex */
public class zzamj<T> implements zzamf<T> {
    private final Object mLock = new Object();
    private int zzcfl = 0;
    private BlockingQueue<zzamk> zzdkd = new LinkedBlockingQueue();
    private T zzdke;

    public final int getStatus() {
        return this.zzcfl;
    }

    public final void reject() {
        synchronized (this.mLock) {
            if (this.zzcfl != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzcfl = -1;
            Iterator it = this.zzdkd.iterator();
            while (it.hasNext()) {
                ((zzamk) it.next()).zzdkg.run();
            }
            this.zzdkd.clear();
        }
    }

    @Override // com.google.android.gms.internal.zzamf
    public final void zza(zzami<T> zzamiVar, zzamg zzamgVar) {
        synchronized (this.mLock) {
            if (this.zzcfl == 1) {
                zzamiVar.zze(this.zzdke);
            } else if (this.zzcfl == -1) {
                zzamgVar.run();
            } else if (this.zzcfl == 0) {
                this.zzdkd.add(new zzamk(this, zzamiVar, zzamgVar));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzamf
    public final void zzj(T t) {
        synchronized (this.mLock) {
            if (this.zzcfl != 0) {
                throw new UnsupportedOperationException();
            }
            this.zzdke = t;
            this.zzcfl = 1;
            Iterator it = this.zzdkd.iterator();
            while (it.hasNext()) {
                ((zzamk) it.next()).zzdkf.zze(t);
            }
            this.zzdkd.clear();
        }
    }
}
