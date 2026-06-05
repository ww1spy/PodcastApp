package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zznc extends com.google.android.gms.dynamic.zzp<zzmk> {
    public zznc() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzmk zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof zzmk ? (zzmk) queryLocalInterface : new zzml(iBinder);
    }

    public final zzmh zzg(Context context) {
        try {
            IBinder zza = zzdg(context).zza(com.google.android.gms.dynamic.zzn.zzz(context), com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof zzmh ? (zzmh) queryLocalInterface : new zzmj(zza);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zzc("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
