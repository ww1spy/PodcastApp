package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzmz;
import com.google.android.gms.internal.zznb;

/* loaded from: classes.dex */
public class MobileAds {

    /* loaded from: classes.dex */
    public static final class Settings {
        private final zznb zzalz = new zznb();

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }

        @Hide
        final zznb zzbg() {
            return this.zzalz;
        }
    }

    private MobileAds() {
    }

    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return zzmz.zziz().getRewardedVideoAdInstance(context);
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @RequiresPermission("android.permission.INTERNET")
    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        zzmz.zziz().zza(context, str, settings == null ? null : settings.zzbg());
    }

    public static void openDebugMenu(Context context, String str) {
        zzmz.zziz().openDebugMenu(context, str);
    }

    public static void setAppMuted(boolean z) {
        zzmz.zziz().setAppMuted(z);
    }

    public static void setAppVolume(float f) {
        zzmz.zziz().setAppVolume(f);
    }
}
