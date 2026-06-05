package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaz extends zzgi {
    private static final String ID = zzbh.DATA_LAYER_WRITE.toString();
    private static final String VALUE = zzbi.VALUE.toString();
    private static final String zzkpd = zzbi.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final DataLayer zzknd;

    public zzaz(DataLayer dataLayer) {
        super(ID, VALUE);
        this.zzknd = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzgi
    public final void zzz(Map<String, com.google.android.gms.internal.zzbt> map) {
        String zzd;
        com.google.android.gms.internal.zzbt zzbtVar = map.get(VALUE);
        if (zzbtVar != null && zzbtVar != zzgk.zzbif()) {
            Object zzi = zzgk.zzi(zzbtVar);
            if (zzi instanceof List) {
                for (Object obj : (List) zzi) {
                    if (obj instanceof Map) {
                        this.zzknd.push((Map) obj);
                    }
                }
            }
        }
        com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkpd);
        if (zzbtVar2 == null || zzbtVar2 == zzgk.zzbif() || (zzd = zzgk.zzd(zzbtVar2)) == zzgk.zzbik()) {
            return;
        }
        this.zzknd.zzlm(zzd);
    }
}
