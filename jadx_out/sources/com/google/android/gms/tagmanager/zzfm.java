package com.google.android.gms.tagmanager;

/* loaded from: classes.dex */
final class zzfm implements zzek {
    private final com.google.android.gms.common.util.zze zzata;
    private final long zzedo;
    private final int zzedp;
    private double zzedq;
    private final Object zzeds;
    private long zzkth;

    public zzfm() {
        this(60, 2000L);
    }

    private zzfm(int i, long j) {
        this.zzeds = new Object();
        this.zzedp = 60;
        this.zzedq = this.zzedp;
        this.zzedo = 2000L;
        this.zzata = com.google.android.gms.common.util.zzi.zzanq();
    }

    @Override // com.google.android.gms.tagmanager.zzek
    public final boolean zzaas() {
        synchronized (this.zzeds) {
            long currentTimeMillis = this.zzata.currentTimeMillis();
            if (this.zzedq < this.zzedp) {
                double d = (currentTimeMillis - this.zzkth) / this.zzedo;
                if (d > 0.0d) {
                    this.zzedq = Math.min(this.zzedp, this.zzedq + d);
                }
            }
            this.zzkth = currentTimeMillis;
            if (this.zzedq >= 1.0d) {
                this.zzedq -= 1.0d;
                return true;
            }
            zzdj.zzcz("No more tokens available.");
            return false;
        }
    }
}
