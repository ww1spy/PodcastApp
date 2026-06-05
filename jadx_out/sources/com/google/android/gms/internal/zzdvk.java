package com.google.android.gms.internal;

import com.google.android.gms.internal.zzdwl;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdvk extends zzfhu<zzdvk, zza> implements zzfje {
    private static volatile zzfjl<zzdvk> zzbbm;
    private static final zzdvk zzmgt;
    private zzdwl zzmgs;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdvk, zza> implements zzfje {
        private zza() {
            super(zzdvk.zzmgt);
        }

        /* synthetic */ zza(zzdvl zzdvlVar) {
            this();
        }
    }

    static {
        zzdvk zzdvkVar = new zzdvk();
        zzmgt = zzdvkVar;
        zzdvkVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdvkVar.zzpph.zzbkr();
    }

    private zzdvk() {
    }

    public static zzdvk zzbpo() {
        return zzmgt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwl.zza zzaVar;
        zzdvl zzdvlVar = null;
        switch (zzdvl.zzbbk[i - 1]) {
            case 1:
                return new zzdvk();
            case 2:
                return zzmgt;
            case 3:
                return null;
            case 4:
                return new zza(zzdvlVar);
            case 5:
                this.zzmgs = (zzdwl) ((zzfhu.zzh) obj).zza(this.zzmgs, ((zzdvk) obj2).zzmgs);
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
                                if (zzcxx == 18) {
                                    if (this.zzmgs != null) {
                                        zzdwl zzdwlVar = this.zzmgs;
                                        zzfhu.zza zzaVar2 = (zzfhu.zza) zzdwlVar.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null);
                                        zzaVar2.zza((zzfhu.zza) zzdwlVar);
                                        zzaVar = (zzdwl.zza) zzaVar2;
                                    } else {
                                        zzaVar = null;
                                    }
                                    this.zzmgs = (zzdwl) zzfhbVar.zza((zzfhb) zzdwl.zzbra(), zzfhmVar);
                                    if (zzaVar != null) {
                                        zzaVar.zza((zzdwl.zza) this.zzmgs);
                                        this.zzmgs = zzaVar.zzczw();
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
                    synchronized (zzdvk.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmgt);
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
        return zzmgt;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzmgs != null) {
            zzfhgVar.zza(2, this.zzmgs == null ? zzdwl.zzbra() : this.zzmgs);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final zzdwl zzbpn() {
        return this.zzmgs == null ? zzdwl.zzbra() : this.zzmgs;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (this.zzmgs != null) {
            i2 = 0 + zzfhg.zzc(2, this.zzmgs == null ? zzdwl.zzbra() : this.zzmgs);
        }
        int zzhs = i2 + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
