package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaoo implements Callable<zzaof> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzcv zzcfv;
    private /* synthetic */ zzaqa zzdqb;
    private /* synthetic */ String zzdqc;
    private /* synthetic */ boolean zzdqd;
    private /* synthetic */ boolean zzdqe;
    private /* synthetic */ zzala zzdqf;
    private /* synthetic */ zzov zzdqg;
    private /* synthetic */ com.google.android.gms.ads.internal.zzbm zzdqh;
    private /* synthetic */ com.google.android.gms.ads.internal.zzv zzdqi;
    private /* synthetic */ zziu zzdqj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaoo(zzaol zzaolVar, Context context, zzaqa zzaqaVar, String str, boolean z, boolean z2, zzcv zzcvVar, zzala zzalaVar, zzov zzovVar, com.google.android.gms.ads.internal.zzbm zzbmVar, com.google.android.gms.ads.internal.zzv zzvVar, zziu zziuVar) {
        this.val$context = context;
        this.zzdqb = zzaqaVar;
        this.zzdqc = str;
        this.zzdqd = z;
        this.zzdqe = z2;
        this.zzcfv = zzcvVar;
        this.zzdqf = zzalaVar;
        this.zzdqg = zzovVar;
        this.zzdqh = zzbmVar;
        this.zzdqi = zzvVar;
        this.zzdqj = zziuVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzaof call() throws Exception {
        zzaoq zzaoqVar = new zzaoq(zzaor.zzb(this.val$context, this.zzdqb, this.zzdqc, this.zzdqd, this.zzdqe, this.zzcfv, this.zzdqf, this.zzdqg, this.zzdqh, this.zzdqi, this.zzdqj));
        zzaoqVar.setWebViewClient(com.google.android.gms.ads.internal.zzbt.zzen().zzc(zzaoqVar, this.zzdqe));
        zzaoqVar.setWebChromeClient(com.google.android.gms.ads.internal.zzbt.zzen().zzj(zzaoqVar));
        return zzaoqVar;
    }
}
