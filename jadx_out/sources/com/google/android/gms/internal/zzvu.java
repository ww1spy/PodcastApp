package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzvu implements Runnable {
    private /* synthetic */ zzvs zzcja;
    private /* synthetic */ zzvt zzcjb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvu(zzvt zzvtVar, zzvs zzvsVar) {
        this.zzcjb = zzvtVar;
        this.zzcja = zzvsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        int i;
        zzwi zzmk;
        zzwi zzwiVar;
        boolean zzml;
        boolean zzw;
        String str;
        obj = this.zzcjb.mLock;
        synchronized (obj) {
            i = this.zzcjb.zzciy;
            if (i != -2) {
                return;
            }
            zzvt zzvtVar = this.zzcjb;
            zzmk = this.zzcjb.zzmk();
            zzvtVar.zzcix = zzmk;
            zzwiVar = this.zzcjb.zzcix;
            if (zzwiVar == null) {
                this.zzcjb.zzv(4);
                return;
            }
            zzml = this.zzcjb.zzml();
            if (zzml) {
                zzw = this.zzcjb.zzw(1);
                if (!zzw) {
                    str = this.zzcjb.zzcip;
                    StringBuilder sb = new StringBuilder(56 + String.valueOf(str).length());
                    sb.append("Ignoring adapter ");
                    sb.append(str);
                    sb.append(" as delayed impression is not supported");
                    zzahw.zzcz(sb.toString());
                    this.zzcjb.zzv(2);
                    return;
                }
            }
            this.zzcja.zza(this.zzcjb);
            this.zzcjb.zza(this.zzcja);
        }
    }
}
