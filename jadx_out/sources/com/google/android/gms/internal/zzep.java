package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzep extends zzeu {
    private static final Object zzakj = new Object();
    private static volatile Long zzakr;

    public zzep(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 33);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        if (zzakr == null) {
            synchronized (zzakj) {
                if (zzakr == null) {
                    zzakr = (Long) this.zzaku.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzakm) {
            this.zzakm.zzdy = zzakr;
        }
    }
}
