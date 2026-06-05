package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdvs;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvq extends zzfhu<zzdvq, zza> implements zzfje {
    private static volatile zzfjl<zzdvq> zzbbm;
    private static final zzdvq zzmhb;
    private int zzmfs;
    private zzfgs zzmga = zzfgs.zzpnw;
    private zzdvs zzmha;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvq, zza> implements zzfje {
        private zza() {
            super(zzdvq.zzmhb);
        }

        /* synthetic */ zza(zzdvr zzdvrVar) {
            this();
        }

        public final zza zzb(zzdvs zzdvsVar) {
            zzczv();
            ((zzdvq) this.zzppl).zza(zzdvsVar);
            return this;
        }

        public final zza zzgi(int i) {
            zzczv();
            ((zzdvq) this.zzppl).setVersion(0);
            return this;
        }

        public final zza zzy(zzfgs zzfgsVar) {
            zzczv();
            ((zzdvq) this.zzppl).zzk(zzfgsVar);
            return this;
        }
    }

    static {
        zzdvq zzdvqVar = new zzdvq();
        zzmhb = zzdvqVar;
        zzdvqVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvqVar.zzpph.zzbkr();
    }

    private zzdvq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdvs zzdvsVar) {
        if (zzdvsVar == null) {
            throw new NullPointerException();
        }
        this.zzmha = zzdvsVar;
    }

    public static zza zzbpy() {
        return (zza) ((zzfhu.zza) zzmhb.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmga = zzfgsVar;
    }

    public static zzdvq zzx(zzfgs zzfgsVar) throws zzfie {
        return (zzdvq) zzfhu.zza(zzmhb, zzfgsVar);
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvs.zza zzaVar;
        zzdvr zzdvrVar = null;
        switch (zzdvr.zzbbk[i - 1]) {
            case 1:
                return new zzdvq();
            case 2:
                return zzmhb;
            case 3:
                return null;
            case 4:
                return new zza(zzdvrVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdvq zzdvqVar = (zzdvq) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdvqVar.zzmfs != 0, zzdvqVar.zzmfs);
                this.zzmha = (zzdvs) zzhVar.zza(this.zzmha, zzdvqVar.zzmha);
                this.zzmga = zzhVar.zza(this.zzmga != zzfgs.zzpnw, this.zzmga, zzdvqVar.zzmga != zzfgs.zzpnw, zzdvqVar.zzmga);
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
                                        if (this.zzmha != null) {
                                            zzdvs zzdvsVar = this.zzmha;
                                            zzfhu.zza zzaVar2 = (zzfhu.zza) zzdvsVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar2.zza((zzfhu.zza) zzdvsVar);
                                            zzaVar = (zzdvs.zza) zzaVar2;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmha = (zzdvs) zzfhbVar.zza((zzfhb) zzdvs.zzbqd(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzdvs.zza) this.zzmha);
                                            this.zzmha = zzaVar.zzczw();
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
                    synchronized (zzdvq.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmhb);
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
        return zzmhb;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmha != null) {
            zzfhgVar.zza(2, this.zzmha == null ? zzdvs.zzbqd() : this.zzmha);
        }
        if (!this.zzmga.isEmpty()) {
            zzfhgVar.zza(3, this.zzmga);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzfgs zzbot() {
        return this.zzmga;
    }

    public final zzdvs zzbpx() {
        return this.zzmha == null ? zzdvs.zzbqd() : this.zzmha;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmha != null) {
            zzah += zzfhg.zzc(2, this.zzmha == null ? zzdvs.zzbqd() : this.zzmha);
        }
        if (!this.zzmga.isEmpty()) {
            zzah += zzfhg.zzc(3, this.zzmga);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
