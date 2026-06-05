package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final class zzbr extends AsyncTask<Void, Void, String> {
    private /* synthetic */ zzbn zzasj;

    private zzbr(zzbn zzbnVar) {
        this.zzasj = zzbnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbr(zzbn zzbnVar, zzbo zzboVar) {
        this(zzbnVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(Void... voidArr) {
        Future future;
        try {
            zzbn zzbnVar = this.zzasj;
            future = this.zzasj.zzase;
            zzbnVar.zzash = (zzcv) future.get(((Long) zzlc.zzio().zzd(zzoi.zzbtr)).longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException e) {
            zzahw.zzc("Failed to load ad data", e);
        } catch (TimeoutException unused) {
            zzahw.zzcz("Timed out waiting for ad data");
        }
        return this.zzasj.zzeb();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.zzasj.zzasg;
        if (webView == null || str2 == null) {
            return;
        }
        webView2 = this.zzasj.zzasg;
        webView2.loadUrl(str2);
    }
}
