package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;

/* loaded from: classes.dex */
public interface NativeMediationAdRequest extends MediationAdRequest {
    float getAdVolume();

    NativeAdOptions getNativeAdOptions();

    boolean isAdMuted();

    boolean isAppInstallAdRequested();

    boolean isContentAdRequested();

    @Hide
    boolean zznb();

    @Hide
    boolean zznc();

    @Hide
    Map<String, Boolean> zznd();
}
