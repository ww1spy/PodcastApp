package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzahv extends zzahs {
    private Context mContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahv(Context context) {
        this.mContext = context;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.mContext);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzahw.zzb("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        zzaks.zzae(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        zzahw.zzcz(sb.toString());
    }
}
