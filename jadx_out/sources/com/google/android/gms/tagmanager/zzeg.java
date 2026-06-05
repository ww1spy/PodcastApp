package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbi;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Hide
/* loaded from: classes.dex */
public abstract class zzeg extends zzbr {
    private static final String zzkpn = zzbi.ARG0.toString();
    private static final String zzkrk = zzbi.ARG1.toString();

    public zzeg(String str) {
        super(str, zzkpn, zzkrk);
    }

    protected abstract boolean zza(com.google.android.gms.internal.zzbt zzbtVar, com.google.android.gms.internal.zzbt zzbtVar2, Map<String, com.google.android.gms.internal.zzbt> map);

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ String zzbgp() {
        return super.zzbgp();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ Set zzbgq() {
        return super.zzbgq();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        boolean z;
        Iterator<com.google.android.gms.internal.zzbt> it = map.values().iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkpn);
                com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkrk);
                if (zzbtVar != null && zzbtVar2 != null) {
                    z = zza(zzbtVar, zzbtVar2, map);
                }
            } else if (it.next() == zzgk.zzbil()) {
                break;
            }
        }
        return zzgk.zzam(Boolean.valueOf(z));
    }
}
