package com.google.android.gms.internal;

import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzer extends zzeu {
    private final View zzakh;

    public zzer(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2, View view) {
        super(zzdmVar, str, str2, zzbaVar, i, 57);
        this.zzakh = view;
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzakh != null) {
            zzdt zzdtVar = new zzdt((String) this.zzaku.invoke(null, this.zzakh, this.zzagq.getContext().getResources().getDisplayMetrics()));
            zzbc zzbcVar = new zzbc();
            zzbcVar.zzgc = zzdtVar.zzajt;
            zzbcVar.zzgd = zzdtVar.zzgd;
            zzbcVar.zzge = zzdtVar.zzge;
            this.zzakm.zzet = zzbcVar;
        }
    }
}
