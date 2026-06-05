package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwe extends zzfhu<zzdwe, zza> implements zzfje {
    private static volatile zzfjl<zzdwe> zzbbm;
    private static final zzdwe zzmic;
    private int zzmia;
    private int zzmib;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwe, zza> implements zzfje {
        private zza() {
            super(zzdwe.zzmic);
        }

        /* synthetic */ zza(zzdwf zzdwfVar) {
            this();
        }
    }

    static {
        zzdwe zzdweVar = new zzdwe();
        zzmic = zzdweVar;
        zzdweVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdweVar.zzpph.zzbkr();
    }

    private zzdwe() {
    }

    public static zzdwe zzbqs() {
        return zzmic;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwf zzdwfVar = null;
        boolean z = false;
        switch (zzdwf.zzbbk[i - 1]) {
            case 1:
                return new zzdwe();
            case 2:
                return zzmic;
            case 3:
                return null;
            case 4:
                return new zza(zzdwfVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwe zzdweVar = (zzdwe) obj2;
                this.zzmia = zzhVar.zza(this.zzmia != 0, this.zzmia, zzdweVar.zzmia != 0, zzdweVar.zzmia);
                this.zzmib = zzhVar.zza(this.zzmib != 0, this.zzmib, zzdweVar.zzmib != 0, zzdweVar.zzmib);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!z) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 8) {
                                    this.zzmia = zzfhbVar.zzcyh();
                                } else if (zzcxx == 16) {
                                    this.zzmib = zzfhbVar.zzcyg();
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
                    synchronized (zzdwe.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmic);
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
        return zzmic;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmia != zzdvy.UNKNOWN_HASH.zzhu()) {
            zzfhgVar.zzad(1, this.zzmia);
        }
        if (this.zzmib != 0) {
            zzfhgVar.zzae(2, this.zzmib);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdvy zzbqq() {
        zzdvy zzgl = zzdvy.zzgl(this.zzmia);
        return zzgl == null ? zzdvy.UNRECOGNIZED : zzgl;
    }

    public final int zzbqr() {
        return this.zzmib;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzaj = this.zzmia != zzdvy.UNKNOWN_HASH.zzhu() ? 0 + zzfhg.zzaj(1, this.zzmia) : 0;
        if (this.zzmib != 0) {
            zzaj += zzfhg.zzah(2, this.zzmib);
        }
        int zzhs = zzaj + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
