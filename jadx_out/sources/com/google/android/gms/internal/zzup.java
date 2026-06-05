package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzup {
    private final Object[] mParams;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzup(zzkk zzkkVar, String str, int i) {
        this.mParams = com.google.android.gms.ads.internal.zzp.zza((String) zzlc.zzio().zzd(zzoi.zzbpt), zzkkVar, str, i, null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzup) {
            return Arrays.equals(this.mParams, ((zzup) obj).mParams);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.mParams);
    }

    public final String toString() {
        String arrays = Arrays.toString(this.mParams);
        StringBuilder sb = new StringBuilder(24 + String.valueOf(arrays).length());
        sb.append("[InterstitialAdPoolKey ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
