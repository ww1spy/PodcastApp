package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzas extends zzbr {
    private static final String ID = zzbh.CUSTOM_VAR.toString();
    private static final String NAME = zzbi.NAME.toString();
    private static final String zzkos = zzbi.DEFAULT_VALUE.toString();
    private final DataLayer zzknd;

    public zzas(DataLayer dataLayer) {
        super(ID, NAME);
        this.zzknd = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        Object obj = this.zzknd.get(zzgk.zzd(map.get(NAME)));
        if (obj != null) {
            return zzgk.zzam(obj);
        }
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkos);
        return zzbtVar != null ? zzbtVar : zzgk.zzbil();
    }
}
