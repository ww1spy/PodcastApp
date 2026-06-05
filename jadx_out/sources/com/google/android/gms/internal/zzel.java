package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzel extends zzeu {
    public zzel(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 61);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzaku.invoke(null, this.zzagq.getContext(), Boolean.valueOf(this.zzagq.zzal()))).longValue();
        synchronized (this.zzakm) {
            this.zzakm.zzex = Long.valueOf(longValue);
        }
    }
}
