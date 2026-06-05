package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaha implements zzahc {
    @Override // com.google.android.gms.internal.zzahc
    public final zzalt<String> zza(String str, PackageInfo packageInfo) {
        return zzali.zzh(str);
    }

    @Override // com.google.android.gms.internal.zzahc
    public final zzalt<AdvertisingIdClient.Info> zzac(Context context) {
        zzamd zzamdVar = new zzamd();
        zzlc.zzij();
        if (zzako.zzbe(context)) {
            zzaid.zzb(new zzahb(this, context, zzamdVar));
        }
        return zzamdVar;
    }
}
