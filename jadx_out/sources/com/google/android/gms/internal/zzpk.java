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
public final class zzpk extends zzrh implements zzpy {
    private Bundle mExtras;
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

    public zzpk(String str, List<zzpj> list, String str2, zzqs zzqsVar, String str3, double d, String str4, String str5, @Nullable zzph zzphVar, Bundle bundle, zzmm zzmmVar, View view, IObjectWrapper iObjectWrapper, String str6) {
        this.zzbxv = str;
        this.zzbxw = list;
        this.zzbxx = str2;
        this.zzbxy = zzqsVar;
        this.zzbxz = str3;
        this.zzbya = d;
        this.zzbyb = str4;
        this.zzbyc = str5;
        this.zzbyd = zzphVar;
        this.mExtras = bundle;
        this.zzbye = zzmmVar;
        this.zzbyf = view;
        this.zzbyg = iObjectWrapper;
        this.zzbyh = str6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzpv zza(zzpk zzpkVar, zzpv zzpvVar) {
        zzpkVar.zzbyi = null;
        return null;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final void destroy() {
        zzaij.zzdfn.post(new zzpl(this));
        this.zzbxv = null;
        this.zzbxw = null;
        this.zzbxx = null;
        this.zzbxy = null;
        this.zzbxz = null;
        this.zzbya = 0.0d;
        this.zzbyb = null;
        this.zzbyc = null;
        this.zzbyd = null;
        this.mExtras = null;
        this.mLock = null;
        this.zzbye = null;
        this.zzbyf = null;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final String getBody() {
        return this.zzbxx;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final String getCallToAction() {
        return this.zzbxz;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String getCustomTemplateId() {
        return "";
    }

    @Override // com.google.android.gms.internal.zzrg
    public final Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final String getHeadline() {
        return this.zzbxv;
    }

    @Override // com.google.android.gms.internal.zzrg, com.google.android.gms.internal.zzpy
    public final List getImages() {
        return this.zzbxw;
    }

    @Override // com.google.android.gms.internal.zzrg
    @Nullable
    public final String getMediationAdapterClassName() {
        return this.zzbyh;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final String getPrice() {
        return this.zzbyc;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final double getStarRating() {
        return this.zzbya;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final String getStore() {
        return this.zzbyb;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final zzmm getVideoController() {
        return this.zzbye;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final void performClick(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to perform click before app install ad initialized.");
            } else {
                this.zzbyi.performClick(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzrg
    public final boolean recordImpression(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to record impression before app install ad initialized.");
                return false;
            }
            return this.zzbyi.recordImpression(bundle);
        }
    }

    @Override // com.google.android.gms.internal.zzrg
    public final void reportTouchEvent(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to perform click before app install ad initialized.");
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

    @Override // com.google.android.gms.internal.zzrg
    public final zzqs zzkc() {
        return this.zzbxy;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final IObjectWrapper zzkd() {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzbyi);
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String zzke() {
        return "2";
    }

    @Override // com.google.android.gms.internal.zzpx
    public final zzph zzkf() {
        return this.zzbyd;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final View zzkg() {
        return this.zzbyf;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final IObjectWrapper zzkh() {
        return this.zzbyg;
    }

    @Override // com.google.android.gms.internal.zzrg
    public final zzqo zzki() {
        return this.zzbyd;
    }
}
