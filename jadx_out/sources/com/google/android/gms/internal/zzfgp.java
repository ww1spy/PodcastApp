package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfgp extends zzfhu<zzfgp, zza> implements zzfje {
    private static volatile zzfjl<zzfgp> zzbbm;
    private static final zzfgp zzpnv;
    private String zzmid = "";
    private zzfgs zzmie = zzfgs.zzpnw;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzfgp, zza> implements zzfje {
        private zza() {
            super(zzfgp.zzpnv);
        }

        /* synthetic */ zza(zzfgq zzfgqVar) {
            this();
        }
    }

    static {
        zzfgp zzfgpVar = new zzfgp();
        zzpnv = zzfgpVar;
        zzfgpVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzfgpVar.zzpph.zzbkr();
    }

    private zzfgp() {
    }

    public static zzfgp zzcxo() {
        return zzpnv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        boolean zzb;
        zzfgq zzfgqVar = null;
        switch (zzfgq.zzbbk[i - 1]) {
            case 1:
                return new zzfgp();
            case 2:
                return zzpnv;
            case 3:
                return null;
            case 4:
                return new zza(zzfgqVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzfgp zzfgpVar = (zzfgp) obj2;
                this.zzmid = zzhVar.zza(!this.zzmid.isEmpty(), this.zzmid, !zzfgpVar.zzmid.isEmpty(), zzfgpVar.zzmid);
                this.zzmie = zzhVar.zza(this.zzmie != zzfgs.zzpnw, this.zzmie, zzfgpVar.zzmie != zzfgs.zzpnw, zzfgpVar.zzmie);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    boolean z = false;
                    while (!z) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 10) {
                                    this.zzmid = zzfhbVar.zzcye();
                                } else if (zzcxx != 18) {
                                    if ((zzcxx & 7) == 4) {
                                        zzb = false;
                                    } else {
                                        if (this.zzpph == zzfko.zzdca()) {
                                            this.zzpph = zzfko.zzdcb();
                                        }
                                        zzb = this.zzpph.zzb(zzcxx, zzfhbVar);
                                    }
                                    if (!zzb) {
                                    }
                                } else {
                                    this.zzmie = zzfhbVar.zzcyf();
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
                    synchronized (zzfgp.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzpnv);
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
        return zzpnv;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmid.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmid);
        }
        if (!this.zzmie.isEmpty()) {
            zzfhgVar.zza(2, this.zzmie);
        }
        this.zzpph.zza(zzfhgVar);
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzq = this.zzmid.isEmpty() ? 0 : 0 + zzfhg.zzq(1, this.zzmid);
        if (!this.zzmie.isEmpty()) {
            zzq += zzfhg.zzc(2, this.zzmie);
        }
        int zzhs = zzq + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
