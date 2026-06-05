package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;

@Hide
@TargetApi(11)
@zzabh
/* loaded from: classes.dex */
public final class zzapk extends zzapm {
    public zzapk(zzaof zzaofVar, boolean z) {
        super(zzaofVar, z);
    }

    @Override // com.google.android.gms.internal.zzaog, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zza(webView, str, (Map<String, String>) null);
    }
}
