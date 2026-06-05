package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzami;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzac implements zzami<zzaj> {
    private /* synthetic */ zzaa zzcgc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(zzaa zzaaVar) {
        this.zzcgc = zzaaVar;
    }

    @Override // com.google.android.gms.internal.zzami
    public final /* synthetic */ void zze(zzaj zzajVar) {
        zzae zzaeVar;
        zzahw.v("Releasing engine reference.");
        zzaeVar = this.zzcgc.zzcga;
        zzaeVar.zzmb();
    }
}
