package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzei extends zzeu {
    private static final Object zzakj = new Object();
    private static volatile String zzda;

    public zzei(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 1);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        this.zzakm.zzda = "E";
        if (zzda == null) {
            synchronized (zzakj) {
                if (zzda == null) {
                    zzda = (String) this.zzaku.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzakm) {
            this.zzakm.zzda = zzda;
        }
    }
}
