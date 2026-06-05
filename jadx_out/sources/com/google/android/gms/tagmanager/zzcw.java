package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcw extends zzbr {
    private static final String ID = zzbh.INSTALL_REFERRER.toString();
    private static final String zzkmu = zzbi.COMPONENT.toString();
    private final Context zzaiq;

    public zzcw(Context context) {
        super(ID, new String[0]);
        this.zzaiq = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String zzaf = zzcx.zzaf(this.zzaiq, map.get(zzkmu) != null ? zzgk.zzd(map.get(zzkmu)) : null);
        return zzaf != null ? zzgk.zzam(zzaf) : zzgk.zzbil();
    }
}
