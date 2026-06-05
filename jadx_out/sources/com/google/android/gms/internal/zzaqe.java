package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
final class zzaqe extends zzaqh implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzaof {
    private String zzalv;
    private final com.google.android.gms.ads.internal.zzv zzanp;
    private final zzala zzapq;
    private zzakn zzavk;
    private final WindowManager zzavz;

    @Nullable
    private final zzcv zzbyz;
    private int zzcly;
    private int zzclz;
    private int zzcmb;
    private int zzcmc;
    private String zzcwj;
    private zzot zzdnt;
    private final com.google.android.gms.ads.internal.zzbm zzdqn;
    private com.google.android.gms.ads.internal.overlay.zzd zzdqq;
    private zzaqa zzdqr;
    private boolean zzdqs;
    private boolean zzdqt;
    private boolean zzdqu;
    private boolean zzdqv;
    private int zzdqw;
    private boolean zzdqx;
    private boolean zzdqy;
    private zzaou zzdqz;
    private boolean zzdra;
    private boolean zzdrb;
    private zzpt zzdrc;
    private int zzdrd;
    private int zzdre;
    private zzot zzdrf;
    private zzot zzdrg;
    private zzou zzdrh;
    private WeakReference<View.OnClickListener> zzdri;
    private com.google.android.gms.ads.internal.overlay.zzd zzdrj;
    private boolean zzdrk;
    private Map<String, zzany> zzdrl;
    private zzaqb zzdsr;
    private float zzdss;

    private zzaqe(zzapz zzapzVar, zzaqa zzaqaVar, String str, boolean z, boolean z2, @Nullable zzcv zzcvVar, zzala zzalaVar, zzov zzovVar, com.google.android.gms.ads.internal.zzbm zzbmVar, com.google.android.gms.ads.internal.zzv zzvVar, zziu zziuVar) {
        super(zzapzVar);
        this.zzdqx = true;
        this.zzdqy = false;
        this.zzcwj = "";
        this.zzclz = -1;
        this.zzcly = -1;
        this.zzcmb = -1;
        this.zzcmc = -1;
        this.zzdqr = zzaqaVar;
        this.zzalv = str;
        this.zzdqu = z;
        this.zzdqw = -1;
        this.zzbyz = zzcvVar;
        this.zzapq = zzalaVar;
        this.zzdqn = zzbmVar;
        this.zzanp = zzvVar;
        this.zzavz = (WindowManager) getContext().getSystemService("window");
        this.zzavk = new zzakn(zzvo().zztj(), this, this, null);
        com.google.android.gms.ads.internal.zzbt.zzel().zza(zzapzVar, zzalaVar.zzcu, getSettings());
        setDownloadListener(this);
        this.zzdss = zzvo().getResources().getDisplayMetrics().density;
        zzvd();
        if (com.google.android.gms.common.util.zzs.zzant()) {
            addJavascriptInterface(zzaox.zzl(this), "googleAdsJsInterface");
        }
        zzvh();
        this.zzdrh = new zzou(new zzov(true, "make_wv", this.zzalv));
        this.zzdrh.zzjn().zzc(zzovVar);
        this.zzdnt = zzoo.zzb(this.zzdrh.zzjn());
        this.zzdrh.zza("native:view_create", this.zzdnt);
        this.zzdrg = null;
        this.zzdrf = null;
        com.google.android.gms.ads.internal.zzbt.zzen().zzat(zzapzVar);
    }

