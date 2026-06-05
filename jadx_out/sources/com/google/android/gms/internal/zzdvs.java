package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdvo;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvs extends zzfhu<zzdvs, zza> implements zzfje {
    private static volatile zzfjl<zzdvs> zzbbm;
    private static final zzdvs zzmhe;
    private int zzmfs;
    private zzdvo zzmgu;
    private zzfgs zzmhc = zzfgs.zzpnw;
    private zzfgs zzmhd = zzfgs.zzpnw;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvs, zza> implements zzfje {
        private zza() {
            super(zzdvs.zzmhe);
        }

        /* synthetic */ zza(zzdvt zzdvtVar) {
            this();
        }

        public final zza zzac(zzfgs zzfgsVar) {
            zzczv();
            ((zzdvs) this.zzppl).zzz(zzfgsVar);
            return this;
        }

        public final zza zzad(zzfgs zzfgsVar) {
            zzczv();
            ((zzdvs) this.zzppl).zzaa(zzfgsVar);
            return this;
        }

        public final zza zzc(zzdvo zzdvoVar) {
            zzczv();
            ((zzdvs) this.zzppl).zzb(zzdvoVar);
            return this;
        }

        public final zza zzgj(int i) {
            zzczv();
            ((zzdvs) this.zzppl).setVersion(0);
            return this;
        }
    }

    static {
        zzdvs zzdvsVar = new zzdvs();
        zzmhe = zzdvsVar;
        zzdvsVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvsVar.zzpph.zzbkr();
    }

    private zzdvs() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmhd = zzfgsVar;
    }

    public static zzdvs zzab(zzfgs zzfgsVar) throws zzfie {
        return (zzdvs) zzfhu.zza(zzmhe, zzfgsVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdvo zzdvoVar) {
        if (zzdvoVar == null) {
            throw new NullPointerException();
        }
        this.zzmgu = zzdvoVar;
    }

    public static zza zzbqc() {
        return (zza) ((zzfhu.zza) zzmhe.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzdvs zzbqd() {
        return zzmhe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzz(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmhc = zzfgsVar;
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvo.zza zzaVar;
        zzdvt zzdvtVar = null;
        boolean z = false;
        switch (zzdvt.zzbbk[i - 1]) {
            case 1:
                return new zzdvs();
            case 2:
                return zzmhe;
            case 3:
                return null;
            case 4:
                return new zza(zzdvtVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdvs zzdvsVar = (zzdvs) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdvsVar.zzmfs != 0, zzdvsVar.zzmfs);
                this.zzmgu = (zzdvo) zzhVar.zza(this.zzmgu, zzdvsVar.zzmgu);
                this.zzmhc = zzhVar.zza(this.zzmhc != zzfgs.zzpnw, this.zzmhc, zzdvsVar.zzmhc != zzfgs.zzpnw, zzdvsVar.zzmhc);
                this.zzmhd = zzhVar.zza(this.zzmhd != zzfgs.zzpnw, this.zzmhd, zzdvsVar.zzmhd != zzfgs.zzpnw, zzdvsVar.zzmhd);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    while (!z) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 8) {
                                    this.zzmfs = zzfhbVar.zzcyg();
                                } else if (zzcxx == 18) {
                                    if (this.zzmgu != null) {
                                        zzdvo zzdvoVar = this.zzmgu;
                                        zzfhu.zza zzaVar2 = (zzfhu.zza) zzdvoVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar2.zza((zzfhu.zza) zzdvoVar);
                                        zzaVar = (zzdvo.zza) zzaVar2;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmgu = (zzdvo) zzfhbVar.zza((zzfhb) zzdvo.zzbpv(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdvo.zza) this.zzmgu);
                                        this.zzmgu = zzaVar.zzczw();
                                    }
                                } else if (zzcxx == 26) {
                                    this.zzmhc = zzfhbVar.zzcyf();
                                } else if (zzcxx == 34) {
                                    this.zzmhd = zzfhbVar.zzcyf();
                                } else if (!zza(zzcxx, zzfhbVar)) {
                                }
                            }
                            z = true;
                        } catch (zzfie e) {
                            throw new RuntimeException(e.zzi(this));
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
                    synchronized (zzdvs.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmhe);
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
        return zzmhe;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmgu != null) {
            zzfhgVar.zza(2, this.zzmgu == null ? zzdvo.zzbpv() : this.zzmgu);
        }
        if (!this.zzmhc.isEmpty()) {
            zzfhgVar.zza(3, this.zzmhc);
        }
        if (!this.zzmhd.isEmpty()) {
            zzfhgVar.zza(4, this.zzmhd);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdvo zzbpq() {
        return this.zzmgu == null ? zzdvo.zzbpv() : this.zzmgu;
    }

    public final zzfgs zzbqa() {
        return this.zzmhc;
    }

    public final zzfgs zzbqb() {
        return this.zzmhd;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmgu != null) {
            zzah += zzfhg.zzc(2, this.zzmgu == null ? zzdvo.zzbpv() : this.zzmgu);
        }
        if (!this.zzmhc.isEmpty()) {
            zzah += zzfhg.zzc(3, this.zzmhc);
        }
        if (!this.zzmhd.isEmpty()) {
            zzah += zzfhg.zzc(4, this.zzmhd);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
