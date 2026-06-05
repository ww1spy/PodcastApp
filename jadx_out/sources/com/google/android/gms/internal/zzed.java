package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzed extends zzeu {
    private long startTime;

    public zzed(zzdm zzdmVar, String str, String str2, zzba zzbaVar, long j, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 25);
        this.startTime = j;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        long longValue = ((Long) this.zzaku.invoke(null, new Object[0])).longValue();
        synchronized (this.zzakm) {
            this.zzakm.zzfg = Long.valueOf(longValue);
            if (this.startTime != 0) {
                this.zzakm.zzdp = Long.valueOf(longValue - this.startTime);
                this.zzakm.zzdu = Long.valueOf(this.startTime);
            }
        }
    }
}
