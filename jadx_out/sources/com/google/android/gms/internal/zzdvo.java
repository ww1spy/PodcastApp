package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdvk;
import com.google.android.gms.internal.zzdvu;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvo extends zzfhu<zzdvo, zza> implements zzfje {
    private static volatile zzfjl<zzdvo> zzbbm;
    private static final zzdvo zzmgz;
    private zzdvu zzmgw;
    private zzdvk zzmgx;
    private int zzmgy;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvo, zza> implements zzfje {
        private zza() {
            super(zzdvo.zzmgz);
        }

        /* synthetic */ zza(zzdvp zzdvpVar) {
            this();
        }
    }

    static {
        zzdvo zzdvoVar = new zzdvo();
        zzmgz = zzdvoVar;
        zzdvoVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvoVar.zzpph.zzbkr();
    }

    private zzdvo() {
    }

    public static zzdvo zzbpv() {
        return zzmgz;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvk.zza zzaVar;
        zzdvu.zza zzaVar2;
        zzdvp zzdvpVar = null;
        switch (zzdvp.zzbbk[i - 1]) {
            case 1:
                return new zzdvo();
            case 2:
                return zzmgz;
            case 3:
                return null;
            case 4:
                return new zza(zzdvpVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdvo zzdvoVar = (zzdvo) obj2;
                this.zzmgw = (zzdvu) zzhVar.zza(this.zzmgw, zzdvoVar.zzmgw);
                this.zzmgx = (zzdvk) zzhVar.zza(this.zzmgx, zzdvoVar.zzmgx);
                this.zzmgy = zzhVar.zza(this.zzmgy != 0, this.zzmgy, zzdvoVar.zzmgy != 0, zzdvoVar.zzmgy);
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
                                    if (zzcxx == 10) {
                                        if (this.zzmgw != null) {
                                            zzdvu zzdvuVar = this.zzmgw;
                                            zzfhu.zza zzaVar3 = (zzfhu.zza) zzdvuVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar3.zza((zzfhu.zza) zzdvuVar);
                                            zzaVar2 = (zzdvu.zza) zzaVar3;
                                        } else {
                                            zzaVar2 = null;
                                        }
                                        this.zzmgw = (zzdvu) zzfhbVar.zza((zzfhb) zzdvu.zzbqi(), zzfhmVar);
                                        if (zzaVar2 != null) {
                                            zzaVar2.zza((zzdvu.zza) this.zzmgw);
                                            this.zzmgw = zzaVar2.zzczw();
                                        }
                                    } else if (zzcxx == 18) {
                                        if (this.zzmgx != null) {
                                            zzdvk zzdvkVar = this.zzmgx;
                                            zzfhu.zza zzaVar4 = (zzfhu.zza) zzdvkVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar4.zza((zzfhu.zza) zzdvkVar);
                                            zzaVar = (zzdvk.zza) zzaVar4;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmgx = (zzdvk) zzfhbVar.zza((zzfhb) zzdvk.zzbpo(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzdvk.zza) this.zzmgx);
                                            this.zzmgx = zzaVar.zzczw();
                                        }
                                    } else if (zzcxx == 24) {
                                        this.zzmgy = zzfhbVar.zzcyh();
                                    } else if (!zza(zzcxx, zzfhbVar)) {
                                    }
                                }
                                r0 = true;
                            } catch (IOException e) {
                                throw new RuntimeException(new zzfie(e.getMessage()).zzi(this));
                            }
                        } catch (zzfie e2) {
                            throw new RuntimeException(e2.zzi(this));
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
                    synchronized (zzdvo.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgz);
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
        return zzmgz;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmgw != null) {
            zzfhgVar.zza(1, this.zzmgw == null ? zzdvu.zzbqi() : this.zzmgw);
        }
        if (this.zzmgx != null) {
            zzfhgVar.zza(2, this.zzmgx == null ? zzdvk.zzbpo() : this.zzmgx);
        }
        if (this.zzmgy != zzdvi.UNKNOWN_FORMAT.zzhu()) {
            zzfhgVar.zzad(3, this.zzmgy);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdvu zzbps() {
        return this.zzmgw == null ? zzdvu.zzbqi() : this.zzmgw;
    }

    public final zzdvk zzbpt() {
        return this.zzmgx == null ? zzdvk.zzbpo() : this.zzmgx;
    }

    public final zzdvi zzbpu() {
        zzdvi zzgh = zzdvi.zzgh(this.zzmgy);
        return zzgh == null ? zzdvi.UNRECOGNIZED : zzgh;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.zzmgw != null) {
            i2 = 0 + zzfhg.zzc(1, this.zzmgw == null ? zzdvu.zzbqi() : this.zzmgw);
        }
        if (this.zzmgx != null) {
            i2 += zzfhg.zzc(2, this.zzmgx == null ? zzdvk.zzbpo() : this.zzmgx);
        }
        if (this.zzmgy != zzdvi.UNKNOWN_FORMAT.zzhu()) {
            i2 += zzfhg.zzaj(3, this.zzmgy);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
