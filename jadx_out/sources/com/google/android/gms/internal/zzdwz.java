package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwl;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwz extends zzfhu<zzdwz, zza> implements zzfje {
    private static volatile zzfjl<zzdwz> zzbbm;
    private static final zzdwz zzmju;
    private String zzmjs = "";
    private zzdwl zzmjt;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwz, zza> implements zzfje {
        private zza() {
            super(zzdwz.zzmju);
        }

        /* synthetic */ zza(zzdxa zzdxaVar) {
            this();
        }
    }

    static {
        zzdwz zzdwzVar = new zzdwz();
        zzmju = zzdwzVar;
        zzdwzVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwzVar.zzpph.zzbkr();
    }

    private zzdwz() {
    }

    public static zzdwz zzam(zzfgs zzfgsVar) throws zzfie {
        return (zzdwz) zzfhu.zza(zzmju, zzfgsVar);
    }

    public static zzdwz zzbsk() {
        return zzmju;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwl.zza zzaVar;
        zzdxa zzdxaVar = null;
        switch (zzdxa.zzbbk[i - 1]) {
            case 1:
                return new zzdwz();
            case 2:
                return zzmju;
            case 3:
                return null;
            case 4:
                return new zza(zzdxaVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwz zzdwzVar = (zzdwz) obj2;
                this.zzmjs = zzhVar.zza(!this.zzmjs.isEmpty(), this.zzmjs, true ^ zzdwzVar.zzmjs.isEmpty(), zzdwzVar.zzmjs);
                this.zzmjt = (zzdwl) zzhVar.zza(this.zzmjt, zzdwzVar.zzmjt);
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
                                    this.zzmjs = zzfhbVar.zzcye();
                                } else if (zzcxx == 18) {
                                    if (this.zzmjt != null) {
                                        zzdwl zzdwlVar = this.zzmjt;
                                        zzfhu.zza zzaVar2 = (zzfhu.zza) zzdwlVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar2.zza((zzfhu.zza) zzdwlVar);
                                        zzaVar = (zzdwl.zza) zzaVar2;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmjt = (zzdwl) zzfhbVar.zza((zzfhb) zzdwl.zzbra(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdwl.zza) this.zzmjt);
                                        this.zzmjt = zzaVar.zzczw();
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
                    synchronized (zzdwz.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmju);
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
        return zzmju;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmjs.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmjs);
        }
        if (this.zzmjt != null) {
            zzfhgVar.zza(2, this.zzmjt == null ? zzdwl.zzbra() : this.zzmjt);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final String zzbsi() {
        return this.zzmjs;
    }

    public final zzdwl zzbsj() {
        return this.zzmjt == null ? zzdwl.zzbra() : this.zzmjt;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzq = this.zzmjs.isEmpty() ? 0 : 0 + zzfhg.zzq(1, this.zzmjs);
        if (this.zzmjt != null) {
            zzq += zzfhg.zzc(2, this.zzmjt == null ? zzdwl.zzbra() : this.zzmjt);
        }
        int zzhs = zzq + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
