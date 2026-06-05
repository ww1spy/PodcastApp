package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.math.BigInteger;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaho {
    private BigInteger zzdej = BigInteger.ONE;

    public final synchronized String zzqg() {
        String bigInteger;
        bigInteger = this.zzdej.toString();
        this.zzdej = this.zzdej.add(BigInteger.ONE);
        return bigInteger;
    }
}
