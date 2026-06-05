package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzeq extends zzeu {
    public zzeq(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 48);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        zzba zzbaVar;
        int i;
        this.zzakm.zzej = 2;
        boolean booleanValue = ((Boolean) this.zzaku.invoke(null, this.zzagq.getContext())).booleanValue();
        synchronized (this.zzakm) {
            try {
                if (booleanValue) {
                    zzbaVar = this.zzakm;
                    i = 1;
                } else {
                    zzbaVar = this.zzakm;
                    i = 0;
                }
                zzbaVar.zzej = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
