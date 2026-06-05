package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzaky;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzrb;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class NativeAdViewHolder {

    @Hide
    public static WeakHashMap<View, NativeAdViewHolder> zzamn = new WeakHashMap<>();
    private zzrb zzamm;
    private WeakReference<View> zzamo;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        zzbq.checkNotNull(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            zzaky.e("The provided containerView is of type NativeAdView. NativeAdView objects should not be used with NativeAdViewHolder.");
            return;
        }
        if (zzamn.get(view) != null) {
            zzaky.e("The provided containerView is already in use with another NativeAdViewHolder.");
            return;
        }
        zzamn.put(view, this);
        this.zzamo = new WeakReference<>(view);
        this.zzamm = zzlc.zzik().zza(view, zzd(map), zzd(map2));
    }

    private static HashMap<String, View> zzd(Map<String, View> map) {
        return map == null ? new HashMap<>() : new HashMap<>(map);
    }

    public final void setNativeAd(NativeAd nativeAd) {
        View view = this.zzamo != null ? this.zzamo.get() : null;
        if (view == null) {
            zzaky.zzcz("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzamn.containsKey(view)) {
            zzamn.put(view, this);
        }
        if (this.zzamm != null) {
            try {
                this.zzamm.zza((IObjectWrapper) nativeAd.zzbi());
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void unregisterNativeAd() {
        if (this.zzamm != null) {
            try {
                this.zzamm.unregisterNativeAd();
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        View view = this.zzamo != null ? this.zzamo.get() : null;
        if (view != null) {
            zzamn.remove(view);
        }
    }
}
