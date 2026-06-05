package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvg extends zzfhu<zzdvg, zza> implements zzfje {
    private static volatile zzfjl<zzdvg> zzbbm;
    private static final zzdvg zzmgm;
    private int zzmfs;
    private zzfgs zzmga = zzfgs.zzpnw;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvg, zza> implements zzfje {
        private zza() {
            super(zzdvg.zzmgm);
        }

        /* synthetic */ zza(zzdvh zzdvhVar) {
            this();
        }

        public final zza zzgg(int i) {
            zzczv();
            ((zzdvg) this.zzppl).setVersion(0);
            return this;
        }

        public final zza zzv(zzfgs zzfgsVar) {
            zzczv();
            ((zzdvg) this.zzppl).zzk(zzfgsVar);
            return this;
        }
    }

    static {
        zzdvg zzdvgVar = new zzdvg();
        zzmgm = zzdvgVar;
        zzdvgVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvgVar.zzpph.zzbkr();
    }

    private zzdvg() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    public static zza zzbpl() {
        return (zza) ((zzfhu.zza) zzmgm.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmga = zzfgsVar;
    }

    public static zzdvg zzu(zzfgs zzfgsVar) throws zzfie {
        return (zzdvg) zzfhu.zza(zzmgm, zzfgsVar);
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvh zzdvhVar = null;
        boolean z = false;
        switch (zzdvh.zzbbk[i - 1]) {
            case 1:
                return new zzdvg();
            case 2:
                return zzmgm;
            case 3:
                return null;
            case 4:
                return new zza(zzdvhVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdvg zzdvgVar = (zzdvg) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdvgVar.zzmfs != 0, zzdvgVar.zzmfs);
                this.zzmga = zzhVar.zza(this.zzmga != zzfgs.zzpnw, this.zzmga, zzdvgVar.zzmga != zzfgs.zzpnw, zzdvgVar.zzmga);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!z) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 8) {
                                    this.zzmfs = zzfhbVar.zzcyg();
                                } else if (zzcxx == 18) {
                                    this.zzmga = zzfhbVar.zzcyf();
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
                    synchronized (zzdvg.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgm);
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
        return zzmgm;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (!this.zzmga.isEmpty()) {
            zzfhgVar.zza(2, this.zzmga);
        }
        this.zzpph.zza(zzfhgVar);
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
        if (!this.zzmga.isEmpty()) {
            zzah += zzfhg.zzc(2, this.zzmga);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
