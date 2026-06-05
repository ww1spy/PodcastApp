package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.webkit.WebView;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
final class zzaqi {
    private static Boolean zzdsv;

    private zzaqi() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    public static void zza(WebView webView, String str) {
        if (com.google.android.gms.common.util.zzs.zzanv() && zzb(webView)) {
            webView.evaluateJavascript(str, null);
        } else {
            String valueOf = String.valueOf(str);
            webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
        }
    }

    @TargetApi(19)
    private static boolean zzb(WebView webView) {
        boolean booleanValue;
        synchronized (zzaqi.class) {
            if (zzdsv == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    zzdsv = true;
                } catch (IllegalStateException unused) {
                    zzdsv = false;
                }
            }
            booleanValue = zzdsv.booleanValue();
        }
        return booleanValue;
    }
}
