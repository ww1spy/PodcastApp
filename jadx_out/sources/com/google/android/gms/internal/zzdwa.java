package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwe;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwa extends zzfhu<zzdwa, zza> implements zzfje {
    private static volatile zzfjl<zzdwa> zzbbm;
    private static final zzdwa zzmhy;
    private int zzmfs;
    private zzfgs zzmga = zzfgs.zzpnw;
    private zzdwe zzmhx;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwa, zza> implements zzfje {
        private zza() {
            super(zzdwa.zzmhy);
        }

        /* synthetic */ zza(zzdwb zzdwbVar) {
            this();
        }

        public final zza zzaf(zzfgs zzfgsVar) {
            zzczv();
            ((zzdwa) this.zzppl).zzk(zzfgsVar);
            return this;
        }

        public final zza zzc(zzdwe zzdweVar) {
            zzczv();
            ((zzdwa) this.zzppl).zzb(zzdweVar);
            return this;
        }

        public final zza zzgm(int i) {
            zzczv();
            ((zzdwa) this.zzppl).setVersion(0);
            return this;
        }
    }

    static {
        zzdwa zzdwaVar = new zzdwa();
        zzmhy = zzdwaVar;
        zzdwaVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwaVar.zzpph.zzbkr();
    }

    private zzdwa() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    public static zzdwa zzae(zzfgs zzfgsVar) throws zzfie {
        return (zzdwa) zzfhu.zza(zzmhy, zzfgsVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzdwe zzdweVar) {
        if (zzdweVar == null) {
            throw new NullPointerException();
        }
        this.zzmhx = zzdweVar;
    }

    public static zza zzbql() {
        return (zza) ((zzfhu.zza) zzmhy.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzdwa zzbqm() {
        return zzmhy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmga = zzfgsVar;
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwe.zza zzaVar;
        zzdwb zzdwbVar = null;
        switch (zzdwb.zzbbk[i - 1]) {
            case 1:
                return new zzdwa();
            case 2:
                return zzmhy;
            case 3:
                return null;
            case 4:
                return new zza(zzdwbVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwa zzdwaVar = (zzdwa) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdwaVar.zzmfs != 0, zzdwaVar.zzmfs);
                this.zzmhx = (zzdwe) zzhVar.zza(this.zzmhx, zzdwaVar.zzmhx);
                this.zzmga = zzhVar.zza(this.zzmga != zzfgs.zzpnw, this.zzmga, zzdwaVar.zzmga != zzfgs.zzpnw, zzdwaVar.zzmga);
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
                                        if (this.zzmhx != null) {
                                            zzdwe zzdweVar = this.zzmhx;
                                            zzfhu.zza zzaVar2 = (zzfhu.zza) zzdweVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar2.zza((zzfhu.zza) zzdweVar);
                                            zzaVar = (zzdwe.zza) zzaVar2;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmhx = (zzdwe) zzfhbVar.zza((zzfhb) zzdwe.zzbqs(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzdwe.zza) this.zzmhx);
                                            this.zzmhx = zzaVar.zzczw();
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
                    synchronized (zzdwa.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmhy);
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
        return zzmhy;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmhx != null) {
            zzfhgVar.zza(2, this.zzmhx == null ? zzdwe.zzbqs() : this.zzmhx);
        }
        if (!this.zzmga.isEmpty()) {
            zzfhgVar.zza(3, this.zzmga);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzfgs zzbot() {
        return this.zzmga;
    }

    public final zzdwe zzbqk() {
        return this.zzmhx == null ? zzdwe.zzbqs() : this.zzmhx;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmhx != null) {
            zzah += zzfhg.zzc(2, this.zzmhx == null ? zzdwe.zzbqs() : this.zzmhx);
        }
        if (!this.zzmga.isEmpty()) {
            zzah += zzfhg.zzc(3, this.zzmga);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
