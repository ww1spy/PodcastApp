package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzahc {
    zzalt<String> zza(String str, PackageInfo packageInfo);

    zzalt<AdvertisingIdClient.Info> zzac(Context context);
}
