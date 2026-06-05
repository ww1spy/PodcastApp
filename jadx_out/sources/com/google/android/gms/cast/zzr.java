package com.google.android.gms.cast;

import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.cast.CastRemoteDisplayClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zzdf;
import com.google.android.gms.internal.zzbei;
import com.google.android.gms.internal.zzbez;
import com.google.android.gms.internal.zzbfe;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzr extends CastRemoteDisplayClient.zza {
    private /* synthetic */ TaskCompletionSource zzeuo;
    private /* synthetic */ zzbez zzeup;
    private /* synthetic */ zzq zzeuq;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzr(zzq zzqVar, TaskCompletionSource taskCompletionSource, zzbez zzbezVar) {
        super(null);
        this.zzeuq = zzqVar;
        this.zzeuo = taskCompletionSource;
        this.zzeup = zzbezVar;
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayClient.zza, com.google.android.gms.internal.zzbfc
    public final void onError(int i) throws RemoteException {
        zzbei zzbeiVar;
        zzbeiVar = this.zzeuq.zzeun.zzeui;
        zzbeiVar.zzb("onError: %d", Integer.valueOf(i));
        this.zzeuq.zzeun.zzadn();
        zzdf.zza(Status.zzfts, null, this.zzeuo);
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayClient.zza, com.google.android.gms.internal.zzbfc
    public final void zza(int i, int i2, Surface surface) throws RemoteException {
        zzbei zzbeiVar;
        int zzk;
        VirtualDisplay virtualDisplay;
        VirtualDisplay virtualDisplay2;
        zzbei zzbeiVar2;
        String str;
        zzbeiVar = this.zzeuq.zzeun.zzeui;
        zzbeiVar.zzb("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.zzeuq.zzeun.getApplicationContext().getSystemService("display");
        if (displayManager == null) {
            zzbeiVar2 = this.zzeuq.zzeun.zzeui;
            str = "Unable to get the display manager";
        } else {
            this.zzeuq.zzeun.zzadn();
            CastRemoteDisplayClient castRemoteDisplayClient = this.zzeuq.zzeun;
            zzk = CastRemoteDisplayClient.zzk(i, i2);
            this.zzeuq.zzeun.zzeuj = displayManager.createVirtualDisplay("private_display", i, i2, zzk, surface, 2);
            virtualDisplay = this.zzeuq.zzeun.zzeuj;
            if (virtualDisplay == null) {
                zzbeiVar2 = this.zzeuq.zzeun.zzeui;
                str = "Unable to create virtual display";
            } else {
                virtualDisplay2 = this.zzeuq.zzeun.zzeuj;
                Display display = virtualDisplay2.getDisplay();
                if (display == null) {
                    zzbeiVar2 = this.zzeuq.zzeun.zzeui;
                    str = "Virtual display does not have a display";
                } else {
                    try {
                        ((zzbfe) this.zzeup.zzalw()).zza(this, display.getDisplayId());
                        return;
                    } catch (RemoteException | IllegalStateException unused) {
                        zzbeiVar2 = this.zzeuq.zzeun.zzeui;
                        str = "Unable to provision the route's new virtual Display";
                    }
                }
            }
        }
        zzbeiVar2.zzc(str, new Object[0]);
        zzdf.zza(Status.zzfts, null, this.zzeuo);
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayClient.zza, com.google.android.gms.internal.zzbfc
    public final void zzado() {
        zzbei zzbeiVar;
        VirtualDisplay virtualDisplay;
        VirtualDisplay virtualDisplay2;
        zzbei zzbeiVar2;
        zzbei zzbeiVar3;
        zzbeiVar = this.zzeuq.zzeun.zzeui;
        zzbeiVar.zzb("onConnectedWithDisplay", new Object[0]);
        virtualDisplay = this.zzeuq.zzeun.zzeuj;
        if (virtualDisplay == null) {
            zzbeiVar3 = this.zzeuq.zzeun.zzeui;
            zzbeiVar3.zzc("There is no virtual display", new Object[0]);
            zzdf.zza(Status.zzfts, null, this.zzeuo);
            return;
        }
        virtualDisplay2 = this.zzeuq.zzeun.zzeuj;
        Display display = virtualDisplay2.getDisplay();
        if (display != null) {
            zzdf.zza(Status.zzftq, display, this.zzeuo);
            return;
        }
        zzbeiVar2 = this.zzeuq.zzeun.zzeui;
        zzbeiVar2.zzc("Virtual display no longer has a display", new Object[0]);
        zzdf.zza(Status.zzfts, null, this.zzeuo);
    }
}
