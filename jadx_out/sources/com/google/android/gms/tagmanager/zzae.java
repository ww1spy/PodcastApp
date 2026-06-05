package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzae implements zzdi<com.google.android.gms.internal.zzbs> {
    private /* synthetic */ zzy zzkod;

    private zzae(zzy zzyVar) {
        this.zzkod = zzyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzae(zzy zzyVar, zzz zzzVar) {
        this(zzyVar);
    }

    @Override // com.google.android.gms.tagmanager.zzdi
    public final /* synthetic */ void onSuccess(com.google.android.gms.internal.zzbs zzbsVar) {
        zzai zzaiVar;
        com.google.android.gms.common.util.zze zzeVar;
        long j;
        boolean zzbft;
        com.google.android.gms.internal.zzbs zzbsVar2;
        com.google.android.gms.internal.zzbs zzbsVar3;
        zzai zzaiVar2;
        com.google.android.gms.internal.zzbs zzbsVar4 = zzbsVar;
        zzaiVar = this.zzkod.zzknu;
        zzaiVar.zzbfz();
        synchronized (this.zzkod) {
            if (zzbsVar4.zzyi == null) {
                zzbsVar2 = this.zzkod.zzknz;
                if (zzbsVar2.zzyi == null) {
                    zzdj.e("Current resource is null; network resource is also null");
                    zzaiVar2 = this.zzkod.zzknu;
                    this.zzkod.zzbg(zzaiVar2.zzbfx());
                    return;
                }
                zzbsVar3 = this.zzkod.zzknz;
                zzbsVar4.zzyi = zzbsVar3.zzyi;
            }
            zzy zzyVar = this.zzkod;
            zzeVar = this.zzkod.zzata;
            zzyVar.zza(zzbsVar4, zzeVar.currentTimeMillis(), false);
            j = this.zzkod.zzknh;
            StringBuilder sb = new StringBuilder(58);
            sb.append("setting refresh time to current time: ");
            sb.append(j);
            zzdj.v(sb.toString());
            zzbft = this.zzkod.zzbft();
            if (!zzbft) {
                this.zzkod.zza(zzbsVar4);
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdi
    public final void zzbfu() {
    }

    @Override // com.google.android.gms.tagmanager.zzdi
    public final void zzex(int i) {
        zzai zzaiVar;
        zzv zzvVar;
        zzy zzyVar;
        ContainerHolder zzb;
        zzai zzaiVar2;
        if (i == zzda.zzkqq) {
            zzaiVar2 = this.zzkod.zzknu;
            zzaiVar2.zzbfy();
        }
        synchronized (this.zzkod) {
            if (!this.zzkod.isReady()) {
                zzvVar = this.zzkod.zzknx;
                if (zzvVar != null) {
                    zzyVar = this.zzkod;
                    zzb = this.zzkod.zzknx;
                } else {
                    zzyVar = this.zzkod;
                    zzb = this.zzkod.zzb(Status.zzftt);
                }
                zzyVar.setResult(zzb);
            }
        }
        zzaiVar = this.zzkod.zzknu;
        this.zzkod.zzbg(zzaiVar.zzbfx());
    }
}
