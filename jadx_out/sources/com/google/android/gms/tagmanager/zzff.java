package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzdkj;
import com.google.android.gms.internal.zzdkn;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzff implements zzfh {
    private /* synthetic */ Map zzksw;
    private /* synthetic */ Map zzksx;
    private /* synthetic */ Map zzksy;
    private /* synthetic */ Map zzksz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzff(zzfc zzfcVar, Map map, Map map2, Map map3, Map map4) {
        this.zzksw = map;
        this.zzksx = map2;
        this.zzksy = map3;
        this.zzksz = map4;
    }

    @Override // com.google.android.gms.tagmanager.zzfh
    public final void zza(zzdkn zzdknVar, Set<zzdkj> set, Set<zzdkj> set2, zzer zzerVar) {
        List list = (List) this.zzksw.get(zzdknVar);
        this.zzksx.get(zzdknVar);
        if (list != null) {
            set.addAll(list);
            zzerVar.zzbgx();
        }
        List list2 = (List) this.zzksy.get(zzdknVar);
        this.zzksz.get(zzdknVar);
        if (list2 != null) {
            set2.addAll(list2);
            zzerVar.zzbgy();
        }
    }
}
