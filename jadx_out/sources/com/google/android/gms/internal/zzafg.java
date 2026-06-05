package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzafg extends com.google.android.gms.dynamic.zzp<zzafa> {
    public zzafg() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    public final zzaex zza(Context context, zzwf zzwfVar) {
        try {
            IBinder zza = zzdg(context).zza(com.google.android.gms.dynamic.zzn.zzz(context), zzwfVar, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return queryLocalInterface instanceof zzaex ? (zzaex) queryLocalInterface : new zzaez(zza);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zzc("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzafa zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return queryLocalInterface instanceof zzafa ? (zzafa) queryLocalInterface : new zzafb(iBinder);
    }
}
