package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzamh;
import com.google.android.gms.internal.zzamj;

/* loaded from: classes.dex */
public final class zzaa extends zzamj<zzaj> {
    private final Object mLock = new Object();
    private final zzae zzcga;
    private boolean zzcgb;

    public zzaa(zzae zzaeVar) {
        this.zzcga = zzaeVar;
    }

    public final void release() {
        synchronized (this.mLock) {
            if (this.zzcgb) {
                return;
            }
            this.zzcgb = true;
            zza(new zzab(this), new zzamh());
            zza(new zzac(this), new zzad(this));
        }
    }
}
