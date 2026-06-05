package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.Random;

/* loaded from: classes.dex */
final class zzum extends zzlj {
    private final zzli zzcdx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzum(zzli zzliVar) {
        this.zzcdx = zzliVar;
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClicked() throws RemoteException {
        this.zzcdx.onAdClicked();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClosed() throws RemoteException {
        if (zzuv.zzlx()) {
            int intValue = ((Integer) zzlc.zzio().zzd(zzoi.zzbpz)).intValue();
            int intValue2 = ((Integer) zzlc.zzio().zzd(zzoi.zzbqa)).intValue();
            if (intValue <= 0 || intValue2 < 0) {
                com.google.android.gms.ads.internal.zzbt.zzey().zzlg();
            } else {
                zzaij.zzdfn.postDelayed(zzun.zzcdy, intValue + new Random().nextInt(intValue2 + 1));
            }
        }
        this.zzcdx.onAdClosed();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdFailedToLoad(int i) throws RemoteException {
        this.zzcdx.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdImpression() throws RemoteException {
        this.zzcdx.onAdImpression();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLeftApplication() throws RemoteException {
        this.zzcdx.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLoaded() throws RemoteException {
        this.zzcdx.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdOpened() throws RemoteException {
        this.zzcdx.onAdOpened();
    }
}
