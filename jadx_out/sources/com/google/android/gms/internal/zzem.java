package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzem extends zzeu {
    private final StackTraceElement[] zzakq;

    public zzem(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzdmVar, str, str2, zzbaVar, i, 45);
        this.zzakq = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzakq != null) {
            zzdk zzdkVar = new zzdk((String) this.zzaku.invoke(null, this.zzakq));
            synchronized (this.zzakm) {
                this.zzakm.zzei = zzdkVar.zzail;
                if (zzdkVar.zzaim.booleanValue()) {
                    this.zzakm.zzeq = Integer.valueOf(!zzdkVar.zzain.booleanValue() ? 1 : 0);
                }
            }
        }
    }
}
