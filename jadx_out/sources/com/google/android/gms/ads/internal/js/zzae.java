package com.google.android.gms.ads.internal.js;

import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzajm;
import com.google.android.gms.internal.zzamh;
import com.google.android.gms.internal.zzamj;

/* loaded from: classes.dex */
public final class zzae extends zzamj<zzc> {
    private zzajm<zzc> zzcfj;
    private final Object mLock = new Object();
    private boolean zzcgd = false;
    private int zzcge = 0;

    public zzae(zzajm<zzc> zzajmVar) {
        this.zzcfj = zzajmVar;
    }

    private final void zzmd() {
        synchronized (this.mLock) {
            zzbq.checkState(this.zzcge >= 0);
            if (this.zzcgd && this.zzcge == 0) {
                zzahw.v("No reference is left (including root). Cleaning up engine.");
                zza(new zzah(this), new zzamh());
            } else {
                zzahw.v("There are still references to the engine. Not destroying.");
            }
        }
    }

    public final zzaa zzma() {
        zzaa zzaaVar = new zzaa(this);
        synchronized (this.mLock) {
            zza(new zzaf(this, zzaaVar), new zzag(this, zzaaVar));
            zzbq.checkState(this.zzcge >= 0);
            this.zzcge++;
        }
        return zzaaVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzmb() {
        synchronized (this.mLock) {
            zzbq.checkState(this.zzcge > 0);
            zzahw.v("Releasing 1 reference for JS Engine");
            this.zzcge--;
            zzmd();
        }
    }

    public final void zzmc() {
        synchronized (this.mLock) {
            zzbq.checkState(this.zzcge >= 0);
            zzahw.v("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.zzcgd = true;
            zzmd();
        }
    }
}
