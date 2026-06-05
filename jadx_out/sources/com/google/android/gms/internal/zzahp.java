package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahp {
    private final Object mLock;
    private final zzahq zzatv;
    private final String zzdcz;
    private int zzdek;
    private int zzdel;

    private zzahp(zzahq zzahqVar, String str) {
        this.mLock = new Object();
        this.zzatv = zzahqVar;
        this.zzdcz = str;
    }

    public zzahp(String str) {
        this(com.google.android.gms.ads.internal.zzbt.zzeq(), str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzahp zzahpVar = (zzahp) obj;
        return this.zzdcz != null ? this.zzdcz.equals(zzahpVar.zzdcz) : zzahpVar.zzdcz == null;
    }

    public final int hashCode() {
        if (this.zzdcz != null) {
            return this.zzdcz.hashCode();
        }
        return 0;
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.mLock) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.zzdek);
            bundle.putInt("pmnll", this.zzdel);
        }
        return bundle;
    }

    public final void zze(int i, int i2) {
        synchronized (this.mLock) {
            this.zzdek = i;
            this.zzdel = i2;
            this.zzatv.zza(this);
        }
    }

    public final String zzqh() {
        return this.zzdcz;
    }
}
