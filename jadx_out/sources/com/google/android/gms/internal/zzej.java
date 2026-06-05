package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzej extends zzeu {
    public zzej(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 3);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzakm) {
            zzcz zzczVar = new zzcz((String) this.zzaku.invoke(null, this.zzagq.getContext()));
            synchronized (this.zzakm) {
                this.zzakm.zzdb = Long.valueOf(zzczVar.zzaif);
                this.zzakm.zzew = Long.valueOf(zzczVar.zzaig);
            }
        }
    }
}
