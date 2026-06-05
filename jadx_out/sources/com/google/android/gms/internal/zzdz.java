package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzdz extends zzeu {
    private static volatile String zzaki;
    private static final Object zzakj = new Object();

    public zzdz(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 29);
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        this.zzakm.zzdv = "E";
        if (zzaki == null) {
            synchronized (zzakj) {
                if (zzaki == null) {
                    zzaki = (String) this.zzaku.invoke(null, this.zzagq.getContext());
                }
            }
        }
        synchronized (this.zzakm) {
            this.zzakm.zzdv = zzbv.zza(zzaki.getBytes(), true);
        }
    }
}
