package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzpo extends zzrp implements zzpx {
    private final Object mLock = new Object();
    private final zzph zzbyd;

    @Nullable
    private zzmm zzbye;

    @Nullable
    private View zzbyf;
    private zzpv zzbyi;
    private final String zzbyn;
    private final SimpleArrayMap<String, zzpj> zzbyo;
    private final SimpleArrayMap<String, String> zzbyp;

    public zzpo(String str, SimpleArrayMap<String, zzpj> simpleArrayMap, SimpleArrayMap<String, String> simpleArrayMap2, zzph zzphVar, zzmm zzmmVar, View view) {
        this.zzbyn = str;
        this.zzbyo = simpleArrayMap;
        this.zzbyp = simpleArrayMap2;
        this.zzbyd = zzphVar;
        this.zzbye = zzmmVar;
        this.zzbyf = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzpv zza(zzpo zzpoVar, zzpv zzpvVar) {
        zzpoVar.zzbyi = null;
        return null;
    }

    @Override // com.google.android.gms.internal.zzro
    public final void destroy() {
        zzaij.zzdfn.post(new zzpq(this));
        this.zzbye = null;
        this.zzbyf = null;
    }

    @Override // com.google.android.gms.internal.zzro
    public final List<String> getAvailableAssetNames() {
        String[] strArr = new String[this.zzbyo.size() + this.zzbyp.size()];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.zzbyo.size()) {
            strArr[i3] = this.zzbyo.keyAt(i2);
            i2++;
            i3++;
        }
        while (i < this.zzbyp.size()) {
            strArr[i3] = this.zzbyp.keyAt(i);
            i++;
            i3++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.zzro, com.google.android.gms.internal.zzpx
    public final String getCustomTemplateId() {
        return this.zzbyn;
    }

    @Override // com.google.android.gms.internal.zzro
    public final zzmm getVideoController() {
        return this.zzbye;
    }

    @Override // com.google.android.gms.internal.zzro
    public final void performClick(String str) {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzaky.e("Attempt to call performClick before ad initialized.");
            } else {
                this.zzbyi.zza(null, str, null, null, null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzro
    public final void recordImpression() {
        synchronized (this.mLock) {
            if (this.zzbyi == null) {
                zzaky.e("Attempt to perform recordImpression before ad initialized.");
            } else {
                this.zzbyi.zza((View) null, (Map<String, WeakReference<View>>) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzro
    public final String zzap(String str) {
        return this.zzbyp.get(str);
    }

    @Override // com.google.android.gms.internal.zzro
    public final zzqs zzaq(String str) {
        return this.zzbyo.get(str);
    }

    @Override // com.google.android.gms.internal.zzpx
    public final void zzb(zzpv zzpvVar) {
        synchronized (this.mLock) {
            this.zzbyi = zzpvVar;
        }
    }

    @Override // com.google.android.gms.internal.zzro
    public final boolean zzf(IObjectWrapper iObjectWrapper) {
        if (this.zzbyi == null) {
            zzaky.e("Attempt to call renderVideoInMediaView before ad initialized.");
            return false;
        }
        if (this.zzbyf == null) {
            return false;
        }
        zzpp zzppVar = new zzpp(this);
        this.zzbyi.zza((FrameLayout) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), zzppVar);
        return true;
    }

    @Override // com.google.android.gms.internal.zzro
    public final IObjectWrapper zzkd() {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzbyi);
    }

    @Override // com.google.android.gms.internal.zzpx
    public final String zzke() {
        return "3";
    }

    @Override // com.google.android.gms.internal.zzpx
    public final zzph zzkf() {
        return this.zzbyd;
    }

    @Override // com.google.android.gms.internal.zzpx
    public final View zzkg() {
        return this.zzbyf;
    }

    @Override // com.google.android.gms.internal.zzro
    public final IObjectWrapper zzkk() {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzbyi.getContext().getApplicationContext());
    }
}
