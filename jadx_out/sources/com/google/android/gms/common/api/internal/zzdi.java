package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzdi implements Runnable {
    private /* synthetic */ Result zzgbo;
    private /* synthetic */ zzdh zzgbp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdi(zzdh zzdhVar, Result result) {
        this.zzgbp = zzdhVar;
        this.zzgbo = result;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        WeakReference weakReference;
        zzdj zzdjVar;
        zzdj zzdjVar2;
        WeakReference weakReference2;
        ResultTransform resultTransform;
        zzdj zzdjVar3;
        zzdj zzdjVar4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.zzfvb.set(true);
                resultTransform = this.zzgbp.zzgbh;
                PendingResult onSuccess = resultTransform.onSuccess(this.zzgbo);
                zzdjVar3 = this.zzgbp.zzgbm;
                zzdjVar4 = this.zzgbp.zzgbm;
                zzdjVar3.sendMessage(zzdjVar4.obtainMessage(0, onSuccess));
                BasePendingResult.zzfvb.set(false);
                zzdh zzdhVar = this.zzgbp;
                zzdh.zzd(this.zzgbo);
                weakReference3 = this.zzgbp.zzfve;
                GoogleApiClient googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient != null) {
                    googleApiClient.zzb(this.zzgbp);
                }
            } catch (RuntimeException e) {
                zzdjVar = this.zzgbp.zzgbm;
                zzdjVar2 = this.zzgbp.zzgbm;
                zzdjVar.sendMessage(zzdjVar2.obtainMessage(1, e));
                BasePendingResult.zzfvb.set(false);
                zzdh zzdhVar2 = this.zzgbp;
                zzdh.zzd(this.zzgbo);
                weakReference2 = this.zzgbp.zzfve;
                GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference2.get();
                if (googleApiClient2 != null) {
                    googleApiClient2.zzb(this.zzgbp);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.zzfvb.set(false);
            zzdh zzdhVar3 = this.zzgbp;
            zzdh.zzd(this.zzgbo);
            weakReference = this.zzgbp.zzfve;
            GoogleApiClient googleApiClient3 = (GoogleApiClient) weakReference.get();
            if (googleApiClient3 != null) {
                googleApiClient3.zzb(this.zzgbp);
            }
            throw th;
        }
    }
}
