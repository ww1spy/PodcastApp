package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.common.api.Status;

@TargetApi(19)
/* loaded from: classes.dex */
public final class zzbew extends zzbeu {
    private final zzbfa zzfot;
    private /* synthetic */ zzbev zzfou;

    public zzbew(zzbev zzbevVar, zzbfa zzbfaVar) {
        this.zzfou = zzbevVar;
        this.zzfot = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.zzbeu, com.google.android.gms.internal.zzbfc
    public final void onError(int i) throws RemoteException {
        zzbei zzbeiVar;
        zzbeiVar = zzbeq.zzeus;
        zzbeiVar.zzb("onError: %d", Integer.valueOf(i));
        this.zzfou.zzfor.zzadn();
        this.zzfou.setResult((zzbev) new zzbey(Status.zzfts));
    }

    @Override // com.google.android.gms.internal.zzbeu, com.google.android.gms.internal.zzbfc
    public final void zza(int i, int i2, Surface surface) {
        zzbei zzbeiVar;
        VirtualDisplay virtualDisplay;
        VirtualDisplay virtualDisplay2;
        zzbei zzbeiVar2;
        zzbev zzbevVar;
        zzbey zzbeyVar;
        VirtualDisplay virtualDisplay3;
        zzbei zzbeiVar3;
        zzbei zzbeiVar4;
        zzbei zzbeiVar5;
        zzbeiVar = zzbeq.zzeus;
        zzbeiVar.zzb("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.zzfot.getContext().getSystemService("display");
        if (displayManager == null) {
            zzbeiVar5 = zzbeq.zzeus;
            zzbeiVar5.zzc("Unable to get the display manager", new Object[0]);
            zzbevVar = this.zzfou;
            zzbeyVar = new zzbey(Status.zzfts);
        } else {
            this.zzfou.zzfor.zzadn();
            this.zzfou.zzfor.zzeuj = displayManager.createVirtualDisplay("private_display", i, i2, ((i < i2 ? i : i2) * 320) / 1080, surface, 2);
            virtualDisplay = this.zzfou.zzfor.zzeuj;
            if (virtualDisplay == null) {
                zzbeiVar4 = zzbeq.zzeus;
                zzbeiVar4.zzc("Unable to create virtual display", new Object[0]);
                zzbevVar = this.zzfou;
                zzbeyVar = new zzbey(Status.zzfts);
            } else {
                virtualDisplay2 = this.zzfou.zzfor.zzeuj;
                if (virtualDisplay2.getDisplay() == null) {
                    zzbeiVar3 = zzbeq.zzeus;
                    zzbeiVar3.zzc("Virtual display does not have a display", new Object[0]);
                    zzbevVar = this.zzfou;
                    zzbeyVar = new zzbey(Status.zzfts);
                } else {
                    try {
                        zzbfa zzbfaVar = this.zzfot;
                        virtualDisplay3 = this.zzfou.zzfor.zzeuj;
                        ((zzbfe) zzbfaVar.zzalw()).zza(this, virtualDisplay3.getDisplay().getDisplayId());
                        return;
                    } catch (RemoteException | IllegalStateException unused) {
                        zzbeiVar2 = zzbeq.zzeus;
                        zzbeiVar2.zzc("Unable to provision the route's new virtual Display", new Object[0]);
                        zzbevVar = this.zzfou;
                        zzbeyVar = new zzbey(Status.zzfts);
                    }
                }
            }
        }
        zzbevVar.setResult((zzbev) zzbeyVar);
    }

    @Override // com.google.android.gms.internal.zzbeu, com.google.android.gms.internal.zzbfc
    public final void zzado() {
        zzbei zzbeiVar;
        VirtualDisplay virtualDisplay;
        VirtualDisplay virtualDisplay2;
        zzbei zzbeiVar2;
        zzbei zzbeiVar3;
        zzbeiVar = zzbeq.zzeus;
        zzbeiVar.zzb("onConnectedWithDisplay", new Object[0]);
        virtualDisplay = this.zzfou.zzfor.zzeuj;
        if (virtualDisplay == null) {
            zzbeiVar3 = zzbeq.zzeus;
            zzbeiVar3.zzc("There is no virtual display", new Object[0]);
            this.zzfou.setResult((zzbev) new zzbey(Status.zzfts));
            return;
        }
        virtualDisplay2 = this.zzfou.zzfor.zzeuj;
        Display display = virtualDisplay2.getDisplay();
        if (display != null) {
            this.zzfou.setResult((zzbev) new zzbey(display));
            return;
        }
        zzbeiVar2 = zzbeq.zzeus;
        zzbeiVar2.zzc("Virtual display no longer has a display", new Object[0]);
        this.zzfou.setResult((zzbev) new zzbey(Status.zzfts));
    }
}
