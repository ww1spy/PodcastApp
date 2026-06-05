package com.google.android.gms.dynamic;

/* loaded from: classes.dex */
final class zzg implements zzi {
    private /* synthetic */ zza zzhct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zza zzaVar) {
        this.zzhct = zzaVar;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final int getState() {
        return 4;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final void zzb(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.zzhct.zzhcp;
        lifecycleDelegate2.onStart();
    }
}
