package com.google.android.gms.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;
import java.util.Set;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzyd extends zzyn {
    private static Set<String> zzcky = com.google.android.gms.common.util.zzf.zzb("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private final Object mLock;
    private int zzalt;
    private int zzalu;
    private zzyo zzcco;
    private final zzaof zzcct;
    private final Activity zzckp;
    private String zzckz;
    private boolean zzcla;
    private int zzclb;
    private int zzclc;
    private int zzcld;
    private int zzcle;
    private zzaqa zzclf;
    private ImageView zzclg;
    private LinearLayout zzclh;
    private PopupWindow zzcli;
    private RelativeLayout zzclj;
    private ViewGroup zzclk;

    public zzyd(zzaof zzaofVar, zzyo zzyoVar) {
        super(zzaofVar, "resize");
        this.zzckz = "top-right";
        this.zzcla = true;
        this.zzclb = 0;
        this.zzclc = 0;
        this.zzalu = -1;
        this.zzcld = 0;
        this.zzcle = 0;
        this.zzalt = -1;
        this.mLock = new Object();
        this.zzcct = zzaofVar;
        this.zzckp = zzaofVar.zztj();
        this.zzcco = zzyoVar;
    }

    private final void zza(int i, int i2) {
        zzb(i, i2 - com.google.android.gms.ads.internal.zzbt.zzel().zzh(this.zzckp)[0], this.zzalt, this.zzalu);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f5, code lost:
    
        if ((r5 + 50) <= r1[1]) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0105 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int[] zzne() {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzyd.zzne():int[]");
    }

    public final void execute(Map<String, String> map) {
        char c;
        synchronized (this.mLock) {
            if (this.zzckp == null) {
                zzbm("Not an activity context. Cannot resize.");
                return;
            }
            if (this.zzcct.zzty() == null) {
                zzbm("Webview is not yet available, size is not set.");
                return;
            }
            if (this.zzcct.zzty().zzvl()) {
                zzbm("Is interstitial. Cannot resize an interstitial.");
                return;
            }
            if (this.zzcct.zzud()) {
                zzbm("Cannot resize an expanded banner.");
                return;
            }
            if (!TextUtils.isEmpty(map.get(SettingsJsonConstants.ICON_WIDTH_KEY))) {
                com.google.android.gms.ads.internal.zzbt.zzel();
                this.zzalt = zzaij.zzcj(map.get(SettingsJsonConstants.ICON_WIDTH_KEY));
            }
            if (!TextUtils.isEmpty(map.get(SettingsJsonConstants.ICON_HEIGHT_KEY))) {
                com.google.android.gms.ads.internal.zzbt.zzel();
                this.zzalu = zzaij.zzcj(map.get(SettingsJsonConstants.ICON_HEIGHT_KEY));
            }
            if (!TextUtils.isEmpty(map.get("offsetX"))) {
                com.google.android.gms.ads.internal.zzbt.zzel();
                this.zzcld = zzaij.zzcj(map.get("offsetX"));
            }
            if (!TextUtils.isEmpty(map.get("offsetY"))) {
                com.google.android.gms.ads.internal.zzbt.zzel();
                this.zzcle = zzaij.zzcj(map.get("offsetY"));
            }
            if (!TextUtils.isEmpty(map.get("allowOffscreen"))) {
                this.zzcla = Boolean.parseBoolean(map.get("allowOffscreen"));
            }
            String str = map.get("customClosePosition");
            if (!TextUtils.isEmpty(str)) {
                this.zzckz = str;
            }
            if (!(this.zzalt >= 0 && this.zzalu >= 0)) {
                zzbm("Invalid width and height options. Cannot resize.");
                return;
            }
            Window window = this.zzckp.getWindow();
            if (window != null && window.getDecorView() != null) {
                int[] zzne = zzne();
                if (zzne == null) {
                    zzbm("Resize location out of screen or close button is not visible.");
                    return;
                }
                zzlc.zzij();
                int zza = zzako.zza(this.zzckp, this.zzalt);
                zzlc.zzij();
                int zza2 = zzako.zza(this.zzckp, this.zzalu);
                ViewParent parent = this.zzcct.getView().getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    zzbm("Webview is detached, probably in the middle of a resize or expand.");
                    return;
                }
                ((ViewGroup) parent).removeView(this.zzcct.getView());
                if (this.zzcli == null) {
                    this.zzclk = (ViewGroup) parent;
                    com.google.android.gms.ads.internal.zzbt.zzel();
                    Bitmap zzr = zzaij.zzr(this.zzcct.getView());
                    this.zzclg = new ImageView(this.zzckp);
                    this.zzclg.setImageBitmap(zzr);
                    this.zzclf = this.zzcct.zzty();
                    this.zzclk.addView(this.zzclg);
                } else {
                    this.zzcli.dismiss();
                }
                this.zzclj = new RelativeLayout(this.zzckp);
                this.zzclj.setBackgroundColor(0);
                this.zzclj.setLayoutParams(new ViewGroup.LayoutParams(zza, zza2));
                com.google.android.gms.ads.internal.zzbt.zzel();
                this.zzcli = zzaij.zza((View) this.zzclj, zza, zza2, false);
                this.zzcli.setOutsideTouchable(true);
                this.zzcli.setTouchable(true);
                this.zzcli.setClippingEnabled(!this.zzcla);
                this.zzclj.addView(this.zzcct.getView(), -1, -1);
                this.zzclh = new LinearLayout(this.zzckp);
                zzlc.zzij();
                int zza3 = zzako.zza(this.zzckp, 50);
                zzlc.zzij();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(zza3, zzako.zza(this.zzckp, 50));
                String str2 = this.zzckz;
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1012429441:
                        if (str2.equals("top-left")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -655373719:
                        if (str2.equals("bottom-left")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1163912186:
                        if (str2.equals("bottom-right")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1288627767:
                        if (str2.equals("bottom-center")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1755462605:
                        if (str2.equals("top-center")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                        break;
                    case 1:
                        layoutParams.addRule(10);
                        layoutParams.addRule(14);
                        break;
                    case 2:
                        layoutParams.addRule(13);
                        break;
                    case 3:
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                        break;
                    case 4:
                        layoutParams.addRule(12);
                        layoutParams.addRule(14);
                        break;
                    case 5:
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                        break;
                    default:
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                        break;
                }
                this.zzclh.setOnClickListener(new zzye(this));
                this.zzclh.setContentDescription("Close button");
                this.zzclj.addView(this.zzclh, layoutParams);
                try {
                    PopupWindow popupWindow = this.zzcli;
                    View decorView = window.getDecorView();
                    zzlc.zzij();
                    int zza4 = zzako.zza(this.zzckp, zzne[0]);
                    zzlc.zzij();
                    popupWindow.showAtLocation(decorView, 0, zza4, zzako.zza(this.zzckp, zzne[1]));
                    int i = zzne[0];
                    int i2 = zzne[1];
                    if (this.zzcco != null) {
                        this.zzcco.zza(i, i2, this.zzalt, this.zzalu);
                    }
                    this.zzcct.zza(zzaqa.zzi(zza, zza2));
                    zza(zzne[0], zzne[1]);
                    zzbo("resized");
                    return;
                } catch (RuntimeException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzbm(valueOf.length() != 0 ? "Cannot show popup window: ".concat(valueOf) : new String("Cannot show popup window: "));
                    this.zzclj.removeView(this.zzcct.getView());
                    if (this.zzclk != null) {
                        this.zzclk.removeView(this.zzclg);
                        this.zzclk.addView(this.zzcct.getView());
                        this.zzcct.zza(this.zzclf);
                    }
                    return;
                }
            }
            zzbm("Activity context is not ready, cannot get window or decor view.");
        }
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.mLock) {
            this.zzclb = i;
            this.zzclc = i2;
            if (this.zzcli != null && z) {
                int[] zzne = zzne();
                if (zzne != null) {
                    PopupWindow popupWindow = this.zzcli;
                    zzlc.zzij();
                    int zza = zzako.zza(this.zzckp, zzne[0]);
                    zzlc.zzij();
                    popupWindow.update(zza, zzako.zza(this.zzckp, zzne[1]), this.zzcli.getWidth(), this.zzcli.getHeight());
                    zza(zzne[0], zzne[1]);
                } else {
                    zzm(true);
                }
            }
        }
    }

    public final void zzb(int i, int i2) {
        this.zzclb = i;
        this.zzclc = i2;
    }

    public final void zzm(boolean z) {
        synchronized (this.mLock) {
            if (this.zzcli != null) {
                this.zzcli.dismiss();
                this.zzclj.removeView(this.zzcct.getView());
                if (this.zzclk != null) {
                    this.zzclk.removeView(this.zzclg);
                    this.zzclk.addView(this.zzcct.getView());
                    this.zzcct.zza(this.zzclf);
                }
                if (z) {
                    zzbo("default");
                    if (this.zzcco != null) {
                        this.zzcco.zzct();
                    }
                }
                this.zzcli = null;
                this.zzclj = null;
                this.zzclk = null;
                this.zzclh = null;
            }
        }
    }

    public final boolean zznf() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzcli != null;
        }
        return z;
    }
}
