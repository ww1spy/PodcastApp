package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzks;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzmz {
    private static final Object sLock = new Object();
    private static zzmz zzbkd;
    private zzmh zzbke;
    private RewardedVideoAd zzbkf;

    private zzmz() {
    }

    public static zzmz zziz() {
        zzmz zzmzVar;
        synchronized (sLock) {
            if (zzbkd == null) {
                zzbkd = new zzmz();
            }
            zzmzVar = zzbkd;
        }
        return zzmzVar;
    }

    public final RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        synchronized (sLock) {
            if (this.zzbkf != null) {
                return this.zzbkf;
            }
            this.zzbkf = new zzafk(context, (zzaex) zzks.zza(context, false, (zzks.zza) new zzla(zzlc.zzik(), context, new zzwe())));
            return this.zzbkf;
        }
    }

    public final void openDebugMenu(Context context, String str) {
        com.google.android.gms.common.internal.zzbq.zza(this.zzbke != null, "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.zzbke.zzb(com.google.android.gms.dynamic.zzn.zzz(context), str);
        } catch (RemoteException e) {
            zzaky.zzb("Unable to open debug menu.", e);
        }
    }

    public final void setAppMuted(boolean z) {
        com.google.android.gms.common.internal.zzbq.zza(this.zzbke != null, "MobileAds.initialize() must be called prior to setting app muted state.");
        try {
            this.zzbke.setAppMuted(z);
        } catch (RemoteException e) {
            zzaky.zzb("Unable to set app mute state.", e);
        }
    }

    public final void setAppVolume(float f) {
        com.google.android.gms.common.internal.zzbq.checkArgument(0.0f <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        com.google.android.gms.common.internal.zzbq.zza(this.zzbke != null, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzbke.setAppVolume(f);
        } catch (RemoteException e) {
            zzaky.zzb("Unable to set app volume.", e);
        }
    }

    public final void zza(Context context, String str, zznb zznbVar) {
        synchronized (sLock) {
            if (this.zzbke != null) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            try {
                this.zzbke = (zzmh) zzks.zza(context, false, (zzks.zza) new zzkx(zzlc.zzik(), context));
                this.zzbke.initialize();
                if (str != null) {
                    this.zzbke.zza(str, com.google.android.gms.dynamic.zzn.zzz(new zzna(this, context)));
                }
            } catch (RemoteException e) {
                zzaky.zzc("MobileAdsSettingManager initialization failed", e);
            }
        }
    }

    public final float zzdp() {
        if (this.zzbke == null) {
            return 1.0f;
        }
        try {
            return this.zzbke.zzdp();
        } catch (RemoteException e) {
            zzaky.zzb("Unable to get app volume.", e);
            return 1.0f;
        }
    }

    public final boolean zzdq() {
        if (this.zzbke == null) {
            return false;
        }
        try {
            return this.zzbke.zzdq();
        } catch (RemoteException e) {
            zzaky.zzb("Unable to get app mute state.", e);
            return false;
        }
    }
}
