package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvu extends zzfhu<zzdvu, zza> implements zzfje {
    private static volatile zzfjl<zzdvu> zzbbm;
    private static final zzdvu zzmhi;
    private int zzmhf;
    private int zzmhg;
    private zzfgs zzmhh = zzfgs.zzpnw;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvu, zza> implements zzfje {
        private zza() {
            super(zzdvu.zzmhi);
        }

        /* synthetic */ zza(zzdvv zzdvvVar) {
            this();
        }
    }

    static {
        zzdvu zzdvuVar = new zzdvu();
        zzmhi = zzdvuVar;
        zzdvuVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvuVar.zzpph.zzbkr();
    }

    private zzdvu() {
    }

    public static zzdvu zzbqi() {
        return zzmhi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvv zzdvvVar = null;
        boolean z = false;
        switch (zzdvv.zzbbk[i - 1]) {
            case 1:
                return new zzdvu();
            case 2:
                return zzmhi;
            case 3:
                return null;
            case 4:
                return new zza(zzdvvVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdvu zzdvuVar = (zzdvu) obj2;
                this.zzmhf = zzhVar.zza(this.zzmhf != 0, this.zzmhf, zzdvuVar.zzmhf != 0, zzdvuVar.zzmhf);
                this.zzmhg = zzhVar.zza(this.zzmhg != 0, this.zzmhg, zzdvuVar.zzmhg != 0, zzdvuVar.zzmhg);
                this.zzmhh = zzhVar.zza(this.zzmhh != zzfgs.zzpnw, this.zzmhh, zzdvuVar.zzmhh != zzfgs.zzpnw, zzdvuVar.zzmhh);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!z) {
                        try {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx == 8) {
                                        this.zzmhf = zzfhbVar.zzcyh();
                                    } else if (zzcxx == 16) {
                                        this.zzmhg = zzfhbVar.zzcyh();
                                    } else if (zzcxx == 90) {
                                        this.zzmhh = zzfhbVar.zzcyf();
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
                    synchronized (zzdvu.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmhi);
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
        return zzmhi;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmhf != zzdvw.UNKNOWN_CURVE.zzhu()) {
            zzfhgVar.zzad(1, this.zzmhf);
        }
        if (this.zzmhg != zzdvy.UNKNOWN_HASH.zzhu()) {
            zzfhgVar.zzad(2, this.zzmhg);
        }
        if (!this.zzmhh.isEmpty()) {
            zzfhgVar.zza(11, this.zzmhh);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdvw zzbqf() {
        zzdvw zzgk = zzdvw.zzgk(this.zzmhf);
        return zzgk == null ? zzdvw.UNRECOGNIZED : zzgk;
    }

    public final zzdvy zzbqg() {
        zzdvy zzgl = zzdvy.zzgl(this.zzmhg);
        return zzgl == null ? zzdvy.UNRECOGNIZED : zzgl;
    }

    public final zzfgs zzbqh() {
        return this.zzmhh;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzaj = this.zzmhf != zzdvw.UNKNOWN_CURVE.zzhu() ? 0 + zzfhg.zzaj(1, this.zzmhf) : 0;
        if (this.zzmhg != zzdvy.UNKNOWN_HASH.zzhu()) {
            zzaj += zzfhg.zzaj(2, this.zzmhg);
        }
        if (!this.zzmhh.isEmpty()) {
            zzaj += zzfhg.zzc(11, this.zzmhh);
        }
        int zzhs = zzaj + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
