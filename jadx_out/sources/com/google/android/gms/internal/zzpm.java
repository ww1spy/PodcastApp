package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzpm extends zzrl implements zzpy {
    private Bundle mExtras;
    private Object mLock = new Object();
    private String zzbxv;
    private List<zzpj> zzbxw;
    private String zzbxx;
    private String zzbxz;

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
    private zzqs zzbyk;
    private String zzbyl;

    public zzpm(String str, List<zzpj> list, String str2, zzqs zzqsVar, String str3, String str4, @Nullable zzph zzphVar, Bundle bundle, zzmm zzmmVar, View view, IObjectWrapper iObjectWrapper, String str5) {
        this.zzbxv = str;
        this.zzbxw = list;
        this.zzbxx = str2;
        this.zzbyk = zzqsVar;
        this.zzbxz = str3;
        this.zzbyl = str4;
        this.zzbyd = zzphVar;
        this.mExtras = bundle;
        this.zzbye = zzmmVar;
        this.zzbyf = view;
        this.zzbyg = iObjectWrapper;
        this.zzbyh = str5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzpv zza(zzpm zzpmVar, zzpv zzpvVar) {
        zzpmVar.zzbyi = null;
        return null;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final void destroy() {
        zzaij.zzdfn.post(new zzpn(this));
        this.zzbxv = null;
        this.zzbxw = null;
        this.zzbxx = null;
        this.zzbyk = null;
        this.zzbxz = null;
        this.zzbyl = null;
        this.zzbyd = null;
        this.mExtras = null;
        this.mLock = null;
        this.zzbye = null;
        this.zzbyf = null;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final String getAdvertiser() {
        return this.zzbyl;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final String getBody() {
        return this.zzbxx;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final String getCallToAction() {
        return this.zzbxz;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String getCustomTemplateId() {
        return "";
    }

    @Override // com.google.android.gms.internal.zzrk
    public final Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final String getHeadline() {
        return this.zzbxv;
    }

    @Override // com.google.android.gms.internal.zzrk, com.google.android.gms.internal.zzpy
    public final List getImages() {
        return this.zzbxw;
    }

    @Override // com.google.android.gms.internal.zzrk
    @Nullable
    public final String getMediationAdapterClassName() {
        return this.zzbyh;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final zzmm getVideoController() {
        return this.zzbye;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final void performClick(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to perform click before content ad initialized.");
            } else {
                this.zzbyi.performClick(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzrk
    public final boolean recordImpression(Bundle bundle) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzahw.e("Attempt to record impression before content ad initialized.");
                return false;
            }
            return this.zzbyi.recordImpression(bundle);
        }
    }

    @Override // com.google.android.gms.internal.zzrk
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

    @Override // com.google.android.gms.internal.zzrk
    public final IObjectWrapper zzkd() {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzbyi);
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String zzke() {
        return NotificationPreferences.YES;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final zzph zzkf() {
        return this.zzbyd;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final View zzkg() {
        return this.zzbyf;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final IObjectWrapper zzkh() {
        return this.zzbyg;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final zzqo zzki() {
        return this.zzbyd;
    }

    @Override // com.google.android.gms.internal.zzrk
    public final zzqs zzkj() {
        return this.zzbyk;
    }
}
