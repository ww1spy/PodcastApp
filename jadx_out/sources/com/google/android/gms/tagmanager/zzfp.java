package com.google.android.gms.tagmanager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfp implements zzcd {
    private /* synthetic */ zzfo zzktv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfp(zzfo zzfoVar) {
        this.zzktv = zzfoVar;
    }

    @Override // com.google.android.gms.tagmanager.zzcd
    public final void zzbz(boolean z) {
        boolean z2;
        zzfo zzfoVar = this.zzktv;
        z2 = this.zzktv.connected;
        zzfoVar.zzd(z, z2);
    }
}
