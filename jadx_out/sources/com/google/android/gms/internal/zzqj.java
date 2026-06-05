package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzqj extends zzqx implements View.OnClickListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static String[] zzbzo = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, "3010"};

    @Nullable
    private FrameLayout zzamk;

    @Nullable
    private zzpv zzbyi;
    private final FrameLayout zzbzp;
    private View zzbzq;
    private final boolean zzbzr;

    @Nullable
    private View zzbzt;
    private final Object mLock = new Object();
    private Map<String, WeakReference<View>> zzbzs = Collections.synchronizedMap(new HashMap());
    private boolean zzbzu = false;
    private Point zzbzv = new Point();
    private Point zzbzw = new Point();
    private WeakReference<zzgr> zzbzx = new WeakReference<>(null);

    @TargetApi(21)
    public zzqj(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.zzbzp = frameLayout;
        this.zzamk = frameLayout2;
        com.google.android.gms.ads.internal.zzbt.zzfg();
        zzaml.zza((View) this.zzbzp, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzbt.zzfg();
        zzaml.zza((View) this.zzbzp, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzbzp.setOnTouchListener(this);
        this.zzbzp.setOnClickListener(this);
        if (frameLayout2 != null && com.google.android.gms.common.util.zzs.zzanx()) {
            frameLayout2.setElevation(Float.MAX_VALUE);
        }
        zzoi.initialize(this.zzbzp.getContext());
        this.zzbzr = ((Boolean) zzlc.zzio().zzd(zzoi.zzbsv)).booleanValue();
    }

    private final void zzk(@Nullable View view) {
        if (this.zzbyi != null) {
            zzpv zzkp = this.zzbyi instanceof zzpu ? ((zzpu) this.zzbyi).zzkp() : this.zzbyi;
            if (zzkp != null) {
                zzkp.zzk(view);
            }
        }
    }

    private final View zzkv() {
        if (this.zzbzs == null) {
            return null;
        }
        for (String str : zzbzo) {
            WeakReference<View> weakReference = this.zzbzs.get(str);
            if (weakReference != null) {
                return weakReference.get();
            }
        }
        return null;
    }

    private final void zzkw() {
        synchronized (this.mLock) {
            if (!this.zzbzr && this.zzbzu) {
                int measuredWidth = this.zzbzp.getMeasuredWidth();
                int measuredHeight = this.zzbzp.getMeasuredHeight();
                if (measuredWidth != 0 && measuredHeight != 0 && this.zzamk != null) {
                    this.zzamk.setLayoutParams(new FrameLayout.LayoutParams(measuredWidth, measuredHeight));
                    this.zzbzu = false;
                }
            }
        }
    }

    private final int zzt(int i) {
        zzlc.zzij();
        return zzako.zzb(this.zzbyi.getContext(), i);
    }

    @Override // com.google.android.gms.internal.zzqw
    public final void destroy() {
        synchronized (this.mLock) {
            if (this.zzamk != null) {
                this.zzamk.removeAllViews();
            }
            this.zzamk = null;
            this.zzbzs = null;
            this.zzbzt = null;
            this.zzbyi = null;
            this.zzbzv = null;
            this.zzbzw = null;
            this.zzbzx = null;
            this.zzbzq = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzpv zzpvVar;
        String str;
        Map<String, WeakReference<View>> map;
        FrameLayout frameLayout;
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("x", zzt(this.zzbzv.x));
            bundle.putFloat("y", zzt(this.zzbzv.y));
            bundle.putFloat("start_x", zzt(this.zzbzw.x));
            bundle.putFloat("start_y", zzt(this.zzbzw.y));
            if (this.zzbzt == null || !this.zzbzt.equals(view)) {
                this.zzbyi.zza(view, this.zzbzs, bundle, this.zzbzp);
            } else {
                if (!(this.zzbyi instanceof zzpu)) {
                    zzpvVar = this.zzbyi;
                    str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
                    map = this.zzbzs;
                    frameLayout = this.zzbzp;
                } else if (((zzpu) this.zzbyi).zzkp() != null) {
                    zzpvVar = ((zzpu) this.zzbyi).zzkp();
                    str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
                    map = this.zzbzs;
                    frameLayout = this.zzbzp;
                }
                zzpvVar.zza(view, str, bundle, map, frameLayout);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this.mLock) {
            zzkw();
            if (this.zzbyi != null) {
                this.zzbyi.zzc(this.zzbzp, this.zzbzs);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this.mLock) {
            if (this.zzbyi != null) {
                this.zzbyi.zzc(this.zzbzp, this.zzbzs);
            }
            zzkw();
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                return false;
            }
            this.zzbzp.getLocationOnScreen(new int[2]);
            Point point = new Point((int) (motionEvent.getRawX() - r0[0]), (int) (motionEvent.getRawY() - r0[1]));
            this.zzbzv = point;
            if (motionEvent.getAction() == 0) {
                this.zzbzw = point;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setLocation(point.x, point.y);
            this.zzbyi.zzd(obtain);
            obtain.recycle();
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:45|(1:47)|48|(4:52|(1:54)(1:123)|55|(17:57|(1:122)(1:60)|61|(3:63|(1:65)|(1:67)(2:68|(1:70)))|71|(4:73|(1:75)|76|(1:78))|79|80|81|(1:85)|86|1ac|93|94|(3:102|(1:104)|105)|106|107))|124|(0)|122|61|(0)|71|(0)|79|80|81|(2:83|85)|86|1ac) */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0186, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0187, code lost:
    
        com.google.android.gms.ads.internal.zzbt.zzen();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x018e, code lost:
    
        if (com.google.android.gms.internal.zzaip.zzrk() != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0190, code lost:
    
        com.google.android.gms.internal.zzahw.zzcz("Privileged processes cannot create HTML overlays.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0196, code lost:
    
        com.google.android.gms.internal.zzahw.zzb("Error obtaining overlay.", r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0109 A[Catch: all -> 0x0228, TryCatch #1 {, blocks: (B:5:0x0004, B:7:0x000f, B:8:0x0014, B:11:0x0016, B:13:0x001b, B:15:0x001f, B:16:0x002e, B:18:0x0037, B:20:0x0049, B:21:0x0052, B:23:0x0058, B:25:0x005e, B:27:0x0064, B:29:0x0074, B:31:0x007a, B:32:0x007d, B:35:0x0089, B:36:0x008c, B:38:0x0092, B:40:0x009c, B:41:0x00b0, B:43:0x00b4, B:45:0x00b6, B:47:0x00c8, B:48:0x00cd, B:50:0x00d8, B:52:0x00dc, B:54:0x00e8, B:55:0x00f0, B:57:0x00f4, B:61:0x00fe, B:63:0x0109, B:65:0x010d, B:67:0x011d, B:68:0x0126, B:70:0x0140, B:71:0x0145, B:73:0x0154, B:75:0x0158, B:76:0x016f, B:78:0x0179, B:80:0x0180, B:83:0x019d, B:85:0x01a1, B:86:0x01aa, B:87:0x01ac, B:94:0x01d0, B:96:0x01e2, B:98:0x01e8, B:100:0x01ee, B:102:0x01fe, B:104:0x0208, B:105:0x021c, B:106:0x0223, B:115:0x0227, B:118:0x0187, B:120:0x0190, B:121:0x0196, B:125:0x00a4, B:127:0x00aa, B:89:0x01ad, B:91:0x01ba, B:92:0x01bd, B:109:0x01bf, B:111:0x01c8, B:112:0x01cc), top: B:4:0x0004, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0154 A[Catch: all -> 0x0228, TryCatch #1 {, blocks: (B:5:0x0004, B:7:0x000f, B:8:0x0014, B:11:0x0016, B:13:0x001b, B:15:0x001f, B:16:0x002e, B:18:0x0037, B:20:0x0049, B:21:0x0052, B:23:0x0058, B:25:0x005e, B:27:0x0064, B:29:0x0074, B:31:0x007a, B:32:0x007d, B:35:0x0089, B:36:0x008c, B:38:0x0092, B:40:0x009c, B:41:0x00b0, B:43:0x00b4, B:45:0x00b6, B:47:0x00c8, B:48:0x00cd, B:50:0x00d8, B:52:0x00dc, B:54:0x00e8, B:55:0x00f0, B:57:0x00f4, B:61:0x00fe, B:63:0x0109, B:65:0x010d, B:67:0x011d, B:68:0x0126, B:70:0x0140, B:71:0x0145, B:73:0x0154, B:75:0x0158, B:76:0x016f, B:78:0x0179, B:80:0x0180, B:83:0x019d, B:85:0x01a1, B:86:0x01aa, B:87:0x01ac, B:94:0x01d0, B:96:0x01e2, B:98:0x01e8, B:100:0x01ee, B:102:0x01fe, B:104:0x0208, B:105:0x021c, B:106:0x0223, B:115:0x0227, B:118:0x0187, B:120:0x0190, B:121:0x0196, B:125:0x00a4, B:127:0x00aa, B:89:0x01ad, B:91:0x01ba, B:92:0x01bd, B:109:0x01bf, B:111:0x01c8, B:112:0x01cc), top: B:4:0x0004, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.zzqw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.dynamic.IObjectWrapper r12) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzqj.zza(com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    @Override // com.google.android.gms.internal.zzqw
    public final IObjectWrapper zzal(String str) {
        synchronized (this.mLock) {
            View view = null;
            if (this.zzbzs == null) {
                return null;
            }
            WeakReference<View> weakReference = this.zzbzs.get(str);
            if (weakReference != null) {
                view = weakReference.get();
            }
            return com.google.android.gms.dynamic.zzn.zzz(view);
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public final void zzb(IObjectWrapper iObjectWrapper, int i) {
        zzgr zzgrVar;
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzs(this.zzbzp.getContext()) && this.zzbzx != null && (zzgrVar = this.zzbzx.get()) != null) {
            zzgrVar.zzgm();
        }
        zzkw();
    }

    @Override // com.google.android.gms.internal.zzqw
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        View view = (View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        synchronized (this.mLock) {
            if (this.zzbzs == null) {
                return;
            }
            if (view == null) {
                this.zzbzs.remove(str);
            } else {
                this.zzbzs.put(str, new WeakReference<>(view));
                if (NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str)) {
                    return;
                }
                view.setOnTouchListener(this);
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }
}
