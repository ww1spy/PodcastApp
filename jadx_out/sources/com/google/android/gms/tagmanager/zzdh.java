package com.google.android.gms.tagmanager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdh implements zzek {
    private final com.google.android.gms.common.util.zze zzata;
    private final String zzdxe;
    private long zzedr;
    private final Object zzeds = new Object();
    private final int zzedp = 5;
    private double zzedq = Math.min(1, 5);
    private final long zzedo = 900000;
    private final long zzkqu = 5000;

    public zzdh(int i, int i2, long j, long j2, String str, com.google.android.gms.common.util.zze zzeVar) {
        this.zzdxe = str;
        this.zzata = zzeVar;
    }

    @Override // com.google.android.gms.tagmanager.zzek
    public final boolean zzaas() {
        synchronized (this.zzeds) {
            long currentTimeMillis = this.zzata.currentTimeMillis();
            if (currentTimeMillis - this.zzedr < this.zzkqu) {
                String str = this.zzdxe;
                StringBuilder sb = new StringBuilder(34 + String.valueOf(str).length());
                sb.append("Excessive ");
                sb.append(str);
                sb.append(" detected; call ignored.");
                zzdj.zzcz(sb.toString());
                return false;
            }
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
            String str2 = this.zzdxe;
            StringBuilder sb2 = new StringBuilder(34 + String.valueOf(str2).length());
            sb2.append("Excessive ");
            sb2.append(str2);
            sb2.append(" detected; call ignored.");
            zzdj.zzcz(sb2.toString());
            return false;
        }
    }
}
