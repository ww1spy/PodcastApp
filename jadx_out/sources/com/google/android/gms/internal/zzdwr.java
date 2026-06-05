package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwr extends zzfhu<zzdwr, zza> implements zzfje {
    private static volatile zzfjl<zzdwr> zzbbm;
    private static final zzdwr zzmjk;
    private int zzmjb;
    private int zzmjc;
    private zzfid<zzb> zzmjj = zzczs();

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwr, zza> implements zzfje {
        private zza() {
            super(zzdwr.zzmjk);
        }

        /* synthetic */ zza(zzdws zzdwsVar) {
            this();
        }

        public final zza zzb(zzb zzbVar) {
            zzczv();
            ((zzdwr) this.zzppl).zza(zzbVar);
            return this;
        }

        public final zza zzgs(int i) {
            zzczv();
            ((zzdwr) this.zzppl).zzgr(i);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class zzb extends zzfhu<zzb, zza> implements zzfje {
        private static volatile zzfjl<zzb> zzbbm;
        private static final zzb zzmjl;
        private String zzmid = "";
        private int zzmiu;
        private int zzmjg;
        private int zzmjh;

        /* loaded from: classes.dex */
        public static final class zza extends zzfhu.zza<zzb, zza> implements zzfje {
            private zza() {
                super(zzb.zzmjl);
            }

            /* synthetic */ zza(zzdws zzdwsVar) {
                this();
            }

            public final zza zzb(zzdwj zzdwjVar) {
                zzczv();
                ((zzb) this.zzppl).zza(zzdwjVar);
                return this;
            }

            public final zza zzb(zzdxb zzdxbVar) {
                zzczv();
                ((zzb) this.zzppl).zza(zzdxbVar);
                return this;
            }

            public final zza zzgu(int i) {
                zzczv();
                ((zzb) this.zzppl).zzgt(i);
                return this;
            }

            public final zza zzov(String str) {
                zzczv();
                ((zzb) this.zzppl).zzoo(str);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzmjl = zzbVar;
            zzbVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
            zzbVar.zzpph.zzbkr();
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdwj zzdwjVar) {
            if (zzdwjVar == null) {
                throw new NullPointerException();
            }
            this.zzmjg = zzdwjVar.zzhu();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdxb zzdxbVar) {
            if (zzdxbVar == null) {
                throw new NullPointerException();
            }
            this.zzmiu = zzdxbVar.zzhu();
        }

        public static zza zzbrw() {
            return (zza) ((zzfhu.zza) zzmjl.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
        }

        public static zzb zzbrx() {
            return zzmjl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzgt(int i) {
            this.zzmjh = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzoo(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzmid = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzfhu
        public final Object zza(int i, Object obj, Object obj2) {
            zzdws zzdwsVar = null;
            boolean z = false;
            switch (zzdws.zzbbk[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return zzmjl;
                case 3:
                    return null;
                case 4:
                    return new zza(zzdwsVar);
                case 5:
                    zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                    zzb zzbVar = (zzb) obj2;
                    this.zzmid = zzhVar.zza(!this.zzmid.isEmpty(), this.zzmid, !zzbVar.zzmid.isEmpty(), zzbVar.zzmid);
                    this.zzmjg = zzhVar.zza(this.zzmjg != 0, this.zzmjg, zzbVar.zzmjg != 0, zzbVar.zzmjg);
                    this.zzmjh = zzhVar.zza(this.zzmjh != 0, this.zzmjh, zzbVar.zzmjh != 0, zzbVar.zzmjh);
                    this.zzmiu = zzhVar.zza(this.zzmiu != 0, this.zzmiu, zzbVar.zzmiu != 0, zzbVar.zzmiu);
                    return this;
                case 6:
                    zzfhb zzfhbVar = (zzfhb) obj;
                    if (((zzfhm) obj2) != null) {
                        while (!z) {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx == 10) {
                                        this.zzmid = zzfhbVar.zzcye();
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
                                zzbbm = new zzfhu.zzb(zzmjl);
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
            return zzmjl;
        }

        @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
        public final void zza(zzfhg zzfhgVar) throws IOException {
            if (!this.zzmid.isEmpty()) {
                zzfhgVar.zzp(1, this.zzmid);
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

        @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
        public final int zzhs() {
            int i = this.zzppi;
            if (i != -1) {
                return i;
            }
            int zzq = this.zzmid.isEmpty() ? 0 : 0 + zzfhg.zzq(1, this.zzmid);
            if (this.zzmjg != zzdwj.UNKNOWN_STATUS.zzhu()) {
                zzq += zzfhg.zzaj(2, this.zzmjg);
            }
            if (this.zzmjh != 0) {
                zzq += zzfhg.zzah(3, this.zzmjh);
            }
            if (this.zzmiu != zzdxb.UNKNOWN_PREFIX.zzhu()) {
                zzq += zzfhg.zzaj(4, this.zzmiu);
            }
            int zzhs = zzq + this.zzpph.zzhs();
            this.zzppi = zzhs;
            return zzhs;
        }
    }

    static {
        zzdwr zzdwrVar = new zzdwr();
        zzmjk = zzdwrVar;
        zzdwrVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwrVar.zzpph.zzbkr();
    }

    private zzdwr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzmjj.zzcxk()) {
            zzfid<zzb> zzfidVar = this.zzmjj;
            int size = zzfidVar.size();
            this.zzmjj = zzfidVar.zzmo(size == 0 ? 10 : size << 1);
        }
        this.zzmjj.add(zzbVar);
    }

    public static zza zzbru() {
        return (zza) ((zzfhu.zza) zzmjk.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgr(int i) {
        this.zzmjc = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdws zzdwsVar = null;
        switch (zzdws.zzbbk[i - 1]) {
            case 1:
                return new zzdwr();
            case 2:
                return zzmjk;
            case 3:
                this.zzmjj.zzbkr();
                return null;
            case 4:
                return new zza(zzdwsVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwr zzdwrVar = (zzdwr) obj2;
                this.zzmjc = zzhVar.zza(this.zzmjc != 0, this.zzmjc, zzdwrVar.zzmjc != 0, zzdwrVar.zzmjc);
                this.zzmjj = zzhVar.zza(this.zzmjj, zzdwrVar.zzmjj);
                if (zzhVar == zzfhu.zzf.zzppq) {
                    this.zzmjb |= zzdwrVar.zzmjb;
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
                                    if (!this.zzmjj.zzcxk()) {
                                        zzfid<zzb> zzfidVar = this.zzmjj;
                                        int size = zzfidVar.size();
                                        this.zzmjj = zzfidVar.zzmo(size == 0 ? 10 : size << 1);
                                    }
                                    this.zzmjj.add((zzb) zzfhbVar.zza((zzfhb) zzb.zzbrx(), zzfhmVar));
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
                    synchronized (zzdwr.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmjk);
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
        return zzmjk;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmjc != 0) {
            zzfhgVar.zzae(1, this.zzmjc);
        }
        for (int i = 0; i < this.zzmjj.size(); i++) {
            zzfhgVar.zza(2, this.zzmjj.get(i));
        }
        this.zzpph.zza(zzfhgVar);
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmjc != 0 ? zzfhg.zzah(1, this.zzmjc) + 0 : 0;
        for (int i2 = 0; i2 < this.zzmjj.size(); i2++) {
            zzah += zzfhg.zzc(2, this.zzmjj.get(i2));
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
