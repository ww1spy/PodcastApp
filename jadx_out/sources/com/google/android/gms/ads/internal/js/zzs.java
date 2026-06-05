package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzajm;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzs implements com.google.android.gms.ads.internal.gmsg.zzt<zzaj> {
    private /* synthetic */ zzae zzcfs;
    private /* synthetic */ zzc zzcft;
    private /* synthetic */ zzn zzcfu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(zzn zznVar, zzae zzaeVar, zzc zzcVar) {
        this.zzcfu = zznVar;
        this.zzcfs = zzaeVar;
        this.zzcft = zzcVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaj zzajVar, Map map) {
        Object obj;
        zzajm zzajmVar;
        obj = this.zzcfu.mLock;
        synchronized (obj) {
            if (this.zzcfs.getStatus() != -1 && this.zzcfs.getStatus() != 1) {
                this.zzcfu.zzcfl = 0;
                zzajmVar = this.zzcfu.zzcfi;
                zzajmVar.zze(this.zzcft);
                this.zzcfs.zzj(this.zzcft);
                this.zzcfu.zzcfk = this.zzcfs;
                zzahw.v("Successfully loaded JS Engine.");
            }
        }
    }
}
