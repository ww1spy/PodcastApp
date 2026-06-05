package com.google.android.gms.tagmanager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzed implements zzfx {
    private /* synthetic */ zzec zzkrg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzed(zzec zzecVar) {
        this.zzkrg = zzecVar;
    }

    @Override // com.google.android.gms.tagmanager.zzfx
    public final void zza(zzbx zzbxVar) {
        this.zzkrg.zzp(zzbxVar.zzbgr());
    }

    @Override // com.google.android.gms.tagmanager.zzfx
    public final void zzb(zzbx zzbxVar) {
        this.zzkrg.zzp(zzbxVar.zzbgr());
        long zzbgr = zzbxVar.zzbgr();
        StringBuilder sb = new StringBuilder(57);
        sb.append("Permanent failure dispatching hitId: ");
        sb.append(zzbgr);
        zzdj.v(sb.toString());
    }

    @Override // com.google.android.gms.tagmanager.zzfx
    public final void zzc(zzbx zzbxVar) {
        com.google.android.gms.common.util.zze zzeVar;
        com.google.android.gms.common.util.zze zzeVar2;
        long zzbgs = zzbxVar.zzbgs();
        if (zzbgs == 0) {
            zzec zzecVar = this.zzkrg;
            long zzbgr = zzbxVar.zzbgr();
            zzeVar2 = this.zzkrg.zzata;
            zzecVar.zzh(zzbgr, zzeVar2.currentTimeMillis());
            return;
        }
        long j = zzbgs + 14400000;
        zzeVar = this.zzkrg.zzata;
        if (j < zzeVar.currentTimeMillis()) {
            this.zzkrg.zzp(zzbxVar.zzbgr());
            long zzbgr2 = zzbxVar.zzbgr();
            StringBuilder sb = new StringBuilder(47);
            sb.append("Giving up on failed hitId: ");
            sb.append(zzbgr2);
            zzdj.v(sb.toString());
        }
    }
}
