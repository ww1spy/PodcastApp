package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzait implements Callable<Boolean> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ WebSettings zzdfx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzait(zzais zzaisVar, Context context, WebSettings webSettings) {
        this.val$context = context;
        this.zzdfx = webSettings;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() throws Exception {
        if (this.val$context.getCacheDir() != null) {
            this.zzdfx.setAppCachePath(this.val$context.getCacheDir().getAbsolutePath());
            this.zzdfx.setAppCacheMaxSize(0L);
            this.zzdfx.setAppCacheEnabled(true);
        }
        this.zzdfx.setDatabasePath(this.val$context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
        this.zzdfx.setDatabaseEnabled(true);
        this.zzdfx.setDomStorageEnabled(true);
        this.zzdfx.setDisplayZoomControls(false);
        this.zzdfx.setBuiltInZoomControls(true);
        this.zzdfx.setSupportZoom(true);
        this.zzdfx.setAllowContentAccess(false);
        return true;
    }
}
