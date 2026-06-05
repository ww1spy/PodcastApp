package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.iid.InstanceID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzaog extends WebViewClient implements zzapu {
    private static final String[] zzdpb = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", InstanceID.ERROR_TIMEOUT, "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzdpc = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private final Object mLock;

    @Nullable
    protected zzagq zzaop;
    private boolean zzavq;
    private zzkf zzbgt;
    private com.google.android.gms.ads.internal.gmsg.zzb zzcbc;
    private com.google.android.gms.ads.internal.gmsg.zzx zzcck;
    private com.google.android.gms.ads.internal.zzw zzccm;
    private zzyd zzccn;
    private zzyo zzcco;
    private com.google.android.gms.ads.internal.overlay.zzt zzccr;
    private com.google.android.gms.ads.internal.overlay.zzn zzccs;
    private zzaof zzcct;
    private final HashMap<String, List<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>>> zzcou;
    private zzapv zzdpd;
    private zzapw zzdpe;
    private zzapx zzdpf;
    private boolean zzdpg;
    private boolean zzdph;
    private ViewTreeObserver.OnGlobalLayoutListener zzdpi;
    private ViewTreeObserver.OnScrollChangedListener zzdpj;
    private boolean zzdpk;
    private final zzym zzdpl;
    private zzapy zzdpm;
    private boolean zzdpn;
    private boolean zzdpo;
    private int zzdpp;
    private View.OnAttachStateChangeListener zzdpq;

    public zzaog(zzaof zzaofVar, boolean z) {
        this(zzaofVar, z, new zzym(zzaofVar, zzaofVar.zztv(), new zznu(zzaofVar.getContext())), null);
    }

    private zzaog(zzaof zzaofVar, boolean z, zzym zzymVar, zzyd zzydVar) {
        this.zzcou = new HashMap<>();
        this.mLock = new Object();
        this.zzdpg = false;
        this.zzcct = zzaofVar;
        this.zzavq = z;
        this.zzdpl = zzymVar;
        this.zzccn = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view, zzagq zzagqVar, int i) {
        if (!zzagqVar.zzpf() || i <= 0) {
            return;
        }
        zzagqVar.zzq(view);
        if (zzagqVar.zzpf()) {
            zzaij.zzdfn.postDelayed(new zzaoi(this, view, zzagqVar, i), 100L);
        }
    }

    private final void zza(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean zznf = this.zzccn != null ? this.zzccn.zznf() : false;
        com.google.android.gms.ads.internal.zzbt.zzej();
        com.google.android.gms.ads.internal.overlay.zzl.zza(this.zzcct.getContext(), adOverlayInfoParcel, zznf ? false : true);
        if (this.zzaop != null) {
            String str = adOverlayInfoParcel.url;
            if (str == null && adOverlayInfoParcel.zzcnj != null) {
                str = adOverlayInfoParcel.zzcnj.url;
            }
            this.zzaop.zzbv(str);
        }
    }

    private final void zzd(Context context, String str, String str2, String str3) {
        String str4;
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqr)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString(NotificationCompat.CATEGORY_ERROR, str);
            bundle.putString("code", str2);
            if (!TextUtils.isEmpty(str3)) {
                Uri parse = Uri.parse(str3);
                if (parse.getHost() != null) {
                    str4 = parse.getHost();
                    bundle.putString("host", str4);
                    com.google.android.gms.ads.internal.zzbt.zzel().zza(context, this.zzcct.zztl().zzcu, "gmob-apps", bundle, true);
                }
            }
            str4 = "";
            bundle.putString("host", str4);
            com.google.android.gms.ads.internal.zzbt.zzel().zza(context, this.zzcct.zztl().zzcu, "gmob-apps", bundle, true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e0, code lost:
    
        return new android.webkit.WebResourceResponse(r6, r7, r2.getInputStream());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zzdf(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            java.net.URL r0 = new java.net.URL
            r0.<init>(r9)
            r9 = 0
            r1 = r0
            r0 = r9
        L8:
            int r0 = r0 + 1
            r2 = 20
            if (r0 > r2) goto Le1
            java.net.URLConnection r2 = r1.openConnection()
            r3 = 10000(0x2710, float:1.4013E-41)
            r2.setConnectTimeout(r3)
            r2.setReadTimeout(r3)
            boolean r3 = r2 instanceof java.net.HttpURLConnection
            if (r3 != 0) goto L26
            java.io.IOException r9 = new java.io.IOException
            java.lang.String r0 = "Invalid protocol."
            r9.<init>(r0)
            throw r9
        L26:
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2
            com.google.android.gms.internal.zzaij r3 = com.google.android.gms.ads.internal.zzbt.zzel()
            com.google.android.gms.internal.zzaof r4 = r8.zzcct
            android.content.Context r4 = r4.getContext()
            com.google.android.gms.internal.zzaof r5 = r8.zzcct
            com.google.android.gms.internal.zzala r5 = r5.zztl()
            java.lang.String r5 = r5.zzcu
            r3.zza(r4, r5, r9, r2)
            com.google.android.gms.internal.zzaks r3 = new com.google.android.gms.internal.zzaks
            r3.<init>()
            r4 = 0
            r3.zza(r2, r4)
            int r5 = r2.getResponseCode()
            com.google.android.gms.ads.internal.zzbt.zzel()
            java.lang.String r6 = r2.getContentType()
            java.lang.String r6 = com.google.android.gms.internal.zzaij.zzcn(r6)
            com.google.android.gms.ads.internal.zzbt.zzel()
            java.lang.String r7 = r2.getContentType()
            java.lang.String r7 = com.google.android.gms.internal.zzaij.zzco(r7)
            r3.zza(r2, r5)
            r3 = 300(0x12c, float:4.2E-43)
            if (r5 < r3) goto Ld7
            r3 = 400(0x190, float:5.6E-43)
            if (r5 >= r3) goto Ld7
            java.lang.String r3 = "Location"
            java.lang.String r3 = r2.getHeaderField(r3)
            if (r3 != 0) goto L7b
            java.io.IOException r9 = new java.io.IOException
            java.lang.String r0 = "Missing Location header in redirect"
            r9.<init>(r0)
            throw r9
        L7b:
            java.net.URL r5 = new java.net.URL
            r5.<init>(r1, r3)
            java.lang.String r1 = r5.getProtocol()
            if (r1 != 0) goto L8c
            java.lang.String r9 = "Protocol is null"
            com.google.android.gms.internal.zzahw.zzcz(r9)
            return r4
        L8c:
            java.lang.String r6 = "http"
            boolean r6 = r1.equals(r6)
            if (r6 != 0) goto Lb7
            java.lang.String r6 = "https"
            boolean r6 = r1.equals(r6)
            if (r6 != 0) goto Lb7
            java.lang.String r9 = "Unsupported scheme: "
            java.lang.String r0 = java.lang.String.valueOf(r1)
            int r1 = r0.length()
            if (r1 == 0) goto Lad
            java.lang.String r9 = r9.concat(r0)
            goto Lb3
        Lad:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r9)
            r9 = r0
        Lb3:
            com.google.android.gms.internal.zzahw.zzcz(r9)
            return r4
        Lb7:
            java.lang.String r1 = "Redirecting to "
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r4 = r3.length()
            if (r4 == 0) goto Lc8
            java.lang.String r1 = r1.concat(r3)
            goto Lce
        Lc8:
            java.lang.String r3 = new java.lang.String
            r3.<init>(r1)
            r1 = r3
        Lce:
            com.google.android.gms.internal.zzahw.zzby(r1)
            r2.disconnect()
            r1 = r5
            goto L8
        Ld7:
            android.webkit.WebResourceResponse r9 = new android.webkit.WebResourceResponse
            java.io.InputStream r0 = r2.getInputStream()
            r9.<init>(r6, r7, r0)
            return r9
        Le1:
            java.io.IOException r9 = new java.io.IOException
            r0 = 32
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Too many redirects (20)"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaog.zzdf(java.lang.String):android.webkit.WebResourceResponse");
    }

    private final void zzh(Uri uri) {
        String path = uri.getPath();
        List<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> list = this.zzcou.get(path);
        if (list == null) {
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(32 + String.valueOf(valueOf).length());
            sb.append("No GMSG handler found for GMSG: ");
            sb.append(valueOf);
            zzahw.v(sb.toString());
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzel();
        Map<String, String> zzf = zzaij.zzf(uri);
        if (zzahw.zzae(2)) {
            String valueOf2 = String.valueOf(path);
            zzahw.v(valueOf2.length() != 0 ? "Received GMSG: ".concat(valueOf2) : new String("Received GMSG: "));
            for (String str : zzf.keySet()) {
                String str2 = zzf.get(str);
                StringBuilder sb2 = new StringBuilder(4 + String.valueOf(str).length() + String.valueOf(str2).length());
                sb2.append("  ");
                sb2.append(str);
                sb2.append(": ");
                sb2.append(str2);
                zzahw.v(sb2.toString());
            }
        }
        Iterator<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> it = list.iterator();
        while (it.hasNext()) {
            it.next().zza(this.zzcct, zzf);
        }
    }

    private final void zzus() {
        if (this.zzdpq == null) {
            return;
        }
        this.zzcct.getView().removeOnAttachStateChangeListener(this.zzdpq);
    }

    private final void zzux() {
        if (this.zzdpd != null && ((this.zzdpn && this.zzdpp <= 0) || this.zzdpo)) {
            this.zzdpd.zza(this.zzcct, !this.zzdpo);
            this.zzdpd = null;
        }
        this.zzcct.zzuj();
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzahw.v(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzh(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.mLock) {
            if (this.zzcct.isDestroyed()) {
                zzahw.v("Blank page loaded, 1...");
                this.zzcct.zzue();
                return;
            }
            this.zzdpn = true;
            if (this.zzdpe != null) {
                this.zzdpe.zzf(this.zzcct);
                this.zzdpe = null;
            }
            zzux();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        int i2;
        zzd(this.zzcct.getContext(), "http_err", (i >= 0 || (i2 = (-i) + (-1)) >= zzdpb.length) ? String.valueOf(i) : zzdpb[i2], str2);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            zzd(this.zzcct.getContext(), "ssl_err", (primaryError < 0 || primaryError >= zzdpc.length) ? String.valueOf(primaryError) : zzdpc[primaryError], com.google.android.gms.ads.internal.zzbt.zzen().zza(sslError));
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    public final void reset() {
        if (this.zzaop != null) {
            this.zzaop.zzph();
            this.zzaop = null;
        }
        zzus();
        synchronized (this.mLock) {
            this.zzcou.clear();
            this.zzbgt = null;
            this.zzccs = null;
            this.zzdpd = null;
            this.zzdpe = null;
            this.zzcbc = null;
            this.zzdpg = false;
            this.zzavq = false;
            this.zzdph = false;
            this.zzdpk = false;
            this.zzccr = null;
            this.zzdpf = null;
            if (this.zzccn != null) {
                this.zzccn.zzm(true);
                this.zzccn = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        zzik zza;
        try {
            String zzb = zzagx.zzb(str, this.zzcct.getContext());
            if (!zzb.equals(str)) {
                return zzdf(zzb);
            }
            zzin zzab = zzin.zzab(str);
            if (zzab != null && (zza = com.google.android.gms.ads.internal.zzbt.zzer().zza(zzab)) != null && zza.zzhj()) {
                return new WebResourceResponse("", "", zza.zzhk());
            }
            if (zzaks.isEnabled()) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqg)).booleanValue()) {
                    return zzdf(str);
                }
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AdWebViewClient.interceptRequest");
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED /* 129 */:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzahw.v(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzh(parse);
            return true;
        }
        if (this.zzdpg && webView == this.zzcct.getWebView()) {
            String scheme = parse.getScheme();
            if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                if (this.zzbgt != null) {
                    if (((Boolean) zzlc.zzio().zzd(zzoi.zzboc)).booleanValue()) {
                        this.zzbgt.onAdClicked();
                        if (this.zzaop != null) {
                            this.zzaop.zzbv(str);
                        }
                        this.zzbgt = null;
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (this.zzcct.getWebView().willNotDraw()) {
            String valueOf2 = String.valueOf(str);
            zzahw.zzcz(valueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf2) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        try {
            zzcv zzuc = this.zzcct.zzuc();
            if (zzuc != null && zzuc.zzb(parse)) {
                parse = zzuc.zza(parse, this.zzcct.getContext(), this.zzcct.getView(), this.zzcct.zztj());
            }
        } catch (zzcw unused) {
            String valueOf3 = String.valueOf(str);
            zzahw.zzcz(valueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf3) : new String("Unable to append parameter to URL: "));
        }
        if (this.zzccm == null || this.zzccm.zzcz()) {
            zza(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", parse.toString(), null, null, null, null, null));
            return true;
        }
        this.zzccm.zzt(str);
        return true;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(int i, int i2, boolean z) {
        this.zzdpl.zzc(i, i2);
        if (this.zzccn != null) {
            this.zzccn.zza(i, i2, z);
        }
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        synchronized (this.mLock) {
            this.zzdph = true;
            this.zzcct.zzui();
            this.zzdpi = onGlobalLayoutListener;
            this.zzdpj = onScrollChangedListener;
        }
    }

    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        boolean zzud = this.zzcct.zzud();
        zza(new AdOverlayInfoParcel(zzcVar, (!zzud || this.zzcct.zzty().zzvl()) ? this.zzbgt : null, zzud ? null : this.zzccs, this.zzccr, this.zzcct.zztl()));
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapv zzapvVar) {
        this.zzdpd = zzapvVar;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapw zzapwVar) {
        this.zzdpe = zzapwVar;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapx zzapxVar) {
        this.zzdpf = zzapxVar;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzapy zzapyVar) {
        this.zzdpm = zzapyVar;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(zzkf zzkfVar, com.google.android.gms.ads.internal.overlay.zzn zznVar, com.google.android.gms.ads.internal.gmsg.zzb zzbVar, com.google.android.gms.ads.internal.overlay.zzt zztVar, boolean z, @Nullable com.google.android.gms.ads.internal.gmsg.zzx zzxVar, com.google.android.gms.ads.internal.zzw zzwVar, zzyo zzyoVar, @Nullable zzagq zzagqVar) {
        com.google.android.gms.ads.internal.zzw zzwVar2 = zzwVar == null ? new com.google.android.gms.ads.internal.zzw(this.zzcct.getContext(), zzagqVar, null) : zzwVar;
        this.zzccn = new zzyd(this.zzcct, zzyoVar);
        this.zzaop = zzagqVar;
        zza("/appEvent", new com.google.android.gms.ads.internal.gmsg.zza(zzbVar));
        zza("/backButton", com.google.android.gms.ads.internal.gmsg.zzd.zzcbn);
        zza("/refresh", com.google.android.gms.ads.internal.gmsg.zzd.zzcbo);
        zza("/canOpenURLs", com.google.android.gms.ads.internal.gmsg.zzd.zzcbe);
        zza("/canOpenIntents", com.google.android.gms.ads.internal.gmsg.zzd.zzcbf);
        zza("/click", com.google.android.gms.ads.internal.gmsg.zzd.zzcbg);
        zza("/close", com.google.android.gms.ads.internal.gmsg.zzd.zzcbh);
        zza("/customClose", com.google.android.gms.ads.internal.gmsg.zzd.zzcbi);
        zza("/instrument", com.google.android.gms.ads.internal.gmsg.zzd.zzcbr);
        zza("/delayPageLoaded", com.google.android.gms.ads.internal.gmsg.zzd.zzcbt);
        zza("/delayPageClosed", com.google.android.gms.ads.internal.gmsg.zzd.zzcbu);
        zza("/getLocationInfo", com.google.android.gms.ads.internal.gmsg.zzd.zzcbv);
        zza("/httpTrack", com.google.android.gms.ads.internal.gmsg.zzd.zzcbj);
        zza("/log", com.google.android.gms.ads.internal.gmsg.zzd.zzcbk);
        zza("/mraid", new com.google.android.gms.ads.internal.gmsg.zzaa(zzwVar2, this.zzccn, zzyoVar));
        zza("/mraidLoaded", this.zzdpl);
        zza("/open", new com.google.android.gms.ads.internal.gmsg.zzab(this.zzcct.getContext(), this.zzcct.zztl(), this.zzcct.zzuc(), zztVar, zzkfVar, zzbVar, zznVar, zzwVar2, this.zzccn));
        zza("/precache", new zzaoc());
        zza("/touch", com.google.android.gms.ads.internal.gmsg.zzd.zzcbm);
        zza("/video", com.google.android.gms.ads.internal.gmsg.zzd.zzcbp);
        zza("/videoMeta", com.google.android.gms.ads.internal.gmsg.zzd.zzcbq);
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzq(this.zzcct.getContext())) {
            zza("/logScionEvent", new com.google.android.gms.ads.internal.gmsg.zzz(this.zzcct.getContext()));
        }
        if (zzxVar != null) {
            zza("/setInterstitialProperties", new com.google.android.gms.ads.internal.gmsg.zzw(zzxVar));
        }
        this.zzbgt = zzkfVar;
        this.zzccs = zznVar;
        this.zzcbc = zzbVar;
        this.zzccr = zztVar;
        this.zzccm = zzwVar2;
        this.zzcco = zzyoVar;
        this.zzcck = zzxVar;
        this.zzdpg = z;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        synchronized (this.mLock) {
            List<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> list = this.zzcou.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList<>();
                this.zzcou.put(str, list);
            }
            list.add(zztVar);
        }
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zza(String str, com.google.android.gms.common.util.zzt<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> zztVar) {
        synchronized (this.mLock) {
            List<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> list = this.zzcou.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar2 : list) {
                if (zztVar.apply(zztVar2)) {
                    arrayList.add(zztVar2);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final void zza(boolean z, int i) {
        zza(new AdOverlayInfoParcel((!this.zzcct.zzud() || this.zzcct.zzty().zzvl()) ? this.zzbgt : null, this.zzccs, this.zzccr, this.zzcct, z, i, this.zzcct.zztl()));
    }

    public final void zza(boolean z, int i, String str) {
        boolean zzud = this.zzcct.zzud();
        zza(new AdOverlayInfoParcel((!zzud || this.zzcct.zzty().zzvl()) ? this.zzbgt : null, zzud ? null : new zzaok(this.zzcct, this.zzccs), this.zzcbc, this.zzccr, this.zzcct, z, i, str, this.zzcct.zztl()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zzud = this.zzcct.zzud();
        zza(new AdOverlayInfoParcel((!zzud || this.zzcct.zzty().zzvl()) ? this.zzbgt : null, zzud ? null : new zzaok(this.zzcct, this.zzccs), this.zzcbc, this.zzccr, this.zzcct, z, i, str, str2, this.zzcct.zztl()));
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzag(boolean z) {
        this.zzdpg = z;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzb(int i, int i2) {
        if (this.zzccn != null) {
            this.zzccn.zzb(i, i2);
        }
    }

    public final void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        synchronized (this.mLock) {
            List<com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof>> list = this.zzcou.get(str);
            if (list == null) {
                return;
            }
            list.remove(zztVar);
        }
    }

    @Override // com.google.android.gms.internal.zzapu
    public final boolean zzfz() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzavq;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzk(zzaof zzaofVar) {
        this.zzcct = zzaofVar;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zznj() {
        synchronized (this.mLock) {
            this.zzdpg = false;
            this.zzavq = true;
            zzaly.zzdjt.execute(new Runnable(this) { // from class: com.google.android.gms.internal.zzaoh
                private final zzaog zzdpr;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdpr = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdpr.zzuz();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzapu
    public final com.google.android.gms.ads.internal.zzw zzun() {
        return this.zzccm;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final boolean zzuo() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzdph;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final ViewTreeObserver.OnGlobalLayoutListener zzup() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        synchronized (this.mLock) {
            onGlobalLayoutListener = this.zzdpi;
        }
        return onGlobalLayoutListener;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final ViewTreeObserver.OnScrollChangedListener zzuq() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
        synchronized (this.mLock) {
            onScrollChangedListener = this.zzdpj;
        }
        return onScrollChangedListener;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final boolean zzur() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzdpk;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzut() {
        zzagq zzagqVar = this.zzaop;
        if (zzagqVar != null) {
            WebView webView = this.zzcct.getWebView();
            if (ViewCompat.isAttachedToWindow(webView)) {
                zza(webView, zzagqVar, 10);
                return;
            }
            zzus();
            this.zzdpq = new zzaoj(this, zzagqVar);
            this.zzcct.getView().addOnAttachStateChangeListener(this.zzdpq);
        }
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzuu() {
        synchronized (this.mLock) {
            this.zzdpk = true;
        }
        this.zzdpp++;
        zzux();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzuv() {
        this.zzdpp--;
        zzux();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final void zzuw() {
        this.zzdpo = true;
        zzux();
    }

    @Override // com.google.android.gms.internal.zzapu
    public final zzapy zzuy() {
        return this.zzdpm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzuz() {
        this.zzcct.zzui();
        com.google.android.gms.ads.internal.overlay.zzd zztw = this.zzcct.zztw();
        if (zztw != null) {
            zztw.zznj();
        }
        if (this.zzdpf != null) {
            this.zzdpf.zzdc();
            this.zzdpf = null;
        }
    }
}
