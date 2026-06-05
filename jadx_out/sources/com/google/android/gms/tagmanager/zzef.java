package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* loaded from: classes.dex */
final class zzef extends zzbr {
    private static final String ID = zzbh.PLATFORM.toString();
    private static final com.google.android.gms.internal.zzbt zzkrj = zzgk.zzam("Android");

    public zzef() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        return zzkrj;
    }
}
