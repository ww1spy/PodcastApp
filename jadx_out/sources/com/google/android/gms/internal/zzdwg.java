package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwg extends zzfhu<zzdwg, zza> implements zzfje {
    private static volatile zzfjl<zzdwg> zzbbm;
    private static final zzdwg zzmig;
    private String zzmid = "";
    private zzfgs zzmie = zzfgs.zzpnw;
    private int zzmif;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwg, zza> implements zzfje {
        private zza() {
            super(zzdwg.zzmig);
        }

        /* synthetic */ zza(zzdwh zzdwhVar) {
            this();
        }

        public final zza zzai(zzfgs zzfgsVar) {
            zzczv();
            ((zzdwg) this.zzppl).zzah(zzfgsVar);
            return this;
        }

        public final zza zzb(zzb zzbVar) {
            zzczv();
            ((zzdwg) this.zzppl).zza(zzbVar);
            return this;
        }

        public final zza zzop(String str) {
            zzczv();
            ((zzdwg) this.zzppl).zzoo(str);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public enum zzb implements zzfia {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);

        private static final zzfib<zzb> zzbcn = new zzdwi();
        private final int value;

        zzb(int i) {
            this.value = i;
        }

        public static zzb zzgn(int i) {
            switch (i) {
                case 0:
                    return UNKNOWN_KEYMATERIAL;
                case 1:
                    return SYMMETRIC;
                case 2:
                    return ASYMMETRIC_PRIVATE;
                case 3:
                    return ASYMMETRIC_PUBLIC;
                case 4:
                    return REMOTE;
                default:
                    return null;
            }
        }

        @Override // com.google.android.gms.internal.zzfia
        public final int zzhu() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }
    }

    static {
        zzdwg zzdwgVar = new zzdwg();
        zzmig = zzdwgVar;
        zzdwgVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwgVar.zzpph.zzbkr();
    }

    private zzdwg() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        this.zzmif = zzbVar.zzhu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzah(zzfgs zzfgsVar) {
        if (zzfgsVar == null) {
            throw new NullPointerException();
        }
        this.zzmie = zzfgsVar;
    }

    public static zza zzbqx() {
        return (zza) ((zzfhu.zza) zzmig.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzdwg zzbqy() {
        return zzmig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzoo(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzmid = str;
    }

    @Override // com.google.android.gms.internal.zzfhu
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdwh zzdwhVar = null;
        boolean z = false;
        switch (zzdwh.zzbbk[i - 1]) {
            case 1:
                return new zzdwg();
            case 2:
                return zzmig;
            case 3:
                return null;
            case 4:
                return new zza(zzdwhVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwg zzdwgVar = (zzdwg) obj2;
                this.zzmid = zzhVar.zza(!this.zzmid.isEmpty(), this.zzmid, !zzdwgVar.zzmid.isEmpty(), zzdwgVar.zzmid);
                this.zzmie = zzhVar.zza(this.zzmie != zzfgs.zzpnw, this.zzmie, zzdwgVar.zzmie != zzfgs.zzpnw, zzdwgVar.zzmie);
                this.zzmif = zzhVar.zza(this.zzmif != 0, this.zzmif, zzdwgVar.zzmif != 0, zzdwgVar.zzmif);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!z) {
                        try {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx == 10) {
                                        this.zzmid = zzfhbVar.zzcye();
                                    } else if (zzcxx == 18) {
                                        this.zzmie = zzfhbVar.zzcyf();
                                    } else if (zzcxx == 24) {
                                        this.zzmif = zzfhbVar.zzcyh();
                                    } else if (!zza(zzcxx, zzfhbVar)) {
                                    }
                                }
                                z = true;
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
                    synchronized (zzdwg.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmig);
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
        return zzmig;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmid.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmid);
        }
        if (!this.zzmie.isEmpty()) {
            zzfhgVar.zza(2, this.zzmie);
        }
        if (this.zzmif != zzb.UNKNOWN_KEYMATERIAL.zzhu()) {
            zzfhgVar.zzad(3, this.zzmif);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final String zzbqu() {
        return this.zzmid;
    }

    public final zzfgs zzbqv() {
        return this.zzmie;
    }

    public final zzb zzbqw() {
        zzb zzgn = zzb.zzgn(this.zzmif);
        return zzgn == null ? zzb.UNRECOGNIZED : zzgn;
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
        if (this.zzmif != zzb.UNKNOWN_KEYMATERIAL.zzhu()) {
            zzq += zzfhg.zzaj(3, this.zzmif);
        }
        int zzhs = zzq + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
