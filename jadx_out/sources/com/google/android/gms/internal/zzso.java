package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzso extends com.google.android.gms.dynamic.zzp<zzqz> {
    public zzso() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    public final zzqw zzb(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder zza = zzdg(context).zza(com.google.android.gms.dynamic.zzn.zzz(context), com.google.android.gms.dynamic.zzn.zzz(frameLayout), com.google.android.gms.dynamic.zzn.zzz(frameLayout2), com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (zza == null) {
                return null;
            }
            IInterface queryLocalInterface = zza.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof zzqw ? (zzqw) queryLocalInterface : new zzqy(zza);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zzc("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzqz zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof zzqz ? (zzqz) queryLocalInterface : new zzra(iBinder);
    }
}
