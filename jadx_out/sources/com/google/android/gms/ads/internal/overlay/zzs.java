package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzyr;

@zzabh
/* loaded from: classes.dex */
public final class zzs extends zzyr {
    private Activity zzakg;
    private AdOverlayInfoParcel zzcnx;
    private boolean zzcny = false;
    private boolean zzcnz = false;

    public zzs(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzcnx = adOverlayInfoParcel;
        this.zzakg = activity;
    }

    private final synchronized void zznq() {
        if (!this.zzcnz) {
            if (this.zzcnx.zzcnl != null) {
                this.zzcnx.zzcnl.zzcf();
            }
            this.zzcnz = true;
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onBackPressed() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onCreate(Bundle bundle) {
        boolean z = bundle != null ? bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false) : false;
        if (this.zzcnx == null || z) {
            this.zzakg.finish();
            return;
        }
        if (bundle == null) {
            if (this.zzcnx.zzcnk != null) {
                this.zzcnx.zzcnk.onAdClicked();
            }
            if (this.zzakg.getIntent() != null && this.zzakg.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && this.zzcnx.zzcnl != null) {
                this.zzcnx.zzcnl.zzcg();
            }
        }
        zzbt.zzei();
        if (zza.zza(this.zzakg, this.zzcnx.zzcnj, this.zzcnx.zzcnr)) {
            return;
        }
        this.zzakg.finish();
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onDestroy() throws RemoteException {
        if (this.zzakg.isFinishing()) {
            zznq();
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onPause() throws RemoteException {
        if (this.zzcnx.zzcnl != null) {
            this.zzcnx.zzcnl.onPause();
        }
        if (this.zzakg.isFinishing()) {
            zznq();
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onRestart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onResume() throws RemoteException {
        if (this.zzcny) {
            this.zzakg.finish();
            return;
        }
        this.zzcny = true;
        if (this.zzcnx.zzcnl != null) {
            this.zzcnx.zzcnl.onResume();
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzcny);
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onStart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void onStop() throws RemoteException {
        if (this.zzakg.isFinishing()) {
            zznq();
        }
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void zzbd() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzyq
    public final boolean zzni() throws RemoteException {
        return false;
    }
}
