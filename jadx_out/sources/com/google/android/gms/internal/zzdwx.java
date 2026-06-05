package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwz;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwx extends zzfhu<zzdwx, zza> implements zzfje {
    private static volatile zzfjl<zzdwx> zzbbm;
    private static final zzdwx zzmjr;
    private int zzmfs;
    private zzdwz zzmjq;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwx, zza> implements zzfje {
        private zza() {
            super(zzdwx.zzmjr);
        }

        /* synthetic */ zza(zzdwy zzdwyVar) {
            this();
        }

        public final zza zzb(zzdwz zzdwzVar) {
            zzczv();
            ((zzdwx) this.zzppl).zza(zzdwzVar);
            return this;
        }

        public final zza zzgw(int i) {
            zzczv();
            ((zzdwx) this.zzppl).setVersion(0);
            return this;
        }
    }

    static {
        zzdwx zzdwxVar = new zzdwx();
        zzmjr = zzdwxVar;
        zzdwxVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwxVar.zzpph.zzbkr();
    }

    private zzdwx() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdwz zzdwzVar) {
        if (zzdwzVar == null) {
            throw new NullPointerException();
        }
        this.zzmjq = zzdwzVar;
    }

    public static zzdwx zzal(zzfgs zzfgsVar) throws zzfie {
        return (zzdwx) zzfhu.zza(zzmjr, zzfgsVar);
    }

    public static zza zzbsg() {
        return (zza) ((zzfhu.zza) zzmjr.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwz.zza zzaVar;
        zzdwy zzdwyVar = null;
        switch (zzdwy.zzbbk[i - 1]) {
            case 1:
                return new zzdwx();
            case 2:
                return zzmjr;
            case 3:
                return null;
            case 4:
                return new zza(zzdwyVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwx zzdwxVar = (zzdwx) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdwxVar.zzmfs != 0, zzdwxVar.zzmfs);
                this.zzmjq = (zzdwz) zzhVar.zza(this.zzmjq, zzdwxVar.zzmjq);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    while (!r0) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 8) {
                                    this.zzmfs = zzfhbVar.zzcyg();
                                } else if (zzcxx == 18) {
                                    if (this.zzmjq != null) {
                                        zzdwz zzdwzVar = this.zzmjq;
                                        zzfhu.zza zzaVar2 = (zzfhu.zza) zzdwzVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar2.zza((zzfhu.zza) zzdwzVar);
                                        zzaVar = (zzdwz.zza) zzaVar2;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmjq = (zzdwz) zzfhbVar.zza((zzfhb) zzdwz.zzbsk(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdwz.zza) this.zzmjq);
                                        this.zzmjq = zzaVar.zzczw();
                                    }
                                } else if (!zza(zzcxx, zzfhbVar)) {
                                }
                            }
                            r0 = true;
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
                    synchronized (zzdwx.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmjr);
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
        return zzmjr;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmjq != null) {
            zzfhgVar.zza(2, this.zzmjq == null ? zzdwz.zzbsk() : this.zzmjq);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdwz zzbsf() {
        return this.zzmjq == null ? zzdwz.zzbsk() : this.zzmjq;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmjq != null) {
            zzah += zzfhg.zzc(2, this.zzmjq == null ? zzdwz.zzbsk() : this.zzmjq);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
