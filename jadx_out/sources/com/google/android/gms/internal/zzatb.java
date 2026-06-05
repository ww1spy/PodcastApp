package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzatb {
    private final com.google.android.gms.common.util.zze zzata;
    private final String zzdxe;
    private final long zzedo;
    private final int zzedp;
    private double zzedq;
    private long zzedr;
    private final Object zzeds;

    private zzatb(int i, long j, String str, com.google.android.gms.common.util.zze zzeVar) {
        this.zzeds = new Object();
        this.zzedp = 60;
        this.zzedq = this.zzedp;
        this.zzedo = 2000L;
        this.zzdxe = str;
        this.zzata = zzeVar;
    }

    public zzatb(String str, com.google.android.gms.common.util.zze zzeVar) {
        this(60, 2000L, str, zzeVar);
    }

    public final boolean zzaas() {
        synchronized (this.zzeds) {
            long currentTimeMillis = this.zzata.currentTimeMillis();
            if (this.zzedq < this.zzedp) {
                double d = (currentTimeMillis - this.zzedr) / this.zzedo;
                if (d > 0.0d) {
                    this.zzedq = Math.min(this.zzedp, this.zzedq + d);
                }
            }
            this.zzedr = currentTimeMillis;
            if (this.zzedq >= 1.0d) {
                this.zzedq -= 1.0d;
                return true;
            }
            String str = this.zzdxe;
            StringBuilder sb = new StringBuilder(34 + String.valueOf(str).length());
            sb.append("Excessive ");
            sb.append(str);
            sb.append(" detected; call ignored.");
            zzatc.zzcz(sb.toString());
            return false;
        }
    }
}
