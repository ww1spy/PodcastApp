package com.google.android.gms.internal;

import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzql extends zzrc implements View.OnClickListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    static final String[] zzbzo = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO};

    @Nullable
    private zzpv zzbyi;

    @Nullable
    private View zzbzt;
    private final WeakReference<View> zzcaa;
    private final Object mLock = new Object();
    private final Map<String, WeakReference<View>> zzcab = new HashMap();
    private final Map<String, WeakReference<View>> zzcac = new HashMap();
    private final Map<String, WeakReference<View>> zzcad = new HashMap();
    private Point zzbzv = new Point();
    private Point zzbzw = new Point();

    @Nullable
    private WeakReference<zzgr> zzbzx = new WeakReference<>(null);

    public zzql(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        com.google.android.gms.ads.internal.zzbt.zzfg();
        zzaml.zza(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        com.google.android.gms.ads.internal.zzbt.zzfg();
        zzaml.zza(view, (ViewTreeObserver.OnScrollChangedListener) this);
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        this.zzcaa = new WeakReference<>(view);
        zzi(hashMap);
        this.zzcad.putAll(this.zzcab);
        zzj(hashMap2);
        this.zzcad.putAll(this.zzcac);
        zzoi.initialize(view.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzpz zzpzVar) {
        View view;
        synchronized (this.mLock) {
            String[] strArr = zzbzo;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    view = null;
                    break;
                }
                WeakReference<View> weakReference = this.zzcad.get(strArr[i]);
                if (weakReference != null) {
                    view = weakReference.get();
                    break;
                }
                i++;
            }
            if (!(view instanceof FrameLayout)) {
                zzpzVar.zzks();
                return;
            }
            zzqn zzqnVar = new zzqn(this, view);
            if (zzpzVar instanceof zzpu) {
                zzpzVar.zzb(view, zzqnVar);
            } else {
                zzpzVar.zza(view, zzqnVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zza(String[] strArr) {
        for (String str : strArr) {
            if (this.zzcab.get(str) != null) {
                return true;
            }
        }
        for (String str2 : strArr) {
            if (this.zzcac.get(str2) != null) {
                return false;
            }
        }
        return false;
    }

    private final void zzi(Map<String, View> map) {
        for (Map.Entry<String, View> entry : map.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.zzcab.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
    }

    private final void zzj(Map<String, View> map) {
        for (Map.Entry<String, View> entry : map.entrySet()) {
            View value = entry.getValue();
            if (value != null) {
                this.zzcac.put(entry.getKey(), new WeakReference<>(value));
                value.setOnTouchListener(this);
            }
        }
    }

    private final void zzk(@Nullable View view) {
        synchronized (this.mLock) {
            if (this.zzbyi != null) {
                zzpv zzkp = this.zzbyi instanceof zzpu ? ((zzpu) this.zzbyi).zzkp() : this.zzbyi;
                if (zzkp != null) {
                    zzkp.zzk(view);
                }
            }
        }
    }

    private final int zzt(int i) {
        int zzb;
        synchronized (this.mLock) {
            zzlc.zzij();
            zzb = zzako.zzb(this.zzbyi.getContext(), i);
        }
        return zzb;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzpv zzpvVar;
        String str;
        Map<String, WeakReference<View>> map;
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                return;
            }
            View view2 = this.zzcaa.get();
            if (view2 == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("x", zzt(this.zzbzv.x));
            bundle.putFloat("y", zzt(this.zzbzv.y));
            bundle.putFloat("start_x", zzt(this.zzbzw.x));
            bundle.putFloat("start_y", zzt(this.zzbzw.y));
            if (this.zzbzt == null || !this.zzbzt.equals(view)) {
                this.zzbyi.zza(view, this.zzcad, bundle, view2);
            } else {
                if (!(this.zzbyi instanceof zzpu)) {
                    zzpvVar = this.zzbyi;
                    str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
                    map = this.zzcad;
                } else if (((zzpu) this.zzbyi).zzkp() != null) {
                    zzpvVar = ((zzpu) this.zzbyi).zzkp();
                    str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
                    map = this.zzcad;
                }
                zzpvVar.zza(view, str, bundle, map, view2);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view;
        synchronized (this.mLock) {
            if (this.zzbyi != null && (view = this.zzcaa.get()) != null) {
                this.zzbyi.zzc(view, this.zzcad);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        View view;
        synchronized (this.mLock) {
            if (this.zzbyi != null && (view = this.zzcaa.get()) != null) {
                this.zzbyi.zzc(view, this.zzcad);
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                return false;
            }
            View view2 = this.zzcaa.get();
            if (view2 == null) {
                return false;
            }
            view2.getLocationOnScreen(new int[2]);
            Point point = new Point((int) (motionEvent.getRawX() - r2[0]), (int) (motionEvent.getRawY() - r2[1]));
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

    @Override // com.google.android.gms.internal.zzrb
    public final void unregisterNativeAd() {
        synchronized (this.mLock) {
            this.zzbzt = null;
            this.zzbyi = null;
            this.zzbzv = null;
            this.zzbzw = null;
        }
    }

    @Override // com.google.android.gms.internal.zzrb
    public final void zza(IObjectWrapper iObjectWrapper) {
        synchronized (this.mLock) {
            zzk(null);
            Object zzy = com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
            if (!(zzy instanceof zzpz)) {
                zzahw.zzcz("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            zzpz zzpzVar = (zzpz) zzy;
            if (!zzpzVar.zzkn()) {
                zzahw.e("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                return;
            }
            View view = this.zzcaa.get();
            if (this.zzbyi != null && view != null) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbsn)).booleanValue()) {
                    this.zzbyi.zzb(view, this.zzcad);
                }
            }
            synchronized (this.mLock) {
                if (this.zzbyi instanceof zzpz) {
                    zzpz zzpzVar2 = (zzpz) this.zzbyi;
                    View view2 = this.zzcaa.get();
                    if (zzpzVar2 != null && zzpzVar2.getContext() != null && view2 != null && com.google.android.gms.ads.internal.zzbt.zzfh().zzs(view2.getContext())) {
                        zzagt zzku = zzpzVar2.zzku();
                        if (zzku != null) {
                            zzku.zzw(false);
                        }
                        zzgr zzgrVar = this.zzbzx.get();
                        if (zzgrVar != null && zzku != null) {
                            zzgrVar.zzb(zzku);
                        }
                    }
                }
            }
            if ((this.zzbyi instanceof zzpu) && ((zzpu) this.zzbyi).zzko()) {
                ((zzpu) this.zzbyi).zzc(zzpzVar);
            } else {
                this.zzbyi = zzpzVar;
                if (zzpzVar instanceof zzpu) {
                    ((zzpu) zzpzVar).zzc(null);
                }
            }
            WeakReference<View> weakReference = this.zzcad.get(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
            if (weakReference == null) {
                zzahw.zzcz("Ad choices asset view is not provided.");
            } else {
                View view3 = weakReference.get();
                ViewGroup viewGroup = view3 instanceof ViewGroup ? (ViewGroup) view3 : null;
                if (viewGroup != null) {
                    this.zzbzt = zzpzVar.zza((View.OnClickListener) this, true);
                    if (this.zzbzt != null) {
                        this.zzcad.put(NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE, new WeakReference<>(this.zzbzt));
                        this.zzcab.put(NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE, new WeakReference<>(this.zzbzt));
                        viewGroup.removeAllViews();
                        viewGroup.addView(this.zzbzt);
                    }
                }
            }
            zzpzVar.zza(view, this.zzcab, this.zzcac, this, this);
            zzaij.zzdfn.post(new zzqm(this, zzpzVar));
            zzk(view);
            this.zzbyi.zzi(view);
            synchronized (this.mLock) {
                if (this.zzbyi instanceof zzpz) {
                    zzpz zzpzVar3 = (zzpz) this.zzbyi;
                    View view4 = this.zzcaa.get();
                    if (zzpzVar3 != null && zzpzVar3.getContext() != null && view4 != null && com.google.android.gms.ads.internal.zzbt.zzfh().zzs(view4.getContext())) {
                        zzgr zzgrVar2 = this.zzbzx.get();
                        if (zzgrVar2 == null) {
                            zzgrVar2 = new zzgr(view4.getContext(), view4);
                            this.zzbzx = new WeakReference<>(zzgrVar2);
                        }
                        zzgrVar2.zza(zzpzVar3.zzku());
                    }
                }
            }
        }
    }
}
