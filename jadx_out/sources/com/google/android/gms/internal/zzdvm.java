package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdvo;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvm extends zzfhu<zzdvm, zza> implements zzfje {
    private static volatile zzfjl<zzdvm> zzbbm;
    private static final zzdvm zzmgv;
    private zzdvo zzmgu;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvm, zza> implements zzfje {
        private zza() {
            super(zzdvm.zzmgv);
        }

        /* synthetic */ zza(zzdvn zzdvnVar) {
            this();
        }
    }

    static {
        zzdvm zzdvmVar = new zzdvm();
        zzmgv = zzdvmVar;
        zzdvmVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvmVar.zzpph.zzbkr();
    }

    private zzdvm() {
    }

    public static zzdvm zzw(zzfgs zzfgsVar) throws zzfie {
        return (zzdvm) zzfhu.zza(zzmgv, zzfgsVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdvo.zza zzaVar;
        zzdvn zzdvnVar = null;
        switch (zzdvn.zzbbk[i - 1]) {
            case 1:
                return new zzdvm();
            case 2:
                return zzmgv;
            case 3:
                return null;
            case 4:
                return new zza(zzdvnVar);
            case 5:
                this.zzmgu = (zzdvo) ((zzfhu.zzh) obj).zza(this.zzmgu, ((zzdvm) obj2).zzmgu);
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
                                    if (this.zzmgu != null) {
                                        zzdvo zzdvoVar = this.zzmgu;
                                        zzfhu.zza zzaVar2 = (zzfhu.zza) zzdvoVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar2.zza((zzfhu.zza) zzdvoVar);
                                        zzaVar = (zzdvo.zza) zzaVar2;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmgu = (zzdvo) zzfhbVar.zza((zzfhb) zzdvo.zzbpv(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdvo.zza) this.zzmgu);
                                        this.zzmgu = zzaVar.zzczw();
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
                    synchronized (zzdvm.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgv);
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
        return zzmgv;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmgu != null) {
            zzfhgVar.zza(1, this.zzmgu == null ? zzdvo.zzbpv() : this.zzmgu);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdvo zzbpq() {
        return this.zzmgu == null ? zzdvo.zzbpv() : this.zzmgu;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.zzmgu != null) {
            i2 = 0 + zzfhg.zzc(1, this.zzmgu == null ? zzdvo.zzbpv() : this.zzmgu);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
