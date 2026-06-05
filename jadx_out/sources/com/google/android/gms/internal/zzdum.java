package com.google.android.gms.internal;

import com.google.android.gms.internal.zzduq;
import com.google.android.gms.internal.zzdwa;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdum extends zzfhu<zzdum, zza> implements zzfje {
    private static volatile zzfjl<zzdum> zzbbm;
    private static final zzdum zzmfv;
    private int zzmfs;
    private zzduq zzmft;
    private zzdwa zzmfu;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdum, zza> implements zzfje {
        private zza() {
            super(zzdum.zzmfv);
        }

        /* synthetic */ zza(zzdun zzdunVar) {
            this();
        }

        public final zza zzb(zzduq zzduqVar) {
            zzczv();
            ((zzdum) this.zzppl).zza(zzduqVar);
            return this;
        }

        public final zza zzb(zzdwa zzdwaVar) {
            zzczv();
            ((zzdum) this.zzppl).zza(zzdwaVar);
            return this;
        }

        public final zza zzgc(int i) {
            zzczv();
            ((zzdum) this.zzppl).setVersion(i);
            return this;
        }
    }

    static {
        zzdum zzdumVar = new zzdum();
        zzmfv = zzdumVar;
        zzdumVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdumVar.zzpph.zzbkr();
    }

    private zzdum() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzduq zzduqVar) {
        if (zzduqVar == null) {
            throw new NullPointerException();
        }
        this.zzmft = zzduqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdwa zzdwaVar) {
        if (zzdwaVar == null) {
            throw new NullPointerException();
        }
        this.zzmfu = zzdwaVar;
    }

    public static zza zzbon() {
        return (zza) ((zzfhu.zza) zzmfv.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzdum zzi(zzfgs zzfgsVar) throws zzfie {
        return (zzdum) zzfhu.zza(zzmfv, zzfgsVar);
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwa.zza zzaVar;
        zzduq.zza zzaVar2;
        zzdun zzdunVar = null;
        switch (zzdun.zzbbk[i - 1]) {
            case 1:
                return new zzdum();
            case 2:
                return zzmfv;
            case 3:
                return null;
            case 4:
                return new zza(zzdunVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdum zzdumVar = (zzdum) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdumVar.zzmfs != 0, zzdumVar.zzmfs);
                this.zzmft = (zzduq) zzhVar.zza(this.zzmft, zzdumVar.zzmft);
                this.zzmfu = (zzdwa) zzhVar.zza(this.zzmfu, zzdumVar.zzmfu);
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
                                    if (zzcxx == 8) {
                                        this.zzmfs = zzfhbVar.zzcyg();
                                    } else if (zzcxx == 18) {
                                        if (this.zzmft != null) {
                                            zzduq zzduqVar = this.zzmft;
                                            zzfhu.zza zzaVar3 = (zzfhu.zza) zzduqVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar3.zza((zzfhu.zza) zzduqVar);
                                            zzaVar2 = (zzduq.zza) zzaVar3;
                                        } else {
                                            zzaVar2 = null;
                                        }
                                        this.zzmft = (zzduq) zzfhbVar.zza((zzfhb) zzduq.zzbov(), zzfhmVar);
                                        if (zzaVar2 != null) {
                                            zzaVar2.zza((zzduq.zza) this.zzmft);
                                            this.zzmft = zzaVar2.zzczw();
                                        }
                                    } else if (zzcxx == 26) {
                                        if (this.zzmfu != null) {
                                            zzdwa zzdwaVar = this.zzmfu;
                                            zzfhu.zza zzaVar4 = (zzfhu.zza) zzdwaVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar4.zza((zzfhu.zza) zzdwaVar);
                                            zzaVar = (zzdwa.zza) zzaVar4;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmfu = (zzdwa) zzfhbVar.zza((zzfhb) zzdwa.zzbqm(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzdwa.zza) this.zzmfu);
                                            this.zzmfu = zzaVar.zzczw();
                                        }
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
                    synchronized (zzdum.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmfv);
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
        return zzmfv;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmft != null) {
            zzfhgVar.zza(2, this.zzmft == null ? zzduq.zzbov() : this.zzmft);
        }
        if (this.zzmfu != null) {
            zzfhgVar.zza(3, this.zzmfu == null ? zzdwa.zzbqm() : this.zzmfu);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzduq zzbol() {
        return this.zzmft == null ? zzduq.zzbov() : this.zzmft;
    }

    public final zzdwa zzbom() {
        return this.zzmfu == null ? zzdwa.zzbqm() : this.zzmfu;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmft != null) {
            zzah += zzfhg.zzc(2, this.zzmft == null ? zzduq.zzbov() : this.zzmft);
        }
        if (this.zzmfu != null) {
            zzah += zzfhg.zzc(3, this.zzmfu == null ? zzdwa.zzbqm() : this.zzmfu);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
