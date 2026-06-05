package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwg;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdwp extends zzfhu<zzdwp, zza> implements zzfje {
    private static volatile zzfjl<zzdwp> zzbbm;
    private static final zzdwp zzmje;
    private int zzmjb;
    private int zzmjc;
    private zzfid<zzb> zzmjd = zzczs();

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwp, zza> implements zzfje {
        private zza() {
            super(zzdwp.zzmje);
        }

        /* synthetic */ zza(zzdwq zzdwqVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class zzb extends zzfhu<zzb, zza> implements zzfje {
        private static volatile zzfjl<zzb> zzbbm;
        private static final zzb zzmji;
        private int zzmiu;
        private zzdwg zzmjf;
        private int zzmjg;
        private int zzmjh;

        /* loaded from: classes.dex */
        public static final class zza extends zzfhu.zza<zzb, zza> implements zzfje {
            private zza() {
                super(zzb.zzmji);
            }

            /* synthetic */ zza(zzdwq zzdwqVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzmji = zzbVar;
            zzbVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
            zzbVar.zzpph.zzbkr();
        }

        private zzb() {
        }

        public static zzb zzbrs() {
            return zzmji;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzfhu
        public final Object zza(int i, Object obj, Object obj2) {
            zzdwg.zza zzaVar;
            zzdwq zzdwqVar = null;
            boolean z = false;
            switch (zzdwq.zzbbk[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return zzmji;
                case 3:
                    return null;
                case 4:
                    return new zza(zzdwqVar);
                case 5:
                    zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                    zzb zzbVar = (zzb) obj2;
                    this.zzmjf = (zzdwg) zzhVar.zza(this.zzmjf, zzbVar.zzmjf);
                    this.zzmjg = zzhVar.zza(this.zzmjg != 0, this.zzmjg, zzbVar.zzmjg != 0, zzbVar.zzmjg);
                    this.zzmjh = zzhVar.zza(this.zzmjh != 0, this.zzmjh, zzbVar.zzmjh != 0, zzbVar.zzmjh);
                    this.zzmiu = zzhVar.zza(this.zzmiu != 0, this.zzmiu, zzbVar.zzmiu != 0, zzbVar.zzmiu);
                    return this;
                case 6:
                    zzfhb zzfhbVar = (zzfhb) obj;
                    zzfhm zzfhmVar = (zzfhm) obj2;
                    if (zzfhmVar != null) {
                        while (!z) {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx == 10) {
                                        if (this.zzmjf != null) {
                                            zzdwg zzdwgVar = this.zzmjf;
                                            zzfhu.zza zzaVar2 = (zzfhu.zza) zzdwgVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                            zzaVar2.zza((zzfhu.zza) zzdwgVar);
                                            zzaVar = (zzdwg.zza) zzaVar2;
                                        } else {
                                            zzaVar = null;
                                        }
                                        this.zzmjf = (zzdwg) zzfhbVar.zza((zzfhb) zzdwg.zzbqy(), zzfhmVar);
                                        if (zzaVar != null) {
                                            zzaVar.zza((zzdwg.zza) this.zzmjf);
                                            this.zzmjf = zzaVar.zzczw();
                                        }
                                    } else if (zzcxx == 16) {
                                        this.zzmjg = zzfhbVar.zzcyh();
                                    } else if (zzcxx == 24) {
                                        this.zzmjh = zzfhbVar.zzcyg();
                                    } else if (zzcxx == 32) {
                                        this.zzmiu = zzfhbVar.zzcyh();
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
                        synchronized (zzb.class) {
                            if (zzbbm == null) {
                                zzbbm = new zzfhu.zzb(zzmji);
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
            return zzmji;
        }

        @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
        public final void zza(zzfhg zzfhgVar) throws IOException {
            if (this.zzmjf != null) {
                zzfhgVar.zza(1, this.zzmjf == null ? zzdwg.zzbqy() : this.zzmjf);
            }
            if (this.zzmjg != zzdwj.UNKNOWN_STATUS.zzhu()) {
                zzfhgVar.zzad(2, this.zzmjg);
            }
            if (this.zzmjh != 0) {
                zzfhgVar.zzae(3, this.zzmjh);
            }
            if (this.zzmiu != zzdxb.UNKNOWN_PREFIX.zzhu()) {
                zzfhgVar.zzad(4, this.zzmiu);
            }
            this.zzpph.zza(zzfhgVar);
        }

        public final boolean zzbrn() {
            return this.zzmjf != null;
        }

        public final zzdwg zzbro() {
            return this.zzmjf == null ? zzdwg.zzbqy() : this.zzmjf;
        }

        public final zzdwj zzbrp() {
            zzdwj zzgo = zzdwj.zzgo(this.zzmjg);
            return zzgo == null ? zzdwj.UNRECOGNIZED : zzgo;
        }

        public final int zzbrq() {
            return this.zzmjh;
        }

        public final zzdxb zzbrr() {
            zzdxb zzgx = zzdxb.zzgx(this.zzmiu);
            return zzgx == null ? zzdxb.UNRECOGNIZED : zzgx;
        }

        @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
        public final int zzhs() {
            int i = this.zzppi;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if (this.zzmjf != null) {
                i2 = 0 + zzfhg.zzc(1, this.zzmjf == null ? zzdwg.zzbqy() : this.zzmjf);
            }
            if (this.zzmjg != zzdwj.UNKNOWN_STATUS.zzhu()) {
                i2 += zzfhg.zzaj(2, this.zzmjg);
            }
            if (this.zzmjh != 0) {
                i2 += zzfhg.zzah(3, this.zzmjh);
            }
            if (this.zzmiu != zzdxb.UNKNOWN_PREFIX.zzhu()) {
                i2 += zzfhg.zzaj(4, this.zzmiu);
            }
            int zzhs = i2 + this.zzpph.zzhs();
            this.zzppi = zzhs;
            return zzhs;
        }
    }

    static {
        zzdwp zzdwpVar = new zzdwp();
        zzmje = zzdwpVar;
        zzdwpVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwpVar.zzpph.zzbkr();
    }

    private zzdwp() {
    }

    public static zzdwp zzai(byte[] bArr) throws zzfie {
        return (zzdwp) zzfhu.zza(zzmje, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwq zzdwqVar = null;
        switch (zzdwq.zzbbk[i - 1]) {
            case 1:
                return new zzdwp();
            case 2:
                return zzmje;
            case 3:
                this.zzmjd.zzbkr();
                return null;
            case 4:
                return new zza(zzdwqVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwp zzdwpVar = (zzdwp) obj2;
                this.zzmjc = zzhVar.zza(this.zzmjc != 0, this.zzmjc, zzdwpVar.zzmjc != 0, zzdwpVar.zzmjc);
                this.zzmjd = zzhVar.zza(this.zzmjd, zzdwpVar.zzmjd);
                if (zzhVar == zzfhu.zzf.zzppq) {
                    this.zzmjb |= zzdwpVar.zzmjb;
                }
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                zzfhm zzfhmVar = (zzfhm) obj2;
                if (zzfhmVar != null) {
                    while (!r0) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 8) {
                                    this.zzmjc = zzfhbVar.zzcyg();
                                } else if (zzcxx == 18) {
                                    if (!this.zzmjd.zzcxk()) {
                                        zzfid<zzb> zzfidVar = this.zzmjd;
                                        int size = zzfidVar.size();
                                        this.zzmjd = zzfidVar.zzmo(size == 0 ? 10 : size << 1);
                                    }
                                    this.zzmjd.add((zzb) zzfhbVar.zza((zzfhb) zzb.zzbrs(), zzfhmVar));
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
                    synchronized (zzdwp.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmje);
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
        return zzmje;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmjc != 0) {
            zzfhgVar.zzae(1, this.zzmjc);
        }
        for (int i = 0; i < this.zzmjd.size(); i++) {
            zzfhgVar.zza(2, this.zzmjd.get(i));
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final int zzbrj() {
        return this.zzmjc;
    }

    public final List<zzb> zzbrk() {
        return this.zzmjd;
    }

    public final int zzbrl() {
        return this.zzmjd.size();
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmjc != 0 ? zzfhg.zzah(1, this.zzmjc) + 0 : 0;
        for (int i2 = 0; i2 < this.zzmjd.size(); i2++) {
            zzah += zzfhg.zzc(2, this.zzmjd.get(i2));
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
