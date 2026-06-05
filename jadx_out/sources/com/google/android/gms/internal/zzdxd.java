package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdxd extends zzfhu<zzdxd, zza> implements zzfje {
    private static volatile zzfjl<zzdxd> zzbbm;
    private static final zzdxd zzmke;
    private int zzmjb;
    private String zzmkc = "";
    private zzfid<zzdwn> zzmkd = zzczs();

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdxd, zza> implements zzfje {
        private zza() {
            super(zzdxd.zzmke);
        }

        /* synthetic */ zza(zzdxe zzdxeVar) {
            this();
        }

        public final zza zzb(zzdwn zzdwnVar) {
            zzczv();
            ((zzdxd) this.zzppl).zza(zzdwnVar);
            return this;
        }

        public final zza zzox(String str) {
            zzczv();
            ((zzdxd) this.zzppl).zzow(str);
            return this;
        }
    }

    static {
        zzdxd zzdxdVar = new zzdxd();
        zzmke = zzdxdVar;
        zzdxdVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdxdVar.zzpph.zzbkr();
    }

    private zzdxd() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdwn zzdwnVar) {
        if (zzdwnVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzmkd.zzcxk()) {
            zzfid<zzdwn> zzfidVar = this.zzmkd;
            int size = zzfidVar.size();
            this.zzmkd = zzfidVar.zzmo(size == 0 ? 10 : size << 1);
        }
        this.zzmkd.add(zzdwnVar);
    }

    public static zza zzbsn() {
        return (zza) ((zzfhu.zza) zzmke.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzow(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzmkc = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdxe zzdxeVar = null;
        switch (zzdxe.zzbbk[i - 1]) {
            case 1:
                return new zzdxd();
            case 2:
                return zzmke;
            case 3:
                this.zzmkd.zzbkr();
                return null;
            case 4:
                return new zza(zzdxeVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdxd zzdxdVar = (zzdxd) obj2;
                this.zzmkc = zzhVar.zza(!this.zzmkc.isEmpty(), this.zzmkc, true ^ zzdxdVar.zzmkc.isEmpty(), zzdxdVar.zzmkc);
                this.zzmkd = zzhVar.zza(this.zzmkd, zzdxdVar.zzmkd);
                if (zzhVar == zzfhu.zzf.zzppq) {
                    this.zzmjb |= zzdxdVar.zzmjb;
                }
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
                                int i2 = 10;
                                if (zzcxx == 10) {
                                    this.zzmkc = zzfhbVar.zzcye();
                                } else if (zzcxx == 18) {
                                    if (!this.zzmkd.zzcxk()) {
                                        zzfid<zzdwn> zzfidVar = this.zzmkd;
                                        int size = zzfidVar.size();
                                        if (size != 0) {
                                            i2 = size << 1;
                                        }
                                        this.zzmkd = zzfidVar.zzmo(i2);
                                    }
                                    this.zzmkd.add((zzdwn) zzfhbVar.zza((zzfhb) zzdwn.zzbrh(), zzfhmVar));
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
                    synchronized (zzdxd.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmke);
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
        return zzmke;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmkc.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmkc);
        }
        for (int i = 0; i < this.zzmkd.size(); i++) {
            zzfhgVar.zza(2, this.zzmkd.get(i));
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final List<zzdwn> zzbsm() {
        return this.zzmkd;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzq = !this.zzmkc.isEmpty() ? zzfhg.zzq(1, this.zzmkc) + 0 : 0;
        for (int i2 = 0; i2 < this.zzmkd.size(); i2++) {
            zzq += zzfhg.zzc(2, this.zzmkd.get(i2));
        }
        int zzhs = zzq + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
