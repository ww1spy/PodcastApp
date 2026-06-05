package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public class zzpz implements zzpv {
    private final Context mContext;

    @Nullable
    private final zzala zzapq;

    @Nullable
    private zzagt zzaqg;

    @Nullable
    private final zzaan zzarm;

    @Nullable
    private String zzarn;
    private final zzpw zzbyu;

    @Nullable
    private final JSONObject zzbyx;

    @Nullable
    private final zzpx zzbyy;
    private final zzcv zzbyz;
    boolean zzbza;
    private final Object mLock = new Object();
    private WeakReference<View> zzbzb = null;

    public zzpz(Context context, zzpw zzpwVar, @Nullable zzaan zzaanVar, zzcv zzcvVar, @Nullable JSONObject jSONObject, @Nullable zzpx zzpxVar, @Nullable zzala zzalaVar, @Nullable String str) {
        this.mContext = context;
        this.zzbyu = zzpwVar;
        this.zzarm = zzaanVar;
        this.zzbyz = zzcvVar;
        this.zzbyx = jSONObject;
        this.zzbyy = zzpxVar;
        this.zzapq = zzalaVar;
        this.zzarn = str;
    }

    private final JSONObject zza(Map<String, WeakReference<View>> map, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] zzm = zzm(view);
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] zzm2 = zzm(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put(SettingsJsonConstants.ICON_WIDTH_KEY, zzt(view2.getMeasuredWidth()));
                        jSONObject4.put(SettingsJsonConstants.ICON_HEIGHT_KEY, zzt(view2.getMeasuredHeight()));
                        jSONObject4.put("x", zzt(zzm2[0] - zzm[0]));
                        jSONObject4.put("y", zzt(zzm2[1] - zzm[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = zzb(rect);
                        } else {
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put(SettingsJsonConstants.ICON_WIDTH_KEY, 0);
                            jSONObject5.put(SettingsJsonConstants.ICON_HEIGHT_KEY, 0);
                            jSONObject5.put("x", zzt(zzm2[0] - zzm[0]));
                            jSONObject5.put("y", zzt(zzm2[1] - zzm[1]));
                            jSONObject5.put("relative_to", "ad_view");
                            jSONObject = jSONObject5;
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            jSONObject3.put("font_size", textView.getTextSize());
                            jSONObject3.put("text", textView.getText());
                        }
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    } catch (JSONException unused) {
                        zzahw.zzcz("Unable to get asset views information");
                    }
                }
            }
        }
        return jSONObject2;
    }

    private final void zza(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6) {
        com.google.android.gms.common.internal.zzbq.zzgn("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.zzbyx);
            if (jSONObject2 != null) {
                jSONObject7.put("asset_view_signal", jSONObject2);
            }
            if (jSONObject != null) {
                jSONObject7.put("ad_view_signal", jSONObject);
            }
            if (jSONObject5 != null) {
                jSONObject7.put("click_signal", jSONObject5);
            }
            if (jSONObject3 != null) {
                jSONObject7.put("scroll_view_signal", jSONObject3);
            }
            if (jSONObject4 != null) {
                jSONObject7.put("lock_screen_signal", jSONObject4);
            }
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.zzbyy.zzke());
            com.google.android.gms.ads.internal.zzbt.zzen();
            jSONObject8.put("is_privileged_process", zzaip.zzrk());
            jSONObject8.put("has_custom_click_handler", this.zzbyu.zzs(this.zzbyy.getCustomTemplateId()) != null);
            jSONObject7.put("has_custom_click_handler", this.zzbyu.zzs(this.zzbyy.getCustomTemplateId()) != null);
            try {
                JSONObject optJSONObject = this.zzbyx.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                jSONObject8.put("click_signals", this.zzbyz.zzae().zza(this.mContext, optJSONObject.optString("click_string"), view));
            } catch (Exception e) {
                zzahw.zzb("Exception obtaining click signals", e);
            }
            jSONObject7.put("click", jSONObject8);
            if (jSONObject6 != null) {
                jSONObject7.put("provided_signals", jSONObject6);
            }
            jSONObject7.put("ads_id", this.zzarn);
            zzalg.zza(this.zzarm.zzi(jSONObject7), "NativeAdEngineImpl.performClick");
        } catch (JSONException e2) {
            zzahw.zzb("Unable to create click JSON.", e2);
        }
    }

    private final boolean zza(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, JSONObject jSONObject5) {
        com.google.android.gms.common.internal.zzbq.zzgn("recordImpression must be called on the main UI thread.");
        if (this.zzbza) {
            return true;
        }
        this.zzbza = true;
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzbyx);
            jSONObject6.put("ads_id", this.zzarn);
            if (jSONObject2 != null) {
                jSONObject6.put("asset_view_signal", jSONObject2);
            }
            if (jSONObject != null) {
                jSONObject6.put("ad_view_signal", jSONObject);
            }
            if (jSONObject3 != null) {
                jSONObject6.put("scroll_view_signal", jSONObject3);
            }
            if (jSONObject4 != null) {
                jSONObject6.put("lock_screen_signal", jSONObject4);
            }
            if (jSONObject5 != null) {
                jSONObject6.put("provided_signals", jSONObject5);
            }
            zzalg.zza(this.zzarm.zzj(jSONObject6), "NativeAdEngineImpl.recordImpression");
            this.zzbyu.zza(this);
            this.zzbyu.zzcb();
            return true;
        } catch (JSONException e) {
            zzahw.zzb("Unable to create impression JSON.", e);
            return false;
        }
    }

    private final boolean zzar(String str) {
        JSONObject optJSONObject = this.zzbyx == null ? null : this.zzbyx.optJSONObject("allow_pub_event_reporting");
        if (optJSONObject == null) {
            return false;
        }
        return optJSONObject.optBoolean(str, false);
    }

    private final JSONObject zzb(Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(SettingsJsonConstants.ICON_WIDTH_KEY, zzt(rect.right - rect.left));
        jSONObject.put(SettingsJsonConstants.ICON_HEIGHT_KEY, zzt(rect.bottom - rect.top));
        jSONObject.put("x", zzt(rect.left));
        jSONObject.put("y", zzt(rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private static boolean zzl(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    private static int[] zzm(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    private final JSONObject zzn(View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (view == null) {
            return jSONObject2;
        }
        try {
            int[] zzm = zzm(view);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(SettingsJsonConstants.ICON_WIDTH_KEY, zzt(view.getMeasuredWidth()));
            jSONObject3.put(SettingsJsonConstants.ICON_HEIGHT_KEY, zzt(view.getMeasuredHeight()));
            jSONObject3.put("x", zzt(zzm[0]));
            jSONObject3.put("y", zzt(zzm[1]));
            jSONObject3.put("relative_to", "window");
            jSONObject2.put("frame", jSONObject3);
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                jSONObject = zzb(rect);
            } else {
                jSONObject = new JSONObject();
                jSONObject.put(SettingsJsonConstants.ICON_WIDTH_KEY, 0);
                jSONObject.put(SettingsJsonConstants.ICON_HEIGHT_KEY, 0);
                jSONObject.put("x", zzt(zzm[0]));
                jSONObject.put("y", zzt(zzm[1]));
                jSONObject.put("relative_to", "window");
            }
            jSONObject2.put("visible_bounds", jSONObject);
            return jSONObject2;
        } catch (Exception unused) {
            zzahw.zzcz("Unable to get native ad view bounding box");
            return jSONObject2;
        }
    }

    private static JSONObject zzo(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.zzbt.zzel();
            jSONObject.put("contained_in_scroll_view", zzaij.zzw(view) != -1);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private final JSONObject zzp(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            com.google.android.gms.ads.internal.zzbt.zzel();
            jSONObject.put("can_show_on_lock_screen", zzaij.zzv(view));
            com.google.android.gms.ads.internal.zzbt.zzel();
            jSONObject.put("is_keyguard_locked", zzaij.zzar(this.mContext));
            return jSONObject;
        } catch (JSONException unused) {
            zzahw.zzcz("Unable to get lock screen information");
            return jSONObject;
        }
    }

    private final int zzt(int i) {
        zzlc.zzij();
        return zzako.zzb(this.mContext, i);
    }

    @Override // com.google.android.gms.internal.zzpv
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void performClick(Bundle bundle) {
        if (bundle == null) {
            zzahw.zzby("Click data is null. No click is reported.");
        } else if (zzar("click_reporting")) {
            zza(null, null, null, null, null, bundle.getBundle("click_signal").getString("asset_id"), null, com.google.android.gms.ads.internal.zzbt.zzel().zza(bundle, (JSONObject) null));
        } else {
            zzahw.e("The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events.");
        }
    }

    @Override // com.google.android.gms.internal.zzpv
    public final boolean recordImpression(Bundle bundle) {
        if (zzar("impression_reporting")) {
            return zza((JSONObject) null, (JSONObject) null, (JSONObject) null, (JSONObject) null, com.google.android.gms.ads.internal.zzbt.zzel().zza(bundle, (JSONObject) null));
        }
        zzahw.e("The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events.");
        return false;
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void reportTouchEvent(Bundle bundle) {
        if (bundle == null) {
            zzahw.zzby("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!zzar("touch_reporting")) {
            zzahw.e("The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events.");
            return;
        }
        this.zzbyz.zzae().zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0020. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzpv
    @Nullable
    public View zza(View.OnClickListener onClickListener, boolean z) {
        zzph zzkf = this.zzbyy.zzkf();
        if (zzkf == null) {
            return null;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!z) {
            int zzjz = zzkf.zzjz();
            if (zzjz != 0) {
                switch (zzjz) {
                    case 2:
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                        break;
                    case 3:
                        layoutParams.addRule(12);
                        break;
                    default:
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                        break;
                }
            } else {
                layoutParams.addRule(10);
            }
            layoutParams.addRule(9);
        }
        zzpi zzpiVar = new zzpi(this.mContext, zzkf, layoutParams);
        zzpiVar.setOnClickListener(onClickListener);
        zzpiVar.setContentDescription((CharSequence) zzlc.zzio().zzd(zzoi.zzbsr));
        return zzpiVar;
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void zza(View view, zzpt zzptVar) {
        if (zzb(view, zzptVar)) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ((FrameLayout) view).removeAllViews();
        if (this.zzbyy instanceof zzpy) {
            zzpy zzpyVar = (zzpy) this.zzbyy;
            if (zzpyVar.getImages() == null || zzpyVar.getImages().size() <= 0) {
                return;
            }
            Object obj = zzpyVar.getImages().get(0);
            zzqs zzk = obj instanceof IBinder ? zzqt.zzk((IBinder) obj) : null;
            if (zzk != null) {
                try {
                    IObjectWrapper zzkb = zzk.zzkb();
                    if (zzkb != null) {
                        Drawable drawable = (Drawable) com.google.android.gms.dynamic.zzn.zzy(zzkb);
                        ImageView imageView = new ImageView(this.mContext);
                        imageView.setImageDrawable(drawable);
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ((FrameLayout) view).addView(imageView, layoutParams);
                    }
                } catch (RemoteException unused) {
                    zzahw.zzcz("Could not get drawable from image");
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void zza(View view, String str, @Nullable Bundle bundle, Map<String, WeakReference<View>> map, View view2) {
        JSONObject jSONObject;
        JSONObject zza;
        JSONObject jSONObject2;
        JSONObject zza2 = zza(map, view2);
        JSONObject zzn = zzn(view2);
        JSONObject zzo = zzo(view2);
        JSONObject zzp = zzp(view2);
        JSONObject jSONObject3 = null;
        try {
            zza = com.google.android.gms.ads.internal.zzbt.zzel().zza(bundle, (JSONObject) null);
            jSONObject2 = new JSONObject();
        } catch (Exception e) {
            e = e;
        }
        try {
            jSONObject2.put("click_point", zza);
            jSONObject2.put("asset_id", str);
            jSONObject = jSONObject2;
        } catch (Exception e2) {
            e = e2;
            jSONObject3 = jSONObject2;
            zzahw.zzb("Error occurred while grabbing click signals.", e);
            jSONObject = jSONObject3;
            zza(view, zzn, zza2, zzo, zzp, str, jSONObject, null);
        }
        zza(view, zzn, zza2, zzo, zzp, str, jSONObject, null);
    }

    @Override // com.google.android.gms.internal.zzpv
    public void zza(View view, Map<String, WeakReference<View>> map) {
        zza(zzn(view), zza(map, view), zzo(view), zzp(view), (JSONObject) null);
    }

    @Override // com.google.android.gms.internal.zzpv
    public void zza(View view, Map<String, WeakReference<View>> map, Bundle bundle, View view2) {
        String str;
        com.google.android.gms.common.internal.zzbq.zzgn("performClick must be called on the main UI thread.");
        if (map != null) {
            synchronized (map) {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    if (view.equals(entry.getValue().get())) {
                        zza(view, entry.getKey(), bundle, map, view2);
                        return;
                    }
                }
            }
        }
        if ("6".equals(this.zzbyy.zzke())) {
            str = "3099";
        } else {
            if (!"2".equals(this.zzbyy.zzke())) {
                if (NotificationPreferences.YES.equals(this.zzbyy.zzke())) {
                    zza(view, "1099", bundle, map, view2);
                    return;
                }
                return;
            }
            str = "2099";
        }
        zza(view, str, bundle, map, view2);
    }

    public void zza(View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbsp)).booleanValue()) {
            view.setOnTouchListener(onTouchListener);
            view.setClickable(true);
            view.setOnClickListener(onClickListener);
            if (map != null) {
                synchronized (map) {
                    Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        View view2 = it.next().getValue().get();
                        if (view2 != null) {
                            view2.setOnTouchListener(onTouchListener);
                            view2.setClickable(true);
                            view2.setOnClickListener(onClickListener);
                        }
                    }
                }
            }
            if (map2 != null) {
                synchronized (map2) {
                    Iterator<Map.Entry<String, WeakReference<View>>> it2 = map2.entrySet().iterator();
                    while (it2.hasNext()) {
                        View view3 = it2.next().getValue().get();
                        if (view3 != null) {
                            view3.setOnTouchListener(onTouchListener);
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpv
    public void zzb(View view, Map<String, WeakReference<View>> map) {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbso)).booleanValue()) {
            return;
        }
        view.setOnTouchListener(null);
        view.setClickable(false);
        view.setOnClickListener(null);
        if (map == null) {
            return;
        }
        synchronized (map) {
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = it.next().getValue().get();
                if (view2 != null) {
                    view2.setOnTouchListener(null);
                    view2.setClickable(false);
                    view2.setOnClickListener(null);
                }
            }
        }
    }

    public final boolean zzb(View view, zzpt zzptVar) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        View zzkg = this.zzbyy.zzkg();
        if (zzkg == null) {
            return false;
        }
        ViewParent parent = zzkg.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(zzkg);
        }
        FrameLayout frameLayout = (FrameLayout) view;
        frameLayout.removeAllViews();
        frameLayout.addView(zzkg, layoutParams);
        this.zzbyu.zza(zzptVar);
        return true;
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void zzc(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.mLock) {
            if (this.zzbza) {
                return;
            }
            if (zzl(view)) {
                zza(view, map);
                return;
            }
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbsw)).booleanValue() && map != null) {
                synchronized (map) {
                    Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        View view2 = it.next().getValue().get();
                        if (view2 != null && zzl(view2)) {
                            zza(view, map);
                            return;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void zzd(MotionEvent motionEvent) {
        this.zzbyz.zza(motionEvent);
    }

    public final void zzh(Map<String, WeakReference<View>> map) {
        if (this.zzbyy.zzkg() != null) {
            if ("2".equals(this.zzbyy.zzke())) {
                com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zza(this.zzbyu.getAdUnitId(), this.zzbyy.zzke(), map.containsKey(NativeAppInstallAd.ASSET_MEDIA_VIDEO));
            } else if (NotificationPreferences.YES.equals(this.zzbyy.zzke())) {
                com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zza(this.zzbyu.getAdUnitId(), this.zzbyy.zzke(), map.containsKey(NativeContentAd.ASSET_MEDIA_VIDEO));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void zzi(View view) {
        zzcr zzae;
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbrm)).booleanValue() || this.zzbyz == null || (zzae = this.zzbyz.zzae()) == null) {
            return;
        }
        zzae.zzb(view);
    }

    @Override // com.google.android.gms.internal.zzpv
    public final void zzk(View view) {
        this.zzbzb = new WeakReference<>(view);
    }

    @Override // com.google.android.gms.internal.zzpv
    public boolean zzkm() {
        zzph zzkf = this.zzbyy.zzkf();
        return zzkf != null && zzkf.zzka();
    }

    @Override // com.google.android.gms.internal.zzpv
    public boolean zzkn() {
        return this.zzbyx != null && this.zzbyx.optBoolean("allow_pub_owned_ad_view", false);
    }

    public zzaof zzkq() throws zzaop {
        if (this.zzbyx == null || this.zzbyx.optJSONObject("overlay") == null) {
            return null;
        }
        zzaol zzem = com.google.android.gms.ads.internal.zzbt.zzem();
        Context context = this.mContext;
        zzko zzf = zzko.zzf(this.mContext);
        zzaof zza = zzem.zza(context, zzaqa.zzc(zzf), zzf.zzbia, false, false, this.zzbyz, this.zzapq, null, null, null, zziu.zzhp());
        if (zza != null) {
            zza.getView().setVisibility(8);
            new zzqb(zza).zza(this.zzarm);
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.zzpv
    public void zzkr() {
        this.zzarm.zzmd();
    }

    @Override // com.google.android.gms.internal.zzpv
    public void zzks() {
        this.zzbyu.zzcu();
    }

    @Override // com.google.android.gms.internal.zzpv
    public final View zzkt() {
        if (this.zzbzb != null) {
            return this.zzbzb.get();
        }
        return null;
    }

    @Nullable
    public final zzagt zzku() {
        if (!com.google.android.gms.ads.internal.zzbt.zzfh().zzs(this.mContext)) {
            return null;
        }
        if (this.zzaqg == null) {
            this.zzaqg = new zzagt(this.mContext, this.zzbyu.getAdUnitId());
        }
        return this.zzaqg;
    }
}
