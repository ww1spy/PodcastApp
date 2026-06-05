package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdf extends zzdz {
    private static final String ID = zzbh.LESS_EQUALS.toString();

    public zzdf() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdz
    protected final boolean zza(zzgj zzgjVar, zzgj zzgjVar2, Map<String, com.google.android.gms.internal.zzbt> map) {
        return zzgjVar.compareTo(zzgjVar2) <= 0;
    }
}
