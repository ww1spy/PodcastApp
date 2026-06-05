package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzdkj;
import com.google.android.gms.internal.zzdkn;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfg implements zzfh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfg(zzfc zzfcVar) {
    }

    @Override // com.google.android.gms.tagmanager.zzfh
    public final void zza(zzdkn zzdknVar, Set<zzdkj> set, Set<zzdkj> set2, zzer zzerVar) {
        set.addAll(zzdknVar.zzbkh());
        set2.addAll(zzdknVar.zzbki());
        zzerVar.zzbgz();
        zzerVar.zzbha();
    }
}
