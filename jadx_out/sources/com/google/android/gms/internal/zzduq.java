package com.google.android.gms.internal;

import com.google.android.gms.internal.zzduu;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzduq extends zzfhu<zzduq, zza> implements zzfje {
    private static volatile zzfjl<zzduq> zzbbm;
    private static final zzduq zzmgb;
    private int zzmfs;
    private zzduu zzmfz;
    private zzfgs zzmga = zzfgs.zzpnw;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzduq, zza> implements zzfje {
        private zza() {
            super(zzduq.zzmgb);
        }

        /* synthetic */ zza(zzdur zzdurVar) {
            this();
        }

        public final zza zzc(zzduu zzduuVar) {
            zzczv();
            ((zzduq) this.zzppl).zzb(zzduuVar);
            return this;
        }

        public final zza zzgd(int i) {
            zzczv();
            ((zzduq) this.zzppl).setVersion(0);
            return this;
        }

        public final zza zzm(zzfgs zzfgsVar) {
            zzczv();
            ((zzduq) this.zzppl).zzk(zzfgsVar);
            return this;
        }
    }

    static {
        zzduq zzduqVar = new zzduq();
        zzmgb = zzduqVar;
        zzduqVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzduqVar.zzpph.zzbkr();
    }

    private zzduq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzduu zzduuVar) {
        if (zzduuVar == null) {
            throw new NullPointerException();
        }
        this.zzmfz = zzduuVar;
    }

    public static zza zzbou() {
        return (zza) ((zzfhu.zza) zzmgb.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzduq zzbov() {
        return zzmgb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmga = zzfgsVar;
    }

    public static zzduq zzl(zzfgs zzfgsVar) throws zzfie {
        return (zzduq) zzfhu.zza(zzmgb, zzfgsVar);
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzduu.zza zzaVar;
        zzdur zzdurVar = null;
        switch (zzdur.zzbbk[i - 1]) {
            case 1:
                return new zzduq();
            case 2:
                return zzmgb;
            case 3:
                return null;
            case 4:
                return new zza(zzdurVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzduq zzduqVar = (zzduq) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzduqVar.zzmfs != 0, zzduqVar.zzmfs);
                this.zzmfz = (zzduu) zzhVar.zza(this.zzmfz, zzduqVar.zzmfz);
                this.zzmga = zzhVar.zza(this.zzmga != zzfgs.zzpnw, this.zzmga, zzduqVar.zzmga != zzfgs.zzpnw, zzduqVar.zzmga);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    while (!r0) {
                        try {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx == 8) {
                                        this.zzmfs = zzfhbVar.zzcyg();
                                    } else if (zzcxx == 18) {
                                        if (this.zzmfz != null) {
                                            zzduu zzduuVar = this.zzmfz;
                                            zzfhu.zza zzaVar2 = (zzfhu.zza) zzduuVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar2.zza((zzfhu.zza) zzduuVar);
                                            zzaVar = (zzduu.zza) zzaVar2;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmfz = (zzduu) zzfhbVar.zza((zzfhb) zzduu.zzbpa(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzduu.zza) this.zzmfz);
                                            this.zzmfz = zzaVar.zzczw();
                                        }
                                    } else if (zzcxx == 26) {
                                        this.zzmga = zzfhbVar.zzcyf();
                                    } else if (!zza(zzcxx, zzfhbVar)) {
                                    }
                                }
                                r0 = true;
                            } catch (zzfie e) {
                                throw new RuntimeException(e.zzi(this));
                            }
                        } catch (IOException e2) {
                            throw new RuntimeException(new zzfie(e2.getMessage()).zzi(this));
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
                    synchronized (zzduq.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgb);
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
        return zzmgb;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmfz != null) {
            zzfhgVar.zza(2, this.zzmfz == null ? zzduu.zzbpa() : this.zzmfz);
        }
        if (!this.zzmga.isEmpty()) {
            zzfhgVar.zza(3, this.zzmga);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzduu zzbos() {
        return this.zzmfz == null ? zzduu.zzbpa() : this.zzmfz;
    }

    public final zzfgs zzbot() {
        return this.zzmga;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmfz != null) {
            zzah += zzfhg.zzc(2, this.zzmfz == null ? zzduu.zzbpa() : this.zzmfz);
        }
        if (!this.zzmga.isEmpty()) {
            zzah += zzfhg.zzc(3, this.zzmga);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
