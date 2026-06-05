package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzami;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaf implements zzami<zzc> {
    private /* synthetic */ zzaa zzcgf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(zzae zzaeVar, zzaa zzaaVar) {
        this.zzcgf = zzaaVar;
    }

    @Override // com.google.android.gms.internal.zzami
    public final /* synthetic */ void zze(zzc zzcVar) {
        zzahw.v("Getting a new session for JS Engine.");
        this.zzcgf.zzj(zzcVar.zzly());
    }
}
