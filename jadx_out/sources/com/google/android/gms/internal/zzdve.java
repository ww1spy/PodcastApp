package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdve extends zzfhu<zzdve, zza> implements zzfje {
    private static volatile zzfjl<zzdve> zzbbm;
    private static final zzdve zzmgl;
    private int zzmgc;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdve, zza> implements zzfje {
        private zza() {
            super(zzdve.zzmgl);
        }

        /* synthetic */ zza(zzdvf zzdvfVar) {
            this();
        }
    }

    static {
        zzdve zzdveVar = new zzdve();
        zzmgl = zzdveVar;
        zzdveVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdveVar.zzpph.zzbkr();
    }

    private zzdve() {
    }

    public static zzdve zzt(zzfgs zzfgsVar) throws zzfie {
        return (zzdve) zzfhu.zza(zzmgl, zzfgsVar);
    }

    public final int getKeySize() {
        return this.zzmgc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvf zzdvfVar = null;
        switch (zzdvf.zzbbk[i - 1]) {
            case 1:
                return new zzdve();
            case 2:
                return zzmgl;
            case 3:
                return null;
            case 4:
                return new zza(zzdvfVar);
            case 5:
                zzdve zzdveVar = (zzdve) obj2;
                this.zzmgc = ((zzfhu.zzh) obj).zza(this.zzmgc != 0, this.zzmgc, zzdveVar.zzmgc != 0, zzdveVar.zzmgc);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!r0) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 16) {
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
                    synchronized (zzdve.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgl);
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
        return zzmgl;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmgc != 0) {
            zzfhgVar.zzae(2, this.zzmgc);
        }
        this.zzpph.zza(zzfhgVar);
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = (this.zzmgc != 0 ? 0 + zzfhg.zzah(2, this.zzmgc) : 0) + this.zzpph.zzhs();
        this.zzppi = zzah;
        return zzah;
    }
}
