package com.google.android.gms.tagmanager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzab implements zzac {
    private /* synthetic */ zzy zzkod;
    private Long zzkoe;
    private /* synthetic */ boolean zzkof;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(zzy zzyVar, boolean z) {
        this.zzkod = zzyVar;
        this.zzkof = z;
    }

    @Override // com.google.android.gms.tagmanager.zzac
    public final boolean zzb(Container container) {
        com.google.android.gms.common.util.zze zzeVar;
        zzai zzaiVar;
        if (!this.zzkof) {
            return !container.isDefault();
        }
        long lastRefreshTime = container.getLastRefreshTime();
        if (this.zzkoe == null) {
            zzaiVar = this.zzkod.zzknu;
            this.zzkoe = Long.valueOf(zzaiVar.zzbfw());
        }
        long longValue = lastRefreshTime + this.zzkoe.longValue();
        zzeVar = this.zzkod.zzata;
        return longValue >= zzeVar.currentTimeMillis();
    }
}
