package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzeo extends zzeu {
    private final zzdu zzahu;

    public zzeo(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2, zzdu zzduVar) {
        super(zzdmVar, str, str2, zzbaVar, i, 53);
        this.zzahu = zzduVar;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzahu != null) {
            this.zzakm.zzen = (Long) this.zzaku.invoke(null, Long.valueOf(this.zzahu.zzau()));
        }
    }
}
