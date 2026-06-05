package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzbhg {
    private static zzbhi zzgih;

    @Hide
    public static synchronized zzbhi zzanc() {
        zzbhi zzbhiVar;
        synchronized (zzbhg.class) {
            if (zzgih == null) {
                zzgih = new zzbhh();
            }
            zzbhiVar = zzgih;
        }
        return zzbhiVar;
    }
}
