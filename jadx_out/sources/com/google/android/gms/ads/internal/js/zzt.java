package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzakf;
import com.google.android.gms.internal.zzcv;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzt implements com.google.android.gms.ads.internal.gmsg.zzt<zzaj> {
    private /* synthetic */ zzc zzcft;
    private /* synthetic */ zzn zzcfu;
    private /* synthetic */ zzcv zzcfv;
    private /* synthetic */ zzakf zzcfw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(zzn zznVar, zzcv zzcvVar, zzc zzcVar, zzakf zzakfVar) {
        this.zzcfu = zznVar;
        this.zzcfv = zzcvVar;
        this.zzcft = zzcVar;
        this.zzcfw = zzakfVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaj zzajVar, Map map) {
        Object obj;
        int i;
        obj = this.zzcfu.mLock;
        synchronized (obj) {
            zzahw.zzcy("JS Engine is requesting an update");
            i = this.zzcfu.zzcfl;
            if (i == 0) {
                zzahw.zzcy("Starting reload.");
                this.zzcfu.zzcfl = 2;
                this.zzcfu.zza(this.zzcfv);
            }
            this.zzcft.zzb("/requestReload", (com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj>) this.zzcfw.get());
        }
    }
}
