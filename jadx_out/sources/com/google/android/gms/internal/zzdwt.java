package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwv;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwt extends zzfhu<zzdwt, zza> implements zzfje {
    private static volatile zzfjl<zzdwt> zzbbm;
    private static final zzdwt zzmjn;
    private int zzmfs;
    private zzdwv zzmjm;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwt, zza> implements zzfje {
        private zza() {
            super(zzdwt.zzmjn);
        }

        /* synthetic */ zza(zzdwu zzdwuVar) {
            this();
        }

        public final zza zzb(zzdwv zzdwvVar) {
            zzczv();
            ((zzdwt) this.zzppl).zza(zzdwvVar);
            return this;
        }

        public final zza zzgv(int i) {
            zzczv();
            ((zzdwt) this.zzppl).setVersion(0);
            return this;
        }
    }

    static {
        zzdwt zzdwtVar = new zzdwt();
        zzmjn = zzdwtVar;
        zzdwtVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwtVar.zzpph.zzbkr();
    }

    private zzdwt() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setVersion(int i) {
        this.zzmfs = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdwv zzdwvVar) {
        if (zzdwvVar == null) {
            throw new NullPointerException();
        }
        this.zzmjm = zzdwvVar;
    }

    public static zzdwt zzaj(zzfgs zzfgsVar) throws zzfie {
        return (zzdwt) zzfhu.zza(zzmjn, zzfgsVar);
    }

    public static zza zzbsa() {
        return (zza) ((zzfhu.zza) zzmjn.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public final int getVersion() {
        return this.zzmfs;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwv.zza zzaVar;
        zzdwu zzdwuVar = null;
        switch (zzdwu.zzbbk[i - 1]) {
            case 1:
                return new zzdwt();
            case 2:
                return zzmjn;
            case 3:
                return null;
            case 4:
                return new zza(zzdwuVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwt zzdwtVar = (zzdwt) obj2;
                this.zzmfs = zzhVar.zza(this.zzmfs != 0, this.zzmfs, zzdwtVar.zzmfs != 0, zzdwtVar.zzmfs);
                this.zzmjm = (zzdwv) zzhVar.zza(this.zzmjm, zzdwtVar.zzmjm);
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
                                    this.zzmfs = zzfhbVar.zzcyg();
                                } else if (zzcxx == 18) {
                                    if (this.zzmjm != null) {
                                        zzdwv zzdwvVar = this.zzmjm;
                                        zzfhu.zza zzaVar2 = (zzfhu.zza) zzdwvVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar2.zza((zzfhu.zza) zzdwvVar);
                                        zzaVar = (zzdwv.zza) zzaVar2;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmjm = (zzdwv) zzfhbVar.zza((zzfhb) zzdwv.zzbsd(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdwv.zza) this.zzmjm);
                                        this.zzmjm = zzaVar.zzczw();
                                    }
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
                    synchronized (zzdwt.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmjn);
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
        return zzmjn;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmfs != 0) {
            zzfhgVar.zzae(1, this.zzmfs);
        }
        if (this.zzmjm != null) {
            zzfhgVar.zza(2, this.zzmjm == null ? zzdwv.zzbsd() : this.zzmjm);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdwv zzbrz() {
        return this.zzmjm == null ? zzdwv.zzbsd() : this.zzmjm;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzah = this.zzmfs != 0 ? 0 + zzfhg.zzah(1, this.zzmfs) : 0;
        if (this.zzmjm != null) {
            zzah += zzfhg.zzc(2, this.zzmjm == null ? zzdwv.zzbsd() : this.zzmjm);
        }
        int zzhs = zzah + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
