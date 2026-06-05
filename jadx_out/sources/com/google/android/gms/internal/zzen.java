package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzen extends zzeu {
    public zzen(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 51);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzakm) {
            zzdl zzdlVar = new zzdl((String) this.zzaku.invoke(null, new Object[0]));
            this.zzakm.zzel = zzdlVar.zzaio;
            this.zzakm.zzem = zzdlVar.zzaip;
        }
    }
}
