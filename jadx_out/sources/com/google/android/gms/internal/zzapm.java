package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Hide
@TargetApi(11)
@zzabh
/* loaded from: classes.dex */
public class zzapm extends zzaog {
    public zzapm(zzaof zzaofVar, boolean z) {
        super(zzaofVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public final WebResourceResponse zza(WebView webView, String str, @Nullable Map<String, String> map) {
        if (!(webView instanceof zzaof)) {
            zzahw.zzcz("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzaof zzaofVar = (zzaof) webView;
        if (this.zzaop != null) {
            this.zzaop.zza(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            return super.shouldInterceptRequest(webView, str);
        }
        if (zzaofVar.zzua() != null) {
            zzaofVar.zzua().zznj();
        }
        String str2 = (String) zzlc.zzio().zzd(zzaofVar.zzty().zzvl() ? zzoi.zzbnb : zzaofVar.zzud() ? zzoi.zzbna : zzoi.zzbmz);
        try {
            Context context = zzaofVar.getContext();
            String str3 = zzaofVar.zztl().zzcu;
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzbt.zzel().zzl(context, str3));
            hashMap.put(HttpRequest.HEADER_CACHE_CONTROL, "max-stale=3600");
            String str4 = new zzajr(context).zzb(str2, hashMap).get(60L, TimeUnit.SECONDS);
            if (str4 == null) {
                return null;
            }
            return new WebResourceResponse("application/javascript", HttpRequest.CHARSET_UTF8, new ByteArrayInputStream(str4.getBytes(HttpRequest.CHARSET_UTF8)));
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzahw.zzcz(valueOf.length() != 0 ? "Could not fetch MRAID JS. ".concat(valueOf) : new String("Could not fetch MRAID JS. "));
            return null;
        }
    }
}
