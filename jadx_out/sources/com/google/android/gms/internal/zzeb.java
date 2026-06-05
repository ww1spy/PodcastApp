package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzeb extends zzeu {
    public zzeb(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 5);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        this.zzakm.zzdd = -1L;
        this.zzakm.zzde = -1L;
        int[] iArr = (int[]) this.zzaku.invoke(null, this.zzagq.getContext());
        synchronized (this.zzakm) {
            this.zzakm.zzdd = Long.valueOf(iArr[0]);
            this.zzakm.zzde = Long.valueOf(iArr[1]);
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrj)).booleanValue() && iArr[2] != Integer.MIN_VALUE) {
                this.zzakm.zzev = Long.valueOf(iArr[2]);
            }
        }
    }
}
