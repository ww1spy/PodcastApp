package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwe;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwc extends zzfhu<zzdwc, zza> implements zzfje {
    private static volatile zzfjl<zzdwc> zzbbm;
    private static final zzdwc zzmhz;
    private int zzmgc;
    private zzdwe zzmhx;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwc, zza> implements zzfje {
        private zza() {
            super(zzdwc.zzmhz);
        }

        /* synthetic */ zza(zzdwd zzdwdVar) {
            this();
        }
    }

    static {
        zzdwc zzdwcVar = new zzdwc();
        zzmhz = zzdwcVar;
        zzdwcVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwcVar.zzpph.zzbkr();
    }

    private zzdwc() {
    }

    public static zzdwc zzag(zzfgs zzfgsVar) throws zzfie {
        return (zzdwc) zzfhu.zza(zzmhz, zzfgsVar);
    }

    public static zzdwc zzbqo() {
        return zzmhz;
    }

    public final int getKeySize() {
        return this.zzmgc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwe.zza zzaVar;
        zzdwd zzdwdVar = null;
        switch (zzdwd.zzbbk[i - 1]) {
            case 1:
                return new zzdwc();
            case 2:
                return zzmhz;
            case 3:
                return null;
            case 4:
                return new zza(zzdwdVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwc zzdwcVar = (zzdwc) obj2;
                this.zzmhx = (zzdwe) zzhVar.zza(this.zzmhx, zzdwcVar.zzmhx);
                this.zzmgc = zzhVar.zza(this.zzmgc != 0, this.zzmgc, zzdwcVar.zzmgc != 0, zzdwcVar.zzmgc);
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
                    synchronized (zzdwc.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmhz);
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
        return zzmhz;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmhx != null) {
            zzfhgVar.zza(1, this.zzmhx == null ? zzdwe.zzbqs() : this.zzmhx);
        }
        if (this.zzmgc != 0) {
            zzfhgVar.zzae(2, this.zzmgc);
        }
        this.zzpph.zza(zzfhgVar);
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
        int i2 = 0;
        if (this.zzmhx != null) {
            i2 = 0 + zzfhg.zzc(1, this.zzmhx == null ? zzdwe.zzbqs() : this.zzmhx);
        }
        if (this.zzmgc != 0) {
            i2 += zzfhg.zzah(2, this.zzmgc);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
