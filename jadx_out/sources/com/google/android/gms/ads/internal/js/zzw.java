package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzami;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzw implements zzami<zzc> {
    private /* synthetic */ zzn zzcfu;
    private /* synthetic */ zzae zzcfx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(zzn zznVar, zzae zzaeVar) {
        this.zzcfu = zznVar;
        this.zzcfx = zzaeVar;
    }

    @Override // com.google.android.gms.internal.zzami
    public final /* synthetic */ void zze(zzc zzcVar) {
        Object obj;
        zzae zzaeVar;
        zzae zzaeVar2;
        zzae zzaeVar3;
        obj = this.zzcfu.mLock;
        synchronized (obj) {
            this.zzcfu.zzcfl = 0;
            zzaeVar = this.zzcfu.zzcfk;
            if (zzaeVar != null) {
                zzae zzaeVar4 = this.zzcfx;
                zzaeVar2 = this.zzcfu.zzcfk;
                if (zzaeVar4 != zzaeVar2) {
                    zzahw.v("New JS engine is loaded, marking previous one as destroyable.");
                    zzaeVar3 = this.zzcfu.zzcfk;
                    zzaeVar3.zzmc();
                }
            }
            this.zzcfu.zzcfk = this.zzcfx;
        }
    }
}
