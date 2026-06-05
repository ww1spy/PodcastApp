package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzjb {
    private final byte[] zzbcr;
    private int zzbcs;
    private int zzbct;
    private /* synthetic */ zziz zzbcu;

    private zzjb(zziz zzizVar, byte[] bArr) {
        this.zzbcu = zzizVar;
        this.zzbcr = bArr;
    }

    public final synchronized void log() {
        try {
            if (this.zzbcu.zzbcq) {
                this.zzbcu.zzbcp.zzc(this.zzbcr);
                this.zzbcu.zzbcp.zzg(this.zzbcs);
                this.zzbcu.zzbcp.zzh(this.zzbct);
                this.zzbcu.zzbcp.zza(null);
                this.zzbcu.zzbcp.log();
            }
        } catch (RemoteException e) {
            zzaky.zza("Clearcut log failed", e);
        }
    }

    public final zzjb zzp(int i) {
        this.zzbcs = i;
        return this;
    }

    public final zzjb zzq(int i) {
        this.zzbct = i;
        return this;
    }
}
