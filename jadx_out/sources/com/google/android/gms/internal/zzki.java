package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzki extends com.google.android.gms.dynamic.zzp<zzlr> {
    public zzki() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public final zzlo zza(Context context, String str, zzwf zzwfVar) {
        try {
            IBinder zza = zzdg(context).zza(com.google.android.gms.dynamic.zzn.zzz(context), str, zzwfVar, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzlo ? (zzlo) queryLocalInterface : new zzlq(zza);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zzc("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzlr zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof zzlr ? (zzlr) queryLocalInterface : new zzls(iBinder);
    }
}
