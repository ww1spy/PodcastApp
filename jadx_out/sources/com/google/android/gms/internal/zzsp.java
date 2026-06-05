package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzsp extends com.google.android.gms.dynamic.zzp<zzre> {
    public zzsp() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    public final zzrb zzb(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        try {
            IBinder zza = zzdg(view.getContext()).zza(com.google.android.gms.dynamic.zzn.zzz(view), com.google.android.gms.dynamic.zzn.zzz(hashMap), com.google.android.gms.dynamic.zzn.zzz(hashMap2));
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof zzrb ? (zzrb) queryLocalInterface : new zzrd(zza);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zzc("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzre zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof zzre ? (zzre) queryLocalInterface : new zzrf(iBinder);
    }
}
