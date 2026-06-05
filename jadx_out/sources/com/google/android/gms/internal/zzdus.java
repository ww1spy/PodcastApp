package com.google.android.gms.internal;

import com.google.android.gms.internal.zzduu;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdus extends zzfhu<zzdus, zza> implements zzfje {
    private static volatile zzfjl<zzdus> zzbbm;
    private static final zzdus zzmgd;
    private zzduu zzmfz;
    private int zzmgc;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdus, zza> implements zzfje {
        private zza() {
            super(zzdus.zzmgd);
        }

        /* synthetic */ zza(zzdut zzdutVar) {
            this();
        }
    }

    static {
        zzdus zzdusVar = new zzdus();
        zzmgd = zzdusVar;
        zzdusVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdusVar.zzpph.zzbkr();
    }

    private zzdus() {
    }

    public static zzdus zzbox() {
        return zzmgd;
    }

    public static zzdus zzn(zzfgs zzfgsVar) throws zzfie {
        return (zzdus) zzfhu.zza(zzmgd, zzfgsVar);
    }

    public final int getKeySize() {
        return this.zzmgc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzduu.zza zzaVar;
        zzdut zzdutVar = null;
        switch (zzdut.zzbbk[i - 1]) {
            case 1:
                return new zzdus();
            case 2:
                return zzmgd;
            case 3:
                return null;
            case 4:
                return new zza(zzdutVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdus zzdusVar = (zzdus) obj2;
                this.zzmfz = (zzduu) zzhVar.zza(this.zzmfz, zzdusVar.zzmfz);
                this.zzmgc = zzhVar.zza(this.zzmgc != 0, this.zzmgc, zzdusVar.zzmgc != 0, zzdusVar.zzmgc);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    while (!r0) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 10) {
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
                                } else if (zzcxx == 16) {
                                    this.zzmgc = zzfhbVar.zzcyg();
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
                    synchronized (zzdus.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgd);
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
        return zzmgd;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfz != null) {
            zzfhgVar.zza(1, this.zzmfz == null ? zzduu.zzbpa() : this.zzmfz);
        }
        if (this.zzmgc != 0) {
            zzfhgVar.zzae(2, this.zzmgc);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzduu zzbos() {
        return this.zzmfz == null ? zzduu.zzbpa() : this.zzmfz;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.zzmfz != null) {
            i2 = 0 + zzfhg.zzc(1, this.zzmfz == null ? zzduu.zzbpa() : this.zzmfz);
        }
        if (this.zzmgc != 0) {
            i2 += zzfhg.zzah(2, this.zzmgc);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
