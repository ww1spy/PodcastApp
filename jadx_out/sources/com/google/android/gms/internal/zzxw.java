package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxw extends zzwy {
    private final com.google.android.gms.ads.mediation.zza zzcko;

    public zzxw(com.google.android.gms.ads.mediation.zza zzaVar) {
        this.zzcko = zzaVar;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getAdvertiser() {
        return this.zzcko.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getBody() {
        return this.zzcko.getBody();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getCallToAction() {
        return this.zzcko.getCallToAction();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final Bundle getExtras() {
        return this.zzcko.getExtras();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getHeadline() {
        return this.zzcko.getHeadline();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final List getImages() {
        List<NativeAd.Image> images = this.zzcko.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzpj(image.getDrawable(), image.getUri(), image.getScale()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final boolean getOverrideClickHandling() {
        return this.zzcko.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final boolean getOverrideImpressionRecording() {
        return this.zzcko.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getPrice() {
        return this.zzcko.getPrice();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final double getStarRating() {
        if (this.zzcko.getStarRating() != null) {
            return this.zzcko.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getStore() {
        return this.zzcko.getStore();
    }

    @Override // com.google.android.gms.internal.zzwx
    public final zzmm getVideoController() {
        if (this.zzcko.getVideoController() != null) {
            return this.zzcko.getVideoController().zzbh();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void recordImpression() {
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzcko.trackViews((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper2), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void zzh(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void zzj(IObjectWrapper iObjectWrapper) {
        com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
    }

    @Override // com.google.android.gms.internal.zzwx
    public final zzqs zzkc() {
        NativeAd.Image icon = this.zzcko.getIcon();
        if (icon != null) {
            return new zzpj(icon.getDrawable(), icon.getUri(), icon.getScale());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final IObjectWrapper zzkh() {
        Object zzbl = this.zzcko.zzbl();
        if (zzbl == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzn.zzz(zzbl);
    }

    @Override // com.google.android.gms.internal.zzwx
    public final zzqo zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final IObjectWrapper zzmw() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final IObjectWrapper zzmx() {
        return null;
    }
}
