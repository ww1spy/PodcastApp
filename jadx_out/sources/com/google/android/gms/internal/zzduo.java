package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdus;
import com.google.android.gms.internal.zzdwc;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzduo extends zzfhu<zzduo, zza> implements zzfje {
    private static volatile zzfjl<zzduo> zzbbm;
    private static final zzduo zzmfy;
    private zzdus zzmfw;
    private zzdwc zzmfx;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzduo, zza> implements zzfje {
        private zza() {
            super(zzduo.zzmfy);
        }

        /* synthetic */ zza(zzdup zzdupVar) {
            this();
        }
    }

    static {
        zzduo zzduoVar = new zzduo();
        zzmfy = zzduoVar;
        zzduoVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzduoVar.zzpph.zzbkr();
    }

    private zzduo() {
    }

    public static zzduo zzj(zzfgs zzfgsVar) throws zzfie {
        return (zzduo) zzfhu.zza(zzmfy, zzfgsVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwc.zza zzaVar;
        zzdus.zza zzaVar2;
        zzdup zzdupVar = null;
        switch (zzdup.zzbbk[i - 1]) {
            case 1:
                return new zzduo();
            case 2:
                return zzmfy;
            case 3:
                return null;
            case 4:
                return new zza(zzdupVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzduo zzduoVar = (zzduo) obj2;
                this.zzmfw = (zzdus) zzhVar.zza(this.zzmfw, zzduoVar.zzmfw);
                this.zzmfx = (zzdwc) zzhVar.zza(this.zzmfx, zzduoVar.zzmfx);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    boolean z = false;
                    while (!z) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 10) {
                                    if (this.zzmfw != null) {
                                        zzdus zzdusVar = this.zzmfw;
                                        zzfhu.zza zzaVar3 = (zzfhu.zza) zzdusVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar3.zza((zzfhu.zza) zzdusVar);
                                        zzaVar2 = (zzdus.zza) zzaVar3;
                                    } else {
                                        zzaVar2 = null;
                                    }
                                    this.zzmfw = (zzdus) zzfhbVar.zza((zzfhb) zzdus.zzbox(), zzfhmVar);
                                    if (zzaVar2 != null) {
                                        zzaVar2.zza((zzdus.zza) this.zzmfw);
                                        this.zzmfw = zzaVar2.zzczw();
                                    }
                                } else if (zzcxx == 18) {
                                    if (this.zzmfx != null) {
                                        zzdwc zzdwcVar = this.zzmfx;
                                        zzfhu.zza zzaVar4 = (zzfhu.zza) zzdwcVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar4.zza((zzfhu.zza) zzdwcVar);
                                        zzaVar = (zzdwc.zza) zzaVar4;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmfx = (zzdwc) zzfhbVar.zza((zzfhb) zzdwc.zzbqo(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdwc.zza) this.zzmfx);
                                        this.zzmfx = zzaVar.zzczw();
                                    }
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
                    synchronized (zzduo.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmfy);
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
        return zzmfy;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfw != null) {
            zzfhgVar.zza(1, this.zzmfw == null ? zzdus.zzbox() : this.zzmfw);
        }
        if (this.zzmfx != null) {
            zzfhgVar.zza(2, this.zzmfx == null ? zzdwc.zzbqo() : this.zzmfx);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdus zzbop() {
        return this.zzmfw == null ? zzdus.zzbox() : this.zzmfw;
    }

    public final zzdwc zzboq() {
        return this.zzmfx == null ? zzdwc.zzbqo() : this.zzmfx;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.zzmfw != null) {
            i2 = 0 + zzfhg.zzc(1, this.zzmfw == null ? zzdus.zzbox() : this.zzmfw);
        }
        if (this.zzmfx != null) {
            i2 += zzfhg.zzc(2, this.zzmfx == null ? zzdwc.zzbqo() : this.zzmfx);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
