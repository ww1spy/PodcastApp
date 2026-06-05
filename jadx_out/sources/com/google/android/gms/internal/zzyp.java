package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzyp extends com.google.android.gms.dynamic.zzp<zzyt> {
    public zzyp() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public final zzyq zze(Activity activity) {
        try {
            IBinder zzl = zzdg(activity).zzl(com.google.android.gms.dynamic.zzn.zzz(activity));
            if (zzl == null) {
                return null;
            }
            IInterface queryLocalInterface = zzl.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof zzyq ? (zzyq) queryLocalInterface : new zzys(zzl);
        } catch (RemoteException | com.google.android.gms.dynamic.zzq e) {
            zzaky.zzc("Could not create remote AdOverlay.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    protected final /* synthetic */ zzyt zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof zzyt ? (zzyt) queryLocalInterface : new zzyu(iBinder);
    }
}
