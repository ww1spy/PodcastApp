package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahu {
    public static void zzaf(Context context) {
        if (zzaks.zzbi(context) && !zzaks.zzsd()) {
            zzalt zzaltVar = (zzalt) new zzahv(context).zzns();
            zzahw.zzcy("Updating ad debug logging enablement.");
            zzalg.zza(zzaltVar, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
