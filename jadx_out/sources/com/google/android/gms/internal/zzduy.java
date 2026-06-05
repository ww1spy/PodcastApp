package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdva;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzduy extends zzfhu<zzduy, zza> implements zzfje {
    private static volatile zzfjl<zzduy> zzbbm;
    private static final zzduy zzmgi;
    private int zzmgc;
    private zzdva zzmgg;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzduy, zza> implements zzfje {
        private zza() {
            super(zzduy.zzmgi);
        }

        /* synthetic */ zza(zzduz zzduzVar) {
            this();
        }
    }

    static {
        zzduy zzduyVar = new zzduy();
        zzmgi = zzduyVar;
        zzduyVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzduyVar.zzpph.zzbkr();
    }

    private zzduy() {
    }

    public static zzduy zzq(zzfgs zzfgsVar) throws zzfie {
        return (zzduy) zzfhu.zza(zzmgi, zzfgsVar);
    }

    public final int getKeySize() {
        return this.zzmgc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdva.zza zzaVar;
        zzduz zzduzVar = null;
        switch (zzduz.zzbbk[i - 1]) {
            case 1:
                return new zzduy();
            case 2:
                return zzmgi;
            case 3:
                return null;
            case 4:
                return new zza(zzduzVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzduy zzduyVar = (zzduy) obj2;
                this.zzmgg = (zzdva) zzhVar.zza(this.zzmgg, zzduyVar.zzmgg);
                this.zzmgc = zzhVar.zza(this.zzmgc != 0, this.zzmgc, zzduyVar.zzmgc != 0, zzduyVar.zzmgc);
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
                    synchronized (zzduy.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgi);
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
        return zzmgi;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmgg != null) {
            zzfhgVar.zza(1, this.zzmgg == null ? zzdva.zzbpg() : this.zzmgg);
        }
        if (this.zzmgc != 0) {
            zzfhgVar.zzae(2, this.zzmgc);
        }
        this.zzpph.zza(zzfhgVar);
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
        int i2 = 0;
        if (this.zzmgg != null) {
            i2 = 0 + zzfhg.zzc(1, this.zzmgg == null ? zzdva.zzbpg() : this.zzmgg);
        }
        if (this.zzmgc != 0) {
            i2 += zzfhg.zzah(2, this.zzmgc);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
