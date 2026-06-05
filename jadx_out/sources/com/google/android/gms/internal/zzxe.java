package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxe extends zzws {
    private final NativeAppInstallAdMapper zzckf;

    public zzxe(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzckf = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.zzwr
    public final String getBody() {
        return this.zzckf.getBody();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final String getCallToAction() {
        return this.zzckf.getCallToAction();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final Bundle getExtras() {
        return this.zzckf.getExtras();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final String getHeadline() {
        return this.zzckf.getHeadline();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final List getImages() {
        List<NativeAd.Image> images = this.zzckf.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzpj(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzwr
    public final boolean getOverrideClickHandling() {
        return this.zzckf.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final boolean getOverrideImpressionRecording() {
        return this.zzckf.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final String getPrice() {
        return this.zzckf.getPrice();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final double getStarRating() {
        return this.zzckf.getStarRating();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final String getStore() {
        return this.zzckf.getStore();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final zzmm getVideoController() {
        if (this.zzckf.getVideoController() != null) {
            return this.zzckf.getVideoController().zzbh();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwr
    public final void recordImpression() {
        this.zzckf.recordImpression();
    }

    @Override // com.google.android.gms.internal.zzwr
    public final void zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzckf.trackViews((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper2), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.zzwr
    public final void zzh(IObjectWrapper iObjectWrapper) {
        this.zzckf.handleClick((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzwr
    public final void zzi(IObjectWrapper iObjectWrapper) {
        this.zzckf.trackView((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzwr
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zzckf.untrackView((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzwr
    public final zzqs zzkc() {
        NativeAd.Image icon = this.zzckf.getIcon();
        if (icon != null) {
            return new zzpj(icon.getDrawable(), icon.getUri(), icon.getScale());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwr
    public final IObjectWrapper zzkh() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwr
    public final zzqo zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwr
    public final IObjectWrapper zzmw() {
        View adChoicesContent = this.zzckf.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzn.zzz(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.zzwr
    public final IObjectWrapper zzmx() {
        View zzvq = this.zzckf.zzvq();
        if (zzvq == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzn.zzz(zzvq);
    }
}
