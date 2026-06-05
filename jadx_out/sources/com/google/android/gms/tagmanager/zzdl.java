package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;

/* loaded from: classes.dex */
final class zzdl extends zzbr {
    private static final String ID = zzbh.LOWERCASE_STRING.toString();
    private static final String zzkpn = zzbi.ARG0.toString();

    public zzdl() {
        super(ID, zzkpn);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        return zzgk.zzam(zzgk.zzd(map.get(zzkpn)).toLowerCase());
    }
}
