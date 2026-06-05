package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaoq extends FrameLayout implements zzaof {
    private final zzaof zzdqk;
    private final zzane zzdql;

    public zzaoq(zzaof zzaofVar) {
        super(zzaofVar.getContext());
        this.zzdqk = zzaofVar;
        this.zzdql = new zzane(zzaofVar.zztv(), this, this);
        zzapu zzua = this.zzdqk.zzua();
        if (zzua != null) {
            zzua.zzk(this);
        }
        addView(this.zzdqk.getView());
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void destroy() {
        this.zzdqk.destroy();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final View.OnClickListener getOnClickListener() {
        return this.zzdqk.getOnClickListener();
    }

    @Override // com.google.android.gms.internal.zzann
    public final String getRequestId() {
        return this.zzdqk.getRequestId();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final int getRequestedOrientation() {
        return this.zzdqk.getRequestedOrientation();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapt
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final WebView getWebView() {
        return this.zzdqk.getWebView();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final boolean isDestroyed() {
        return this.zzdqk.isDestroyed();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void loadData(String str, String str2, String str3) {
        this.zzdqk.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zzdqk.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void loadUrl(String str) {
        this.zzdqk.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void onPause() {
        this.zzdql.onPause();
        this.zzdqk.onPause();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void onResume() {
        this.zzdqk.onResume();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void setContext(Context context) {
        this.zzdqk.setContext(context);
    }

    @Override // android.view.View, com.google.android.gms.internal.zzaof
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzdqk.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.zzaof
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zzdqk.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void setRequestedOrientation(int i) {
        this.zzdqk.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zzdqk.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zzdqk.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void stopLoading() {
        this.zzdqk.stopLoading();
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        this.zzdqk.zza(zzcVar);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzdqk.zza(zzdVar);
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final void zza(zzaou zzaouVar) {
        this.zzdqk.zza(zzaouVar);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zza(zzaqa zzaqaVar) {
        this.zzdqk.zza(zzaqaVar);
    }

    @Override // com.google.android.gms.internal.zzgv
    public final void zza(zzgu zzguVar) {
        this.zzdqk.zza(zzguVar);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        this.zzdqk.zza(str, zztVar);
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, Map<String, ?> map) {
        this.zzdqk.zza(str, map);
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, JSONObject jSONObject) {
        this.zzdqk.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(boolean z, int i) {
        this.zzdqk.zza(z, i);
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(boolean z, int i, String str) {
        this.zzdqk.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(boolean z, int i, String str, String str2) {
        this.zzdqk.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzag(int i) {
        this.zzdqk.zzag(i);
    }

    @Override // com.google.android.gms.internal.zzann
    public final void zzag(boolean z) {
        this.zzdqk.zzag(z);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzah(boolean z) {
        this.zzdqk.zzah(z);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzai(boolean z) {
        this.zzdqk.zzai(z);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzaj(boolean z) {
        this.zzdqk.zzaj(z);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzak(boolean z) {
        this.zzdqk.zzak(z);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzdqk.zzb(zzdVar);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzb(@Nullable zzpt zzptVar) {
        this.zzdqk.zzb(zzptVar);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        this.zzdqk.zzb(str, zztVar);
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.ads.internal.js.zzm
    public final void zzb(String str, JSONObject jSONObject) {
        this.zzdqk.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final com.google.android.gms.ads.internal.zzv zzbo() {
        return this.zzdqk.zzbo();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzc(String str, String str2, @Nullable String str3) {
        this.zzdqk.zzc(str, str2, str3);
    }

    @Override // com.google.android.gms.ads.internal.zzbm
    public final void zzcp() {
        this.zzdqk.zzcp();
    }

    @Override // com.google.android.gms.ads.internal.zzbm
    public final void zzcq() {
        this.zzdqk.zzcq();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzde(String str) {
        this.zzdqk.zzde(str);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zznn() {
        this.zzdqk.zznn();
    }

    @Override // com.google.android.gms.internal.zzann
    public final void zzno() {
        this.zzdqk.zzno();
    }

    @Override // com.google.android.gms.internal.zzann
    public final zzane zztg() {
        return this.zzdql;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final zzaou zzth() {
        return this.zzdqk.zzth();
    }

    @Override // com.google.android.gms.internal.zzann
    public final zzot zzti() {
        return this.zzdqk.zzti();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzapa
    public final Activity zztj() {
        return this.zzdqk.zztj();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final zzou zztk() {
        return this.zzdqk.zztk();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzaps
    public final zzala zztl() {
        return this.zzdqk.zztl();
    }

    @Override // com.google.android.gms.internal.zzann
    public final int zztm() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.zzann
    public final int zztn() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zztt() {
        this.zzdqk.zztt();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zztu() {
        this.zzdqk.zztu();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final Context zztv() {
        return this.zzdqk.zztv();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final com.google.android.gms.ads.internal.overlay.zzd zztw() {
        return this.zzdqk.zztw();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final com.google.android.gms.ads.internal.overlay.zzd zztx() {
        return this.zzdqk.zztx();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapq
    public final zzaqa zzty() {
        return this.zzdqk.zzty();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final String zztz() {
        return this.zzdqk.zztz();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final zzapu zzua() {
        return this.zzdqk.zzua();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final boolean zzub() {
        return this.zzdqk.zzub();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapr
    public final zzcv zzuc() {
        return this.zzdqk.zzuc();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapb
    public final boolean zzud() {
        return this.zzdqk.zzud();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzue() {
        this.zzdql.onDestroy();
        this.zzdqk.zzue();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final boolean zzuf() {
        return this.zzdqk.zzuf();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final boolean zzug() {
        return this.zzdqk.zzug();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final boolean zzuh() {
        return this.zzdqk.zzuh();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzui() {
        this.zzdqk.zzui();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzuj() {
        this.zzdqk.zzuj();
    }

    @Override // com.google.android.gms.internal.zzaof
    @Nullable
    public final zzpt zzuk() {
        return this.zzdqk.zzuk();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzul() {
        setBackgroundColor(0);
        this.zzdqk.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzum() {
        TextView textView = new TextView(getContext());
        Resources resources = com.google.android.gms.ads.internal.zzbt.zzep().getResources();
        textView.setText(resources != null ? resources.getString(R.string.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setBackground(gradientDrawable);
        } else {
            textView.setBackgroundDrawable(gradientDrawable);
        }
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }
}
