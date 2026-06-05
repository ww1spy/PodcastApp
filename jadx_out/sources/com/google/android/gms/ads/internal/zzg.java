package com.google.android.gms.ads.internal;

import android.webkit.CookieManager;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzg implements Callable<String> {
    private /* synthetic */ zzd zzanx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzd zzdVar) {
        this.zzanx = zzdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        CookieManager zzau;
        return (!((Boolean) zzlc.zzio().zzd(zzoi.zzbtz)).booleanValue() || (zzau = zzbt.zzen().zzau(this.zzanx.zzanm.zzaiq)) == null) ? "" : zzau.getCookie("googleads.g.doubleclick.net");
    }
}
