package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwl extends zzfhu<zzdwl, zza> implements zzfje {
    private static volatile zzfjl<zzdwl> zzbbm;
    private static final zzdwl zzmiv;
    private String zzmid = "";
    private zzfgs zzmie = zzfgs.zzpnw;
    private int zzmiu;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwl, zza> implements zzfje {
        private zza() {
            super(zzdwl.zzmiv);
        }

        /* synthetic */ zza(zzdwm zzdwmVar) {
            this();
        }
    }

    static {
        zzdwl zzdwlVar = new zzdwl();
        zzmiv = zzdwlVar;
        zzdwlVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwlVar.zzpph.zzbkr();
    }

    private zzdwl() {
    }

    public static zzdwl zzbra() {
        return zzmiv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwm zzdwmVar = null;
        boolean z = false;
        switch (zzdwm.zzbbk[i - 1]) {
            case 1:
                return new zzdwl();
            case 2:
                return zzmiv;
            case 3:
                return null;
            case 4:
                return new zza(zzdwmVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwl zzdwlVar = (zzdwl) obj2;
                this.zzmid = zzhVar.zza(!this.zzmid.isEmpty(), this.zzmid, !zzdwlVar.zzmid.isEmpty(), zzdwlVar.zzmid);
                this.zzmie = zzhVar.zza(this.zzmie != zzfgs.zzpnw, this.zzmie, zzdwlVar.zzmie != zzfgs.zzpnw, zzdwlVar.zzmie);
                this.zzmiu = zzhVar.zza(this.zzmiu != 0, this.zzmiu, zzdwlVar.zzmiu != 0, zzdwlVar.zzmiu);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!z) {
                        try {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx == 10) {
                                        this.zzmid = zzfhbVar.zzcye();
                                    } else if (zzcxx == 18) {
                                        this.zzmie = zzfhbVar.zzcyf();
                                    } else if (zzcxx == 24) {
                                        this.zzmiu = zzfhbVar.zzcyh();
                                    } else if (!zza(zzcxx, zzfhbVar)) {
                                    }
                                }
                                z = true;
                            } catch (IOException e) {
                                throw new RuntimeException(new zzfie(e.getMessage()).zzi(this));
                            }
                        } catch (zzfie e2) {
                            throw new RuntimeException(e2.zzi(this));
                        }
                    }
                    break;
                } else {
                    throw new NullPointerException();
                }
            case 7:
                break;
            case 8:
                if (zzbbm == null) {
                    synchronized (zzdwl.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmiv);
                        }
                    }
                }
                return zzbbm;
            case 9:
                return (byte) 1;
            case 10:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
        return zzmiv;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmid.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmid);
        }
        if (!this.zzmie.isEmpty()) {
            zzfhgVar.zza(2, this.zzmie);
        }
        if (this.zzmiu != zzdxb.UNKNOWN_PREFIX.zzhu()) {
            zzfhgVar.zzad(3, this.zzmiu);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final String zzbqu() {
        return this.zzmid;
    }

    public final zzfgs zzbqv() {
        return this.zzmie;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzq = this.zzmid.isEmpty() ? 0 : 0 + zzfhg.zzq(1, this.zzmid);
        if (!this.zzmie.isEmpty()) {
            zzq += zzfhg.zzc(2, this.zzmie);
        }
        if (this.zzmiu != zzdxb.UNKNOWN_PREFIX.zzhu()) {
            zzq += zzfhg.zzaj(3, this.zzmiu);
        }
        int zzhs = zzq + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
