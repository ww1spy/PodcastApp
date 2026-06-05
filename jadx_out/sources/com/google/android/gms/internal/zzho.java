package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzho implements Runnable {
    final /* synthetic */ zzhm zzazp;
    private ValueCallback<String> zzazq = new zzhp(this);
    final /* synthetic */ zzhg zzazr;
    final /* synthetic */ WebView zzazs;
    final /* synthetic */ boolean zzazt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzho(zzhm zzhmVar, zzhg zzhgVar, WebView webView, boolean z) {
        this.zzazp = zzhmVar;
        this.zzazr = zzhgVar;
        this.zzazs = webView;
        this.zzazt = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzazs.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzazs.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzazq);
            } catch (Throwable unused) {
                this.zzazq.onReceiveValue("");
            }
        }
    }
}
