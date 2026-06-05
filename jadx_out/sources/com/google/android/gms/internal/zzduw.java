package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdva;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzduw extends zzfhu<zzduw, zza> implements zzfje {
    private static volatile zzfjl<zzduw> zzbbm;
    private static final zzduw zzmgh;
    private int zzmfs;
    private zzfgs zzmga = zzfgs.zzpnw;
    private zzdva zzmgg;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzduw, zza> implements zzfje {
        private zza() {
            super(zzduw.zzmgh);
        }

        /* synthetic */ zza(zzdux zzduxVar) {
            this();
        }

        public final zza zzb(zzdva zzdvaVar) {
            zzczv();
            ((zzduw) this.zzppl).zza(zzdvaVar);
            return this;
        }

        public final zza zzge(int i) {
            zzczv();
            ((zzduw) this.zzppl).setVersion(0);
            return this;
        }

        public final zza zzp(zzfgs zzfgsVar) {
            zzczv();
            ((zzduw) this.zzppl).zzk(zzfgsVar);
            return this;
        }
    }

    static {
        zzduw zzduwVar = new zzduw();
        zzmgh = zzduwVar;
        zzduwVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzduwVar.zzpph.zzbkr();
    }

    private zzduw() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdva zzdvaVar) {
        if (zzdvaVar == null) {
            throw new NullPointerException();
        }
        this.zzmgg = zzdvaVar;
    }

    public static zza zzbpd() {
        return (zza) ((zzfhu.zza) zzmgh.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmga = zzfgsVar;
    }

    public static zzduw zzo(zzfgs zzfgsVar) throws zzfie {
        return (zzduw) zzfhu.zza(zzmgh, zzfgsVar);
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdva.zza zzaVar;
        zzdux zzduxVar = null;
        switch (zzdux.zzbbk[i - 1]) {
            case 1:
                return new zzduw();
            case 2:
                return zzmgh;
            case 3:
                return null;
            case 4:
                return new zza(zzduxVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzduw zzduwVar = (zzduw) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzduwVar.zzmfs != 0, zzduwVar.zzmfs);
                this.zzmgg = (zzdva) zzhVar.zza(this.zzmgg, zzduwVar.zzmgg);
                this.zzmga = zzhVar.zza(this.zzmga != zzfgs.zzpnw, this.zzmga, zzduwVar.zzmga != zzfgs.zzpnw, zzduwVar.zzmga);
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
                                        if (this.zzmgg != null) {
                                            zzdva zzdvaVar = this.zzmgg;
                                            zzfhu.zza zzaVar2 = (zzfhu.zza) zzdvaVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar2.zza((zzfhu.zza) zzdvaVar);
                                            zzaVar = (zzdva.zza) zzaVar2;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmgg = (zzdva) zzfhbVar.zza((zzfhb) zzdva.zzbpg(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzdva.zza) this.zzmgg);
                                            this.zzmgg = zzaVar.zzczw();
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
                    synchronized (zzduw.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgh);
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
        return zzmgh;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmgg != null) {
            zzfhgVar.zza(2, this.zzmgg == null ? zzdva.zzbpg() : this.zzmgg);
        }
        if (!this.zzmga.isEmpty()) {
            zzfhgVar.zza(3, this.zzmga);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzfgs zzbot() {
        return this.zzmga;
    }

    public final zzdva zzbpc() {
        return this.zzmgg == null ? zzdva.zzbpg() : this.zzmgg;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmgg != null) {
            zzah += zzfhg.zzc(2, this.zzmgg == null ? zzdva.zzbpg() : this.zzmgg);
        }
        if (!this.zzmga.isEmpty()) {
            zzah += zzfhg.zzc(3, this.zzmga);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
