package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbt extends zzdz {
    private static final String ID = zzbh.GREATER_EQUALS.toString();

    public zzbt() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdz
    protected final boolean zza(zzgj zzgjVar, zzgj zzgjVar2, Map<String, com.google.android.gms.internal.zzbt> map) {
        return zzgjVar.compareTo(zzgjVar2) >= 0;
    }
}
