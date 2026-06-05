package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwv extends zzfhu<zzdwv, zza> implements zzfje {
    private static volatile zzfjl<zzdwv> zzbbm;
    private static final zzdwv zzmjp;
    private String zzmjo = "";

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwv, zza> implements zzfje {
        private zza() {
            super(zzdwv.zzmjp);
        }

        /* synthetic */ zza(zzdww zzdwwVar) {
            this();
        }
    }

    static {
        zzdwv zzdwvVar = new zzdwv();
        zzmjp = zzdwvVar;
        zzdwvVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwvVar.zzpph.zzbkr();
    }

    private zzdwv() {
    }

    public static zzdwv zzak(zzfgs zzfgsVar) throws zzfie {
        return (zzdwv) zzfhu.zza(zzmjp, zzfgsVar);
    }

    public static zzdwv zzbsd() {
        return zzmjp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdww zzdwwVar = null;
        switch (zzdww.zzbbk[i - 1]) {
            case 1:
                return new zzdwv();
            case 2:
                return zzmjp;
            case 3:
                return null;
            case 4:
                return new zza(zzdwwVar);
            case 5:
                zzdwv zzdwvVar = (zzdwv) obj2;
                this.zzmjo = ((zzfhu.zzh) obj).zza(!this.zzmjo.isEmpty(), this.zzmjo, true ^ zzdwvVar.zzmjo.isEmpty(), zzdwvVar.zzmjo);
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
                                    this.zzmjo = zzfhbVar.zzcye();
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
                    synchronized (zzdwv.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmjp);
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
        return zzmjp;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmjo.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmjo);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final String zzbsc() {
        return this.zzmjo;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzq = (this.zzmjo.isEmpty() ? 0 : 0 + zzfhg.zzq(1, this.zzmjo)) + this.zzpph.zzhs();
        this.zzppi = zzq;
        return zzq;
    }
}
