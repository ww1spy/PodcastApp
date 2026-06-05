package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Map;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public interface zzaof extends com.google.android.gms.ads.internal.js.zza, com.google.android.gms.ads.internal.js.zzm, com.google.android.gms.ads.internal.zzbm, zzann, zzapa, zzapb, zzapo, zzapr, zzaps, zzapt, zzgv {
    void destroy();

    @Override // com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzapa
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    @Nullable
    View.OnClickListener getOnClickListener();

    ViewParent getParent();

    int getRequestedOrientation();

    @Override // com.google.android.gms.internal.zzapt
    View getView();

    WebView getWebView();

    int getWidth();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, @Nullable String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    @Override // com.google.android.gms.internal.zzann
    void setBackgroundColor(int i);

    void setContext(Context context);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar);

    @Override // com.google.android.gms.internal.zzann
    void zza(zzaou zzaouVar);

    void zza(zzaqa zzaqaVar);

    void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar);

    @Override // com.google.android.gms.ads.internal.js.zza
    void zza(String str, Map<String, ?> map);

    @Override // com.google.android.gms.ads.internal.js.zza
    void zza(String str, JSONObject jSONObject);

    void zzag(int i);

    void zzah(boolean z);

    void zzai(boolean z);

    void zzaj(boolean z);

    void zzak(boolean z);

    void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar);

    void zzb(zzpt zzptVar);

    void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar);

    @Override // com.google.android.gms.ads.internal.js.zzm
    void zzb(String str, JSONObject jSONObject);

    @Override // com.google.android.gms.internal.zzann
    com.google.android.gms.ads.internal.zzv zzbo();

    void zzc(String str, String str2, @Nullable String str3);

    void zzde(String str);

    void zznn();

    @Override // com.google.android.gms.internal.zzann
    @Nullable
    zzaou zzth();

    @Override // com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzapa
    Activity zztj();

    @Override // com.google.android.gms.internal.zzann
    zzou zztk();

    @Override // com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzaps
    zzala zztl();

    void zztt();

    void zztu();

    Context zztv();

    com.google.android.gms.ads.internal.overlay.zzd zztw();

    com.google.android.gms.ads.internal.overlay.zzd zztx();

    @Override // com.google.android.gms.internal.zzapq
    zzaqa zzty();

    String zztz();

    @Nullable
    zzapu zzua();

    boolean zzub();

    @Override // com.google.android.gms.internal.zzapr
    zzcv zzuc();

    @Override // com.google.android.gms.internal.zzapb
    boolean zzud();

    void zzue();

    boolean zzuf();

    boolean zzug();

    boolean zzuh();

    void zzui();

    void zzuj();

    zzpt zzuk();

    void zzul();

    void zzum();
}
