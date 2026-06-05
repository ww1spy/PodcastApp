package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzadw implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzadt zzcwp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadw(zzadt zzadtVar) {
        this.zzcwp = zzadtVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        Object obj2;
        zzamd zzamdVar;
        String str;
        zzamd zzamdVar2;
        obj2 = this.zzcwp.mLock;
        synchronized (obj2) {
            zzamdVar = this.zzcwp.zzcwl;
            if (zzamdVar.isDone()) {
                return;
            }
            zzadz zzadzVar = new zzadz(-2, map);
            str = this.zzcwp.zzcwj;
            if (str.equals(zzadzVar.getRequestId())) {
                zzamdVar2 = this.zzcwp.zzcwl;
                zzamdVar2.set(zzadzVar);
            }
        }
    }
}
