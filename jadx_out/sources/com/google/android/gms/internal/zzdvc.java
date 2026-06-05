package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvc extends zzfhu<zzdvc, zza> implements zzfje {
    private static volatile zzfjl<zzdvc> zzbbm;
    private static final zzdvc zzmgk;
    private int zzmfs;
    private zzfgs zzmga = zzfgs.zzpnw;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvc, zza> implements zzfje {
        private zza() {
            super(zzdvc.zzmgk);
        }

        /* synthetic */ zza(zzdvd zzdvdVar) {
            this();
        }

        public final zza zzgf(int i) {
            zzczv();
            ((zzdvc) this.zzppl).setVersion(0);
            return this;
        }

        public final zza zzs(zzfgs zzfgsVar) {
            zzczv();
            ((zzdvc) this.zzppl).zzk(zzfgsVar);
            return this;
        }
    }

    static {
        zzdvc zzdvcVar = new zzdvc();
        zzmgk = zzdvcVar;
        zzdvcVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvcVar.zzpph.zzbkr();
    }

    private zzdvc() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    public static zza zzbpi() {
        return (zza) ((zzfhu.zza) zzmgk.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmga = zzfgsVar;
    }

    public static zzdvc zzr(zzfgs zzfgsVar) throws zzfie {
        return (zzdvc) zzfhu.zza(zzmgk, zzfgsVar);
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvd zzdvdVar = null;
        boolean z = false;
        switch (zzdvd.zzbbk[i - 1]) {
            case 1:
                return new zzdvc();
            case 2:
                return zzmgk;
            case 3:
                return null;
            case 4:
                return new zza(zzdvdVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdvc zzdvcVar = (zzdvc) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdvcVar.zzmfs != 0, zzdvcVar.zzmfs);
                this.zzmga = zzhVar.zza(this.zzmga != zzfgs.zzpnw, this.zzmga, zzdvcVar.zzmga != zzfgs.zzpnw, zzdvcVar.zzmga);
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
                                } else if (zzcxx == 26) {
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
                    synchronized (zzdvc.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgk);
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
        return zzmgk;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (!this.zzmga.isEmpty()) {
            zzfhgVar.zza(3, this.zzmga);
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
            zzah += zzfhg.zzc(3, this.zzmga);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
