package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxg implements NativeMediationAdRequest {
    private final zzqh zzapm;
    private final int zzbhm;
    private final boolean zzbhy;
    private final int zzcjy;
    private final Date zzhh;
    private final Set<String> zzhj;
    private final boolean zzhk;
    private final Location zzhl;
    private final List<String> zzapn = new ArrayList();
    private final Map<String, Boolean> zzckh = new HashMap();

    public zzxg(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, zzqh zzqhVar, List<String> list, boolean z2) {
        Map<String, Boolean> map;
        String str;
        boolean z3;
        this.zzhh = date;
        this.zzbhm = i;
        this.zzhj = set;
        this.zzhl = location;
        this.zzhk = z;
        this.zzcjy = i2;
        this.zzapm = zzqhVar;
        this.zzbhy = z2;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            map = this.zzckh;
                            str = split[1];
                            z3 = true;
                        } else if ("false".equals(split[2])) {
                            map = this.zzckh;
                            str = split[1];
                            z3 = false;
                        }
                        map.put(str, z3);
                    }
                } else {
                    this.zzapn.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return zzmz.zziz().zzdp();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Date getBirthday() {
        return this.zzhh;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int getGender() {
        return this.zzbhm;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzhj;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zzhl;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        if (this.zzapm == null) {
            return null;
        }
        NativeAdOptions.Builder requestMultipleImages = new NativeAdOptions.Builder().setReturnUrlsForImageAssets(this.zzapm.zzbzj).setImageOrientation(this.zzapm.zzbzk).setRequestMultipleImages(this.zzapm.zzbzl);
        if (this.zzapm.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(this.zzapm.zzbzm);
        }
        if (this.zzapm.versionCode >= 3 && this.zzapm.zzbzn != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(this.zzapm.zzbzn));
        }
        return requestMultipleImages.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return zzmz.zziz().zzdq();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        return this.zzapn != null && this.zzapn.contains("2");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        return this.zzapn != null && this.zzapn.contains(NotificationPreferences.YES);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isDesignedForFamilies() {
        return this.zzbhy;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zzhk;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzcjy;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zznb() {
        return this.zzapn != null && this.zzapn.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zznc() {
        return this.zzapn != null && this.zzapn.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zznd() {
        return this.zzckh;
    }
}
