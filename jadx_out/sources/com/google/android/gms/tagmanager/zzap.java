package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzap implements zzaq {
    private /* synthetic */ DataLayer zzkor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(DataLayer dataLayer) {
        this.zzkor = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzaq
    public final void zzal(List<DataLayer.zza> list) {
        CountDownLatch countDownLatch;
        for (DataLayer.zza zzaVar : list) {
            this.zzkor.zzaa(DataLayer.zzn(zzaVar.zzbkr, zzaVar.mValue));
        }
        countDownLatch = this.zzkor.zzkoq;
        countDownLatch.countDown();
    }
}
