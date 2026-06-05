package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzkj extends com.google.android.gms.dynamic.zzp<zzlw> {
    public zzkj() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public final zzlt zza(Context context, zzko zzkoVar, String str, zzwf zzwfVar, int i) {
        try {
            IBinder zza = zzdg(context).zza(com.google.android.gms.dynamic.zzn.zzz(context), zzkoVar, str, zzwfVar, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE, i);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof zzlt ? (zzlt) queryLocalInterface : new zzlv(zza);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zza("Could not create remote AdManager.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzlw zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof zzlw ? (zzlw) queryLocalInterface : new zzlx(iBinder);
    }
}
