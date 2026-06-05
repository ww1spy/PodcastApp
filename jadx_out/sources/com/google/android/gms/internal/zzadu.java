package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzadu implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzadt zzcwp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadu(zzadt zzadtVar) {
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
            str = this.zzcwp.zzcwj;
            if (str.equals(map.get("request_id"))) {
                zzadz zzadzVar = new zzadz(1, map);
                String type = zzadzVar.getType();
                String valueOf = String.valueOf(zzadzVar.zzog());
                StringBuilder sb = new StringBuilder(24 + String.valueOf(type).length() + String.valueOf(valueOf).length());
                sb.append("Invalid ");
                sb.append(type);
                sb.append(" request error: ");
                sb.append(valueOf);
                zzahw.zzcz(sb.toString());
                zzamdVar2 = this.zzcwp.zzcwl;
                zzamdVar2.set(zzadzVar);
            }
        }
    }
}
