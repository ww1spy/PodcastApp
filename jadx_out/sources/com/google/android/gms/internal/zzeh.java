package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzeh extends zzeu {
    private long zzako;

    public zzeh(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 12);
        this.zzako = -1L;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        this.zzakm.zzdk = -1L;
        this.zzakm.zzdk = (Long) this.zzaku.invoke(null, this.zzagq.getContext());
    }
}
