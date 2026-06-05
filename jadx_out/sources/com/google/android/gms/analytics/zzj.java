package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zzj;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Hide
/* loaded from: classes.dex */
public class zzj<T extends zzj> {
    private final zzk zzdvh;

    @Hide
    protected final zzg zzdvi;
    private final List<zzh> zzdvj;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzj(zzk zzkVar, com.google.android.gms.common.util.zze zzeVar) {
        zzbq.checkNotNull(zzkVar);
        this.zzdvh = zzkVar;
        this.zzdvj = new ArrayList();
        zzg zzgVar = new zzg(this, zzeVar);
        zzgVar.zzwf();
        this.zzdvi = zzgVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public void zza(zzg zzgVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final void zzd(zzg zzgVar) {
        Iterator<zzh> it = this.zzdvj.iterator();
        while (it.hasNext()) {
            it.next().zza(this, zzgVar);
        }
    }

    @Hide
    public zzg zzvs() {
        zzg zzvx = this.zzdvi.zzvx();
        zzd(zzvx);
        return zzvx;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final zzk zzwg() {
        return this.zzdvh;
    }
}
