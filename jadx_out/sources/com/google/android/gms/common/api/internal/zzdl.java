package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdl implements zzdn {
    private /* synthetic */ zzdk zzgbu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdl(zzdk zzdkVar) {
        this.zzgbu = zzdkVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzdn
    public final void zzc(BasePendingResult<?> basePendingResult) {
        this.zzgbu.zzgbs.remove(basePendingResult);
    }
}
