package com.google.android.gms.internal;

import android.content.Context;

@zzabh
/* loaded from: classes.dex */
public final class zzagl implements zzagr {
    private zzags zzdbm;

    public zzagl(zzags zzagsVar) {
        this.zzdbm = zzagsVar;
    }

    @Override // com.google.android.gms.internal.zzagr
    public final zzagq zza(Context context, zzala zzalaVar, zzacj zzacjVar) {
        if (zzacjVar.zzcui == null) {
            return null;
        }
        return new zzagf(context, zzalaVar, zzacjVar.zzcui, zzacjVar.zzcno, this.zzdbm);
    }
}
