package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Random;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzld extends zzmf {
    private Object mLock = new Object();
    private final Random zzbje = new Random();
    private long zzbjf;

    public zzld() {
        zzip();
    }

    @Override // com.google.android.gms.internal.zzme
    public final long getValue() {
        return this.zzbjf;
    }

    public final void zzip() {
        synchronized (this.mLock) {
            int i = 3;
            long j = 0;
            while (true) {
                i--;
                if (i <= 0) {
                    break;
                }
                try {
                    long nextInt = this.zzbje.nextInt() + 2147483648L;
                    if (nextInt != this.zzbjf && nextInt != 0) {
                        j = nextInt;
                        break;
                    }
                    j = nextInt;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.zzbjf = j;
        }
    }
}