    private final void zzal(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? NotificationPreferences.YES : NotificationPreferences.NO);
        zza("onAdVisibilityChanged", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzaqe zzc(Context context, zzaqa zzaqaVar, String str, boolean z, boolean z2, @Nullable zzcv zzcvVar, zzala zzalaVar, zzov zzovVar, com.google.android.gms.ads.internal.zzbm zzbmVar, com.google.android.gms.ads.internal.zzv zzvVar, zziu zziuVar) {
        return new zzaqe(new zzapz(context), zzaqaVar, str, z, z2, zzcvVar, zzalaVar, zzovVar, zzbmVar, zzvVar, zziuVar);
    }

    private final synchronized void zzqc() {
        if (!this.zzdrk) {
            this.zzdrk = true;
            com.google.android.gms.ads.internal.zzbt.zzep().zzqc();
        }
    }

    private final boolean zzva() {
        int i;
        int i2;
        if (!this.zzdsr.zzfz() && !this.zzdsr.zzuo()) {
            return false;
        }
        com.google.android.gms.ads.internal.zzbt.zzel();
        DisplayMetrics zza = zzaij.zza(this.zzavz);
        zzlc.zzij();
        int zzb = zzako.zzb(zza, zza.widthPixels);
        zzlc.zzij();
        int zzb2 = zzako.zzb(zza, zza.heightPixels);
        Activity zztj = zzvo().zztj();
        if (zztj == null || zztj.getWindow() == null) {
            i = zzb;
            i2 = zzb2;
        } else {
            com.google.android.gms.ads.internal.zzbt.zzel();
            int[] zzf = zzaij.zzf(zztj);
            zzlc.zzij();
            i = zzako.zzb(zza, zzf[0]);
            zzlc.zzij();
            i2 = zzako.zzb(zza, zzf[1]);
        }
        if (this.zzcly == zzb && this.zzclz == zzb2 && this.zzcmb == i && this.zzcmc == i2) {
            return false;
        }
        boolean z = (this.zzcly == zzb && this.zzclz == zzb2) ? false : true;
        this.zzcly = zzb;
        this.zzclz = zzb2;
        this.zzcmb = i;
        this.zzcmc = i2;
        new zzyn(this).zza(zzb, zzb2, i, i2, zza.density, this.zzavz.getDefaultDisplay().getRotation());
        return z;
    }

    private final void zzvc() {
        zzoo.zza(this.zzdrh.zzjn(), this.zzdnt, "aeh2");
    }

    private final synchronized void zzvd() {
        if (!this.zzdqu && !this.zzdqr.zzvl()) {
            if (Build.VERSION.SDK_INT < 18) {
                zzahw.zzby("Disabling hardware acceleration on an AdView.");
                zzve();
                return;
            } else {
                zzahw.zzby("Enabling hardware acceleration on an AdView.");
                zzvf();
                return;
            }
        }
        zzahw.zzby("Enabling hardware acceleration on an overlay.");
        zzvf();
    }

    private final synchronized void zzve() {
        if (!this.zzdqv) {
            com.google.android.gms.ads.internal.zzbt.zzen().zzy(this);
        }
        this.zzdqv = true;
    }

    private final synchronized void zzvf() {
        if (this.zzdqv) {
            com.google.android.gms.ads.internal.zzbt.zzen().zzx(this);
        }
        this.zzdqv = false;
    }

    private final synchronized void zzvg() {
        this.zzdrl = null;
    }

    private final void zzvh() {
        zzov zzjn;
        if (this.zzdrh == null || (zzjn = this.zzdrh.zzjn()) == null || com.google.android.gms.ads.internal.zzbt.zzep().zzpv() == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzep().zzpv().zza(zzjn);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final synchronized void destroy() {
        zzvh();
        this.zzavk.zzrw();
        if (this.zzdqq != null) {
            this.zzdqq.close();
            this.zzdqq.onDestroy();
            this.zzdqq = null;
        }
        zzaqb.reset();
        if (this.zzdqt) {
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzff();
        zzanx.zzb(this);
        zzvg();
        this.zzdqt = true;
        zzahw.v("Initiating WebView self destruct sequence in 3...");
        zzahw.v("Loading blank page in WebView, 2...");
        try {
            super.loadUrl("about:blank");
        } catch (UnsatisfiedLinkError e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AdWebViewImpl.loadUrlUnsafe");
            zzahw.zzc("Could not call loadUrl. ", e);
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (!isDestroyed()) {
            super.evaluateJavascript(str, valueCallback);
            return;
        }
        zzahw.zzcz("The webview is destroyed. Ignoring action.");
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzdqt) {
                    zzaqb.reset();
                    com.google.android.gms.ads.internal.zzbt.zzff();
                    zzanx.zzb(this);
                    zzvg();
                    zzqc();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final View.OnClickListener getOnClickListener() {
        return this.zzdri.get();
    }

    @Override // com.google.android.gms.internal.zzann
    public final synchronized String getRequestId() {
        return this.zzcwj;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized int getRequestedOrientation() {
        return this.zzdqw;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapt
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized boolean isDestroyed() {
        return this.zzdqt;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final synchronized void loadData(String str, String str2, String str3) {
        if (isDestroyed()) {
            zzahw.zzcz("The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (isDestroyed()) {
            zzahw.zzcz("The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // com.google.android.gms.internal.zzaqh, android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final synchronized void loadUrl(String str) {
        if (isDestroyed()) {
            zzahw.zzcz("The webview is destroyed. Ignoring action.");
        } else {
            super.loadUrl(str);
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isDestroyed()) {
            this.zzavk.onAttachedToWindow();
        }
        boolean z = this.zzdra;
        if (this.zzdsr != null && this.zzdsr.zzuo()) {
            if (!this.zzdrb) {
                ViewTreeObserver.OnGlobalLayoutListener zzup = this.zzdsr.zzup();
                if (zzup != null) {
                    com.google.android.gms.ads.internal.zzbt.zzfg();
                    if (this == null) {
                        throw null;
                    }
                    zzaml.zza(this, zzup);
                }
                ViewTreeObserver.OnScrollChangedListener zzuq = this.zzdsr.zzuq();
                if (zzuq != null) {
                    com.google.android.gms.ads.internal.zzbt.zzfg();
                    if (this == null) {
                        throw null;
                    }
                    zzaml.zza(this, zzuq);
                }
                this.zzdrb = true;
            }
            zzva();
            z = true;
        }
        zzal(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        synchronized (this) {
            if (!isDestroyed()) {
                this.zzavk.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzdrb && this.zzdsr != null && this.zzdsr.zzuo() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                ViewTreeObserver.OnGlobalLayoutListener zzup = this.zzdsr.zzup();
                if (zzup != null) {
                    com.google.android.gms.ads.internal.zzbt.zzen().zza(getViewTreeObserver(), zzup);
                }
                ViewTreeObserver.OnScrollChangedListener zzuq = this.zzdsr.zzuq();
                if (zzuq != null) {
                    getViewTreeObserver().removeOnScrollChangedListener(zzuq);
                }
                this.zzdrb = false;
            }
        }
        zzal(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.zzbt.zzel();
            zzaij.zza(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(51 + String.valueOf(str).length() + String.valueOf(str4).length());
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            zzahw.zzby(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (isDestroyed()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
        if (this.zzdsr == null || this.zzdsr.zzuy() == null) {
            return;
        }
        this.zzdsr.zzuy().zzdb();
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbou)).booleanValue()) {
            float axisValue = motionEvent.getAxisValue(9);
            float axisValue2 = motionEvent.getAxisValue(10);
            if (motionEvent.getActionMasked() == 8) {
                if (axisValue > 0.0f && !canScrollVertically(-1)) {
                    return false;
                }
                if (axisValue < 0.0f && !canScrollVertically(1)) {
                    return false;
                }
                if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                    return false;
                }
                if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                    return false;
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zzva = zzva();
        com.google.android.gms.ads.internal.overlay.zzd zztw = zztw();
        if (zztw == null || !zzva) {
            return;
        }
        zztw.zznm();
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0120 A[Catch: all -> 0x01c2, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:20:0x0030, B:23:0x003a, B:26:0x003f, B:29:0x0051, B:30:0x005e, B:35:0x005a, B:37:0x006b, B:39:0x0073, B:41:0x0085, B:44:0x008c, B:46:0x00a4, B:47:0x00b0, B:50:0x00ac, B:51:0x00b5, B:54:0x00ba, B:56:0x00c2, B:59:0x00d9, B:66:0x00fd, B:68:0x0104, B:72:0x010e, B:74:0x0120, B:76:0x0130, B:84:0x0149, B:86:0x019e, B:87:0x01a2, B:90:0x01a7, B:92:0x01ad, B:93:0x01b0, B:99:0x01bd), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0149 A[Catch: all -> 0x01c2, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:20:0x0030, B:23:0x003a, B:26:0x003f, B:29:0x0051, B:30:0x005e, B:35:0x005a, B:37:0x006b, B:39:0x0073, B:41:0x0085, B:44:0x008c, B:46:0x00a4, B:47:0x00b0, B:50:0x00ac, B:51:0x00b5, B:54:0x00ba, B:56:0x00c2, B:59:0x00d9, B:66:0x00fd, B:68:0x0104, B:72:0x010e, B:74:0x0120, B:76:0x0130, B:84:0x0149, B:86:0x019e, B:87:0x01a2, B:90:0x01a7, B:92:0x01ad, B:93:0x01b0, B:99:0x01bd), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a7 A[Catch: all -> 0x01c2, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x000d, B:11:0x0013, B:13:0x0017, B:16:0x0021, B:18:0x0029, B:20:0x0030, B:23:0x003a, B:26:0x003f, B:29:0x0051, B:30:0x005e, B:35:0x005a, B:37:0x006b, B:39:0x0073, B:41:0x0085, B:44:0x008c, B:46:0x00a4, B:47:0x00b0, B:50:0x00ac, B:51:0x00b5, B:54:0x00ba, B:56:0x00c2, B:59:0x00d9, B:66:0x00fd, B:68:0x0104, B:72:0x010e, B:74:0x0120, B:76:0x0130, B:84:0x0149, B:86:0x019e, B:87:0x01a2, B:90:0x01a7, B:92:0x01ad, B:93:0x01b0, B:99:0x01bd), top: B:2:0x0001 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaqe.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final void onPause() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzahw.zzb("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final void onResume() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzahw.zzb("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzdsr.zzuo()) {
            synchronized (this) {
                if (this.zzdrc != null) {
                    this.zzdrc.zzc(motionEvent);
                }
            }
        } else if (this.zzbyz != null) {
            this.zzbyz.zza(motionEvent);
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void setContext(Context context) {
        zzvo().setBaseContext(context);
        this.zzavk.zzi(zzvo().zztj());
    }

    @Override // android.view.View, com.google.android.gms.internal.zzaof
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzdri = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void setRequestedOrientation(int i) {
        this.zzdqw = i;
        if (this.zzdqq != null) {
            this.zzdqq.setRequestedOrientation(this.zzdqw);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzaqb) {
            this.zzdsr = (zzaqb) webViewClient;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzaof
    public final void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzahw.zzb("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        zzaqb.zza(zzcVar);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zza(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzdqq = zzdVar;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final synchronized void zza(zzaou zzaouVar) {
        if (this.zzdqz != null) {
            zzahw.e("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzdqz = zzaouVar;
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zza(zzaqa zzaqaVar) {
        this.zzdqr = zzaqaVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.zzgv
    public final void zza(zzgu zzguVar) {
        synchronized (this) {
            this.zzdra = zzguVar.zzakc;
        }
        zzal(zzguVar.zzakc);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        if (this.zzdsr != null) {
            this.zzdsr.zza(str, zztVar);
        }
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, Map<String, ?> map) {
        try {
            zza(str, com.google.android.gms.ads.internal.zzbt.zzel().zzq(map));
        } catch (JSONException unused) {
            zzahw.zzcz("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzahw.zzby(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzdj(sb.toString());
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(boolean z, int i) {
        zzaqb.zza(z, i);
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(boolean z, int i, String str) {
        zzaqb.zza(z, i, str);
    }

    @Override // com.google.android.gms.internal.zzapo
    public final void zza(boolean z, int i, String str, String str2) {
        zzaqb.zza(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzag(int i) {
        if (i == 0) {
            zzoo.zza(this.zzdrh.zzjn(), this.zzdnt, "aebb2");
        }
        zzvc();
        if (this.zzdrh.zzjn() != null) {
            this.zzdrh.zzjn().zzf("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zzapq.zzcu);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.zzann
    public final void zzag(boolean z) {
        this.zzdsr.zzag(z);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzah(boolean z) {
        boolean z2 = z != this.zzdqu;
        this.zzdqu = z;
        zzvd();
        if (z2) {
            new zzyn(this).zzbo(z ? "expanded" : "default");
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzai(boolean z) {
        if (this.zzdqq != null) {
            this.zzdqq.zza(this.zzdsr.zzfz(), z);
        } else {
            this.zzdqs = z;
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzaj(boolean z) {
        this.zzdqx = z;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzak(boolean z) {
        this.zzdrd += z ? 1 : -1;
        if (this.zzdrd <= 0 && this.zzdqq != null) {
            this.zzdqq.zznp();
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzdrj = zzdVar;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzb(zzpt zzptVar) {
        this.zzdrc = zzptVar;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar) {
        if (this.zzdsr != null) {
            zzaqb.zzb(str, zztVar);
        }
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.ads.internal.js.zzm
    public final void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder(3 + String.valueOf(str).length() + String.valueOf(jSONObject2).length());
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject2);
        sb.append(");");
        zzdj(sb.toString());
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final com.google.android.gms.ads.internal.zzv zzbo() {
        return this.zzanp;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzc(String str, String str2, @Nullable String str3) {
        if (isDestroyed()) {
            zzahw.zzcz("The webview is destroyed. Ignoring action.");
            return;
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbow)).booleanValue()) {
            str2 = zzapp.zzb(str2, zzapp.zzvi());
        }
        super.loadDataWithBaseURL(str, str2, "text/html", HttpRequest.CHARSET_UTF8, str3);
    }

    @Override // com.google.android.gms.ads.internal.zzbm
    public final synchronized void zzcp() {
        this.zzdqy = true;
        if (this.zzdqn != null) {
            this.zzdqn.zzcp();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzbm
    public final synchronized void zzcq() {
        this.zzdqy = false;
        if (this.zzdqn != null) {
            this.zzdqn.zzcq();
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzde(String str) {
        if (str == null) {
            str = "";
        }
        try {
            this.zzcwj = str;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaqh
    public final synchronized void zzdj(String str) {
        if (isDestroyed()) {
            zzahw.zzcz("The webview is destroyed. Ignoring action.");
        } else {
            super.zzdj(str);
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zznn() {
        if (this.zzdrf == null) {
            zzoo.zza(this.zzdrh.zzjn(), this.zzdnt, "aes2");
            this.zzdrf = zzoo.zzb(this.zzdrh.zzjn());
            this.zzdrh.zza("native:view_show", this.zzdrf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zzapq.zzcu);
        zza("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.zzann
    public final void zzno() {
        com.google.android.gms.ads.internal.overlay.zzd zztw = zztw();
        if (zztw != null) {
            zztw.zzno();
        }
    }

    @Override // com.google.android.gms.internal.zzann
    public final zzane zztg() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final synchronized zzaou zzth() {
        return this.zzdqz;
    }

    @Override // com.google.android.gms.internal.zzann
    public final zzot zzti() {
        return this.zzdnt;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzapa
    public final Activity zztj() {
        return zzvo().zztj();
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann
    public final zzou zztk() {
        return this.zzdrh;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzann, com.google.android.gms.internal.zzaps
    public final zzala zztl() {
        return this.zzapq;
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
        zzvc();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zzapq.zzcu);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zztu() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzbt.zzfj().zzdq()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzbt.zzfj().zzdp()));
        hashMap.put("device_volume", String.valueOf(zzaja.zzav(getContext())));
        zza(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, hashMap);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final Context zztv() {
        return zzvo().zztv();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized com.google.android.gms.ads.internal.overlay.zzd zztw() {
        return this.zzdqq;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized com.google.android.gms.ads.internal.overlay.zzd zztx() {
        return this.zzdrj;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapq
    public final synchronized zzaqa zzty() {
        return this.zzdqr;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized String zztz() {
        return this.zzalv;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final zzapu zzua() {
        return this.zzdsr;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized boolean zzub() {
        return this.zzdqs;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapr
    public final zzcv zzuc() {
        return this.zzbyz;
    }

    @Override // com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzapb
    public final synchronized boolean zzud() {
        return this.zzdqu;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized void zzue() {
        zzahw.v("Destroying WebView!");
        zzqc();
        zzaij.zzdfn.post(new zzaqg(this));
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized boolean zzuf() {
        return this.zzdqx;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized boolean zzug() {
        return this.zzdqy;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized boolean zzuh() {
        return this.zzdrd > 0;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzui() {
        this.zzavk.zzrv();
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzuj() {
        if (this.zzdrg == null) {
            this.zzdrg = zzoo.zzb(this.zzdrh.zzjn());
            this.zzdrh.zza("native:view_load", this.zzdrg);
        }
    }

    @Override // com.google.android.gms.internal.zzaof
    public final synchronized zzpt zzuk() {
        return this.zzdrc;
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzul() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.zzaof
    public final void zzum() {
        zzahw.v("Cannot add text view to inner AdWebView");
    }
}
