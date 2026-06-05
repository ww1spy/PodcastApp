package com.google.android.gms.tagmanager;

import java.util.Map;

/* loaded from: classes.dex */
abstract class zzdz extends zzeg {
    public zzdz(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzeg
    protected final boolean zza(com.google.android.gms.internal.zzbt zzbtVar, com.google.android.gms.internal.zzbt zzbtVar2, Map<String, com.google.android.gms.internal.zzbt> map) {
        zzgj zze = zzgk.zze(zzbtVar);
        zzgj zze2 = zzgk.zze(zzbtVar2);
        if (zze == zzgk.zzbij() || zze2 == zzgk.zzbij()) {
            return false;
        }
        return zza(zze, zze2, map);
    }

    protected abstract boolean zza(zzgj zzgjVar, zzgj zzgjVar2, Map<String, com.google.android.gms.internal.zzbt> map);
}
