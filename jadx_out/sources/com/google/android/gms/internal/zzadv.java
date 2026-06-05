package com.google.android.gms.internal;

import android.content.Context;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzadv implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzadt zzcwp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadv(zzadt zzadtVar) {
        this.zzcwp = zzadtVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        Object obj2;
        zzamd zzamdVar;
        String str;
        zzamd zzamdVar2;
        Context context;
        String str2;
        obj2 = this.zzcwp.mLock;
        synchronized (obj2) {
            zzamdVar = this.zzcwp.zzcwl;
            if (zzamdVar.isDone()) {
                return;
            }
            zzadz zzadzVar = new zzadz(-2, map);
            str = this.zzcwp.zzcwj;
            if (str.equals(zzadzVar.getRequestId())) {
                String url = zzadzVar.getUrl();
                if (url == null) {
                    zzahw.zzcz("URL missing in loadAdUrl GMSG.");
                    return;
                }
                if (url.contains("%40mediation_adapters%40")) {
                    context = this.zzcwp.mContext;
                    String str3 = map.get("check_adapters");
                    str2 = this.zzcwp.zzcwk;
                    String replaceAll = url.replaceAll("%40mediation_adapters%40", zzahr.zzc(context, str3, str2));
                    zzadzVar.setUrl(replaceAll);
                    String valueOf = String.valueOf(replaceAll);
                    zzahw.v(valueOf.length() != 0 ? "Ad request URL modified to ".concat(valueOf) : new String("Ad request URL modified to "));
                }
                zzamdVar2 = this.zzcwp.zzcwl;
                zzamdVar2.set(zzadzVar);
            }
        }
    }
}
