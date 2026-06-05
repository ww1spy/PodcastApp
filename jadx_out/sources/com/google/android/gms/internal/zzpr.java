package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzpr extends zzsl implements zzpy {
    private Object mLock = new Object();
    private String zzbxv;
    private List<zzpj> zzbxw;
    private String zzbxx;
    private zzqs zzbxy;
    private String zzbxz;
    private double zzbya;
    private String zzbyb;
    private String zzbyc;

    @Nullable
    private zzph zzbyd;

    @Nullable
    private zzmm zzbye;

    @Nullable
    private View zzbyf;

    @Nullable
    private IObjectWrapper zzbyg;

    @Nullable
    private String zzbyh;
    private zzpv zzbyi;
    private String zzbyl;

    public zzpr(String str, List<zzpj> list, String str2, zzqs zzqsVar, String str3, String str4, double d, String str5, String str6, @Nullable zzph zzphVar, zzmm zzmmVar, View view, IObjectWrapper iObjectWrapper, String str7) {
        this.zzbxv = str;
        this.zzbxw = list;
        this.zzbxx = str2;
        this.zzbxy = zzqsVar;
        this.zzbxz = str3;
        this.zzbyl = str4;
        this.zzbya = d;
        this.zzbyb = str5;
        this.zzbyc = str6;
        this.zzbyd = zzphVar;
        this.zzbye = zzmmVar;
        this.zzbyf = view;
        this.zzbyg = iObjectWrapper;
        this.zzbyh = str7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzpv zza(zzpr zzprVar, zzpv zzpvVar) {
        zzprVar.zzbyi = null;
        return null;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final void destroy() {
        zzaij.zzdfn.post(new zzps(this));
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getAdvertiser() {
        return this.zzbyl;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getBody() {
        return this.zzbxx;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getCallToAction() {
        return this.zzbxz;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String getCustomTemplateId() {
        return "";
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getHeadline() {
        return this.zzbxv;
    }

    @Override // com.google.android.gms.internal.zzsk, com.google.android.gms.internal.zzpy
    public final List getImages() {
        return this.zzbxw;
    }

    @Override // com.google.android.gms.internal.zzsk
    @Nullable
    public final String getMediationAdapterClassName() {
        return this.zzbyh;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getPrice() {
        return this.zzbyc;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final double getStarRating() {
        return this.zzbya;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getStore() {
        return this.zzbyb;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final zzmm getVideoController() {
        return this.zzbye;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final void performClick(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to perform click before unified native ad is initialized.");
            } else {
                this.zzbyi.performClick(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzsk
    public final boolean recordImpression(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to record impression before unified native ad is initialized.");
                return false;
            }
            return this.zzbyi.recordImpression(bundle);
        }
    }

    @Override // com.google.android.gms.internal.zzsk
    public final void reportTouchEvent(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to perform click before unified native ad is initialized.");
            } else {
                this.zzbyi.reportTouchEvent(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpx
    public final void zzb(zzpv zzpvVar) {
        synchronized (this.mLock) {
            this.zzbyi = zzpvVar;
        }
    }

    @Override // com.google.android.gms.internal.zzsk
    public final zzqs zzkc() {
        return this.zzbxy;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final IObjectWrapper zzkd() {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzbyi);
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String zzke() {
        return "6";
    }

    @Override // com.google.android.gms.internal.zzpx
    public final zzph zzkf() {
        return this.zzbyd;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final View zzkg() {
        return this.zzbyf;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final IObjectWrapper zzkh() {
        return this.zzbyg;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final zzqo zzki() {
        return this.zzbyd;
    }
}
