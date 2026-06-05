package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxf extends zzwv {
    private final NativeContentAdMapper zzckg;

    public zzxf(NativeContentAdMapper nativeContentAdMapper) {
        this.zzckg = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.zzwu
    public final String getAdvertiser() {
        return this.zzckg.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final String getBody() {
        return this.zzckg.getBody();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final String getCallToAction() {
        return this.zzckg.getCallToAction();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final Bundle getExtras() {
        return this.zzckg.getExtras();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final String getHeadline() {
        return this.zzckg.getHeadline();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final List getImages() {
        List<NativeAd.Image> images = this.zzckg.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzpj(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzwu
    public final boolean getOverrideClickHandling() {
        return this.zzckg.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final boolean getOverrideImpressionRecording() {
        return this.zzckg.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final zzmm getVideoController() {
        if (this.zzckg.getVideoController() != null) {
            return this.zzckg.getVideoController().zzbh();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwu
    public final void recordImpression() {
        this.zzckg.recordImpression();
    }

    @Override // com.google.android.gms.internal.zzwu
    public final void zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        this.zzckg.trackViews((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper2), (HashMap) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.zzwu
    public final void zzh(IObjectWrapper iObjectWrapper) {
        this.zzckg.handleClick((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzwu
    public final void zzi(IObjectWrapper iObjectWrapper) {
        this.zzckg.trackView((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzwu
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zzckg.untrackView((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzwu
    public final IObjectWrapper zzkh() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwu
    public final zzqo zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwu
    public final zzqs zzkj() {
        NativeAd.Image logo = this.zzckg.getLogo();
        if (logo != null) {
            return new zzpj(logo.getDrawable(), logo.getUri(), logo.getScale());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwu
    public final IObjectWrapper zzmw() {
        View adChoicesContent = this.zzckg.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzn.zzz(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.zzwu
    public final IObjectWrapper zzmx() {
        View zzvq = this.zzckg.zzvq();
        if (zzvq == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzn.zzz(zzvq);
    }
}
