package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzdkf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzad implements zzdi<zzdkf> {
    private /* synthetic */ zzy zzkod;

    private zzad(zzy zzyVar) {
        this.zzkod = zzyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzad(zzy zzyVar, zzz zzzVar) {
        this(zzyVar);
    }

    @Override // com.google.android.gms.tagmanager.zzdi
    public final /* synthetic */ void onSuccess(zzdkf zzdkfVar) {
        com.google.android.gms.internal.zzbs zzbsVar;
        zzdkf zzdkfVar2 = zzdkfVar;
        if (zzdkfVar2.zzldm != null) {
            zzbsVar = zzdkfVar2.zzldm;
        } else {
            com.google.android.gms.internal.zzbp zzbpVar = zzdkfVar2.zzyi;
            com.google.android.gms.internal.zzbs zzbsVar2 = new com.google.android.gms.internal.zzbs();
            zzbsVar2.zzyi = zzbpVar;
            zzbsVar2.zzyh = null;
            zzbsVar2.zzyj = zzbpVar.version;
            zzbsVar = zzbsVar2;
        }
        this.zzkod.zza(zzbsVar, zzdkfVar2.zzldl, true);
    }

    @Override // com.google.android.gms.tagmanager.zzdi
    public final void zzbfu() {
    }

    @Override // com.google.android.gms.tagmanager.zzdi
    public final void zzex(int i) {
        boolean z;
        z = this.zzkod.zzkny;
        if (z) {
            return;
        }
        this.zzkod.zzbg(0L);
    }
}
