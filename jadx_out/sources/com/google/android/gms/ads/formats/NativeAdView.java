package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzaky;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzqw;

/* loaded from: classes.dex */
public class NativeAdView extends FrameLayout {
    private final FrameLayout zzamk;
    private final zzqw zzaml;

    public NativeAdView(Context context) {
        super(context);
        this.zzamk = zzb(context);
        this.zzaml = zzbj();
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzamk = zzb(context);
        this.zzaml = zzbj();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzamk = zzb(context);
        this.zzaml = zzbj();
    }

    @TargetApi(21)
    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zzamk = zzb(context);
        this.zzaml = zzbj();
    }

    private final FrameLayout zzb(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzqw zzbj() {
        zzbq.checkNotNull(this.zzamk, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzlc.zzik().zza(this.zzamk.getContext(), this, this.zzamk);
    }

    @Override // android.view.ViewGroup
    @Hide
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzamk);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    @Hide
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.zzamk != view) {
            super.bringChildToFront(this.zzamk);
        }
    }

    public void destroy() {
        try {
            this.zzaml.destroy();
        } catch (RemoteException e) {
            zzaky.zzb("Unable to destroy native ad view", e);
        }
    }

    public AdChoicesView getAdChoicesView() {
        View zzq = zzq(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (zzq instanceof AdChoicesView) {
            return (AdChoicesView) zzq;
        }
        return null;
    }

    @Override // android.view.View
    @Hide
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.zzaml != null) {
            try {
                this.zzaml.zzb(zzn.zzz(view), i);
            } catch (RemoteException e) {
                zzaky.zzb("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    @Hide
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzamk);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    @Hide
    public void removeView(View view) {
        if (this.zzamk == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zza(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzaml.zza((IObjectWrapper) nativeAd.zzbi());
        } catch (RemoteException e) {
            zzaky.zzb("Unable to call setNativeAd on delegate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final void zza(String str, View view) {
        try {
            this.zzaml.zzb(str, zzn.zzz(view));
        } catch (RemoteException e) {
            zzaky.zzb("Unable to call setAssetView on delegate", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final View zzq(String str) {
        try {
            IObjectWrapper zzal = this.zzaml.zzal(str);
            if (zzal != null) {
                return (View) zzn.zzy(zzal);
            }
            return null;
        } catch (RemoteException e) {
            zzaky.zzb("Unable to call getAssetView on delegate", e);
            return null;
        }
    }
}
