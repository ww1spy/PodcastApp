package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.common.internal.Hide;
import java.util.Date;
import java.util.Set;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxb implements MediationAdRequest {
    private final int zzbhm;
    private final boolean zzbhy;
    private final int zzcjy;
    private final Date zzhh;
    private final Set<String> zzhj;
    private final boolean zzhk;
    private final Location zzhl;

    public zzxb(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, boolean z2) {
        this.zzhh = date;
        this.zzbhm = i;
        this.zzhj = set;
        this.zzhl = location;
        this.zzhk = z;
        this.zzcjy = i2;
        this.zzbhy = z2;
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
}
