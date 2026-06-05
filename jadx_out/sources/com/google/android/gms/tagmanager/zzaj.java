package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzaj extends zzbr {
    private static final String ID = zzbh.CONTAINER_VERSION.toString();
    private final String zzfli;

    public zzaj(String str) {
        super(ID, new String[0]);
        this.zzfli = str;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        return this.zzfli == null ? zzgk.zzbil() : zzgk.zzam(this.zzfli);
    }
}
