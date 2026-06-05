package com.google.android.gms.iid;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
abstract class zzad {
    private static zzad zziob;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized zzad zzawy() {
        zzad zzadVar;
        synchronized (zzad.class) {
            if (zziob == null) {
                zziob = new zzx();
            }
            zzadVar = zziob;
        }
        return zzadVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract zzae<Boolean> zzf(String str, boolean z);
}
