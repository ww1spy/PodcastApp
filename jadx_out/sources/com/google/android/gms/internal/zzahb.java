package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* loaded from: classes.dex */
final class zzahb implements Runnable {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzamd zzdcg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahb(zzaha zzahaVar, Context context, zzamd zzamdVar) {
        this.val$context = context;
        this.zzdcg = zzamdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzdcg.set(AdvertisingIdClient.getAdvertisingIdInfo(this.val$context));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.zzdcg.setException(e);
            zzaky.zzb("Exception while getting advertising Id info", e);
        }
    }
}
