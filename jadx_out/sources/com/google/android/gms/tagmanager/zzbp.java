package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbp extends zzbr {
    private static final String ID = zzbh.EVENT.toString();
    private final zzfc zzkne;

    public zzbp(zzfc zzfcVar) {
        super(ID, new String[0]);
        this.zzkne = zzfcVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String zzbho = this.zzkne.zzbho();
        return zzbho == null ? zzgk.zzbil() : zzgk.zzam(zzbho);
    }
}
