package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzaip;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzyn;
import com.google.android.gms.internal.zzyr;
import java.util.Collections;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzd extends zzyr implements zzw {
    private static int zzcmk = Color.argb(0, 0, 0, 0);
    protected final Activity mActivity;
    private zzaof zzcct;
    AdOverlayInfoParcel zzcml;
    private zzi zzcmm;
    private zzo zzcmn;
    private FrameLayout zzcmp;
    private WebChromeClient.CustomViewCallback zzcmq;
    private zzh zzcmt;
    private Runnable zzcmx;
    private boolean zzcmy;
    private boolean zzcmz;
    private boolean zzcmo = false;
    private boolean zzcmr = false;
    private boolean zzcms = false;
    private boolean zzcmu = false;
    int zzcmv = 0;
    private final Object zzcmw = new Object();
    private boolean zzcna = false;
    private boolean zzcnb = false;
    private boolean zzcnc = true;

    public zzd(Activity activity) {
        this.mActivity = activity;
    }

    private final void zznk() {
        if (!this.mActivity.isFinishing() || this.zzcna) {
            return;
        }
        this.zzcna = true;
        if (this.zzcct != null) {
            this.zzcct.zzag(this.zzcmv);
            synchronized (this.zzcmw) {
                if (!this.zzcmy && this.zzcct.zzuh()) {
                    this.zzcmx = new zzf(this);
                    zzaij.zzdfn.postDelayed(this.zzcmx, ((Long) zzlc.zzio().zzd(zzoi.zzbpk)).longValue());
                    return;
                }
            }
        }
        zznl();
    }

    private final void zznn() {
        this.zzcct.zznn();
    }

    private final void zzs(boolean z) {
        int intValue = ((Integer) zzlc.zzio().zzd(zzoi.zzbvb)).intValue();
        zzp zzpVar = new zzp();
        zzpVar.size = 50;
        zzpVar.paddingLeft = z ? intValue : 0;
        zzpVar.paddingRight = z ? 0 : intValue;
        zzpVar.paddingTop = 0;
        zzpVar.paddingBottom = intValue;
        this.zzcmn = new zzo(this.mActivity, zzpVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.zzcml.zzcnp);
        this.zzcmt.addView(this.zzcmn, layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ce, code lost:
    
        if (r20.mActivity.getResources().getConfiguration().orientation == 1) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d0, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d1, code lost:
    
        r20.zzcmu = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ef, code lost:
    
        if (r20.mActivity.getResources().getConfiguration().orientation == 2) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x013c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzt(boolean r21) throws com.google.android.gms.ads.internal.overlay.zzg {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzd.zzt(boolean):void");
    }

    public final void close() {
        this.zzcmv = 2;
        this.mActivity.finish();
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onBackPressed() {
        this.zzcmv = 0;
    }

    @Override // com.google.android.gms.internal.zzyq
    public void onCreate(Bundle bundle) {
        this.mActivity.requestWindowFeature(1);
        this.zzcmr = bundle != null ? bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false) : false;
        try {
            this.zzcml = AdOverlayInfoParcel.zzc(this.mActivity.getIntent());
            if (this.zzcml == null) {
                throw new zzg("Could not get info for ad overlay.");
            }
            if (this.zzcml.zzatz.zzdja > 7500000) {
                this.zzcmv = 3;
            }
            if (this.mActivity.getIntent() != null) {
                this.zzcnc = this.mActivity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzcml.zzcnu != null) {
                this.zzcms = this.zzcml.zzcnu.zzaqp;
            } else {
                this.zzcms = false;
            }
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrz)).booleanValue() && this.zzcms && this.zzcml.zzcnu.zzaqu != -1) {
                new zzj(this, null).zzqj();
            }
            if (bundle == null) {
                if (this.zzcml.zzcnl != null && this.zzcnc) {
                    this.zzcml.zzcnl.zzcg();
                }
                if (this.zzcml.zzcns != 1 && this.zzcml.zzcnk != null) {
                    this.zzcml.zzcnk.onAdClicked();
                }
            }
            this.zzcmt = new zzh(this.mActivity, this.zzcml.zzcnt, this.zzcml.zzatz.zzcu);
            this.zzcmt.setId(1000);
            switch (this.zzcml.zzcns) {
                case 1:
                    zzt(false);
                    return;
                case 2:
                    this.zzcmm = new zzi(this.zzcml.zzcnm);
                    zzt(false);
                    return;
                case 3:
                    zzt(true);
                    return;
                default:
                    throw new zzg("Could not determine ad overlay type.");
            }
        } catch (zzg e) {
            zzahw.zzcz(e.getMessage());
            this.zzcmv = 3;
            this.mActivity.finish();
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onDestroy() {
        if (this.zzcct != null) {
            this.zzcmt.removeView(this.zzcct.getView());
        }
        zznk();
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onPause() {
        zzng();
        if (this.zzcml.zzcnl != null) {
            this.zzcml.zzcnl.onPause();
        }
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbva)).booleanValue() && this.zzcct != null && (!this.mActivity.isFinishing() || this.zzcmm == null)) {
            zzbt.zzen();
            zzaip.zzh(this.zzcct);
        }
        zznk();
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onRestart() {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onResume() {
        if (this.zzcml.zzcnl != null) {
            this.zzcml.zzcnl.onResume();
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbva)).booleanValue()) {
            return;
        }
        if (this.zzcct == null || this.zzcct.isDestroyed()) {
            zzahw.zzcz("The webview does not exist. Ignoring action.");
        } else {
            zzbt.zzen();
            zzaip.zzi(this.zzcct);
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzcmr);
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onStart() {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbva)).booleanValue()) {
            if (this.zzcct == null || this.zzcct.isDestroyed()) {
                zzahw.zzcz("The webview does not exist. Ignoring action.");
            } else {
                zzbt.zzen();
                zzaip.zzi(this.zzcct);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onStop() {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbva)).booleanValue() && this.zzcct != null && (!this.mActivity.isFinishing() || this.zzcmm == null)) {
            zzbt.zzen();
            zzaip.zzh(this.zzcct);
        }
        zznk();
    }

    public final void setRequestedOrientation(int i) {
        if (this.mActivity.getApplicationInfo().targetSdkVersion >= ((Integer) zzlc.zzio().zzd(zzoi.zzbvx)).intValue()) {
            if (this.mActivity.getApplicationInfo().targetSdkVersion <= ((Integer) zzlc.zzio().zzd(zzoi.zzbvy)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzlc.zzio().zzd(zzoi.zzbvz)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzlc.zzio().zzd(zzoi.zzbwa)).intValue()) {
                        return;
                    }
                }
            }
        }
        this.mActivity.setRequestedOrientation(i);
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.zzcmp = new FrameLayout(this.mActivity);
        this.zzcmp.setBackgroundColor(-16777216);
        this.zzcmp.addView(view, -1, -1);
        this.mActivity.setContentView(this.zzcmp);
        this.zzcmz = true;
        this.zzcmq = customViewCallback;
        this.zzcmo = true;
    }

    public final void zza(boolean z, boolean z2) {
        boolean z3 = false;
        boolean z4 = ((Boolean) zzlc.zzio().zzd(zzoi.zzbpm)).booleanValue() && this.zzcml != null && this.zzcml.zzcnu != null && this.zzcml.zzcnu.zzaqw;
        if (z && z2 && z4) {
            new zzyn(this.zzcct, "useCustomClose").zzbm("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        if (this.zzcmn != null) {
            zzo zzoVar = this.zzcmn;
            if (z2 && !z4) {
                z3 = true;
            }
            zzoVar.zza(z, z3);
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void zzbd() {
        this.zzcmz = true;
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void zzk(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbuz)).booleanValue() && com.google.android.gms.common.util.zzs.isAtLeastN()) {
            Configuration configuration = (Configuration) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
            zzbt.zzel();
            if (zzaij.zza(this.mActivity, configuration)) {
                this.mActivity.getWindow().addFlags(1024);
                this.mActivity.getWindow().clearFlags(2048);
            } else {
                this.mActivity.getWindow().addFlags(2048);
                this.mActivity.getWindow().clearFlags(1024);
            }
        }
    }

    public final void zzng() {
        if (this.zzcml != null && this.zzcmo) {
            setRequestedOrientation(this.zzcml.orientation);
        }
        if (this.zzcmp != null) {
            this.mActivity.setContentView(this.zzcmt);
            this.zzcmz = true;
            this.zzcmp.removeAllViews();
            this.zzcmp = null;
        }
        if (this.zzcmq != null) {
            this.zzcmq.onCustomViewHidden();
            this.zzcmq = null;
        }
        this.zzcmo = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzw
    public final void zznh() {
        this.zzcmv = 1;
        this.mActivity.finish();
    }

    @Override // com.google.android.gms.internal.zzyq
    public final boolean zzni() {
        this.zzcmv = 0;
        if (this.zzcct == null) {
            return true;
        }
        boolean zzuf = this.zzcct.zzuf();
        if (!zzuf) {
            this.zzcct.zza("onbackblocked", Collections.emptyMap());
        }
        return zzuf;
    }

    public final void zznj() {
        this.zzcmt.removeView(this.zzcmn);
        zzs(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zznl() {
        if (this.zzcnb) {
            return;
        }
        this.zzcnb = true;
        if (this.zzcct != null) {
            this.zzcmt.removeView(this.zzcct.getView());
            if (this.zzcmm != null) {
                this.zzcct.setContext(this.zzcmm.zzaiq);
                this.zzcct.zzah(false);
                this.zzcmm.parent.addView(this.zzcct.getView(), this.zzcmm.index, this.zzcmm.zzcng);
                this.zzcmm = null;
            } else if (this.mActivity.getApplicationContext() != null) {
                this.zzcct.setContext(this.mActivity.getApplicationContext());
            }
            this.zzcct = null;
        }
        if (this.zzcml == null || this.zzcml.zzcnl == null) {
            return;
        }
        this.zzcml.zzcnl.zzcf();
    }

    public final void zznm() {
        if (this.zzcmu) {
            this.zzcmu = false;
            zznn();
        }
    }

    public final void zzno() {
        this.zzcmt.zzcnf = true;
    }

    public final void zznp() {
        synchronized (this.zzcmw) {
            this.zzcmy = true;
            if (this.zzcmx != null) {
                zzaij.zzdfn.removeCallbacks(this.zzcmx);
                zzaij.zzdfn.post(this.zzcmx);
            }
        }
    }
}
