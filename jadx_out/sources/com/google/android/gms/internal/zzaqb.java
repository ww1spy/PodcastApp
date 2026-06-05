package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import android.view.ViewTreeObserver;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.iid.InstanceID;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaqb extends WebViewClient implements zzapu {
    private static final String[] zzdpb = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", InstanceID.ERROR_TIMEOUT, "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzdpc = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};

    public static void reset() {
        throw new NoSuchMethodError();
    }

    public static void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        throw new NoSuchMethodError();
    }

    public static void zza(boolean z, int i) {
        throw new NoSuchMethodError();
    }

    public static void zza(boolean z, int i, String str) {
        throw new NoSuchMethodError();
    }

    public static void zza(boolean z, int i, String str, String str2) {
        throw new NoSuchMethodError();
    }

    public static void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        throw new NoSuchMethodError();
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(int i, int i2, boolean z) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapv zzapvVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapw zzapwVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapx zzapxVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapy zzapyVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzkf zzkfVar, com.google.android.gms.ads.internal.overlay.zzn zznVar, com.google.android.gms.ads.internal.gmsg.zzb zzbVar, com.google.android.gms.ads.internal.overlay.zzt zztVar, boolean z, @Nullable com.google.android.gms.ads.internal.gmsg.zzx zzxVar, com.google.android.gms.ads.internal.zzw zzwVar, zzyo zzyoVar, @Nullable zzagq zzagqVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(String str, com.google.android.gms.common.util.zzt<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> zztVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzag(boolean z) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzb(int i, int i2) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final boolean zzfz() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzk(zzaof zzaofVar) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zznj() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final com.google.android.gms.ads.internal.zzw zzun() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final boolean zzuo() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final ViewTreeObserver.OnGlobalLayoutListener zzup() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final ViewTreeObserver.OnScrollChangedListener zzuq() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final boolean zzur() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzut() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzuu() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzuv() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzuw() {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final zzapy zzuy() {
        throw new NoSuchMethodError();
    }
}
