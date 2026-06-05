package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdva extends zzfhu<zzdva, zza> implements zzfje {
    private static volatile zzfjl<zzdva> zzbbm;
    private static final zzdva zzmgj;
    private int zzmge;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdva, zza> implements zzfje {
        private zza() {
            super(zzdva.zzmgj);
        }

        /* synthetic */ zza(zzdvb zzdvbVar) {
            this();
        }
    }

    static {
        zzdva zzdvaVar = new zzdva();
        zzmgj = zzdvaVar;
        zzdvaVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvaVar.zzpph.zzbkr();
    }

    private zzdva() {
    }

    public static zzdva zzbpg() {
        return zzmgj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvb zzdvbVar = null;
        switch (zzdvb.zzbbk[i - 1]) {
            case 1:
                return new zzdva();
            case 2:
                return zzmgj;
            case 3:
                return null;
            case 4:
                return new zza(zzdvbVar);
            case 5:
                zzdva zzdvaVar = (zzdva) obj2;
                this.zzmge = ((zzfhu.zzh) obj).zza(this.zzmge != 0, this.zzmge, zzdvaVar.zzmge != 0, zzdvaVar.zzmge);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!r0) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 8) {
                                    this.zzmge = zzfhbVar.zzcyg();
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
                    synchronized (zzdva.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgj);
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
        return zzmgj;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmge != 0) {
            zzfhgVar.zzae(1, this.zzmge);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final int zzboz() {
        return this.zzmge;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = (this.zzmge != 0 ? 0 + zzfhg.zzah(1, this.zzmge) : 0) + this.zzpph.zzhs();
        this.zzppi = zzah;
        return zzah;
    }
}
