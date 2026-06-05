package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zza implements PendingResult.zza {
    private /* synthetic */ Batch zzfsj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(Batch batch) {
        this.zzfsj = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.zza
    public final void zzr(Status status) {
        Object obj;
        int i;
        boolean z;
        boolean z2;
        PendingResult[] pendingResultArr;
        obj = this.zzfsj.mLock;
        synchronized (obj) {
            if (this.zzfsj.isCanceled()) {
                return;
            }
            if (status.isCanceled()) {
                Batch.zza(this.zzfsj, true);
            } else if (!status.isSuccess()) {
                Batch.zzb(this.zzfsj, true);
            }
            Batch.zzb(this.zzfsj);
            i = this.zzfsj.zzfsf;
            if (i == 0) {
                z = this.zzfsj.zzfsh;
                if (z) {
                    super/*com.google.android.gms.common.api.internal.BasePendingResult*/.cancel();
                } else {
                    z2 = this.zzfsj.zzfsg;
                    Status status2 = z2 ? new Status(13) : Status.zzftq;
                    Batch batch = this.zzfsj;
                    pendingResultArr = this.zzfsj.zzfsi;
                    batch.setResult(new BatchResult(status2, pendingResultArr));
                }
            }
        }
    }
}
