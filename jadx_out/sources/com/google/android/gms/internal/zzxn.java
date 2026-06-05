package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest;

/* loaded from: classes.dex */
final class zzxn implements Runnable {
    private /* synthetic */ zzxi zzckk;
    private /* synthetic */ AdRequest.ErrorCode zzckl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxn(zzxi zzxiVar, AdRequest.ErrorCode errorCode) {
        this.zzckk = zzxiVar;
        this.zzckl = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwl zzwlVar;
        try {
            zzwlVar = this.zzckk.zzckb;
            zzwlVar.onAdFailedToLoad(zzxu.zza(this.zzckl));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdFailedToLoad.", e);
        }
    }
}
