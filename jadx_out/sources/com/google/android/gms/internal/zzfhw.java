package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfhw extends zzfhu<zzfhw, zza> implements zzfje {
    private static volatile zzfjl<zzfhw> zzbbm;
    private static final zzfhw zzpqj;
    private int zzpqi;

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzfhw, zza> implements zzfje {
        private zza() {
            super(zzfhw.zzpqj);
        }

        /* synthetic */ zza(zzfhx zzfhxVar) {
            this();
        }

        public final zza zzmj(int i) {
            zzczv();
            ((zzfhw) this.zzppl).setValue(i);
            return this;
        }
    }

    static {
        zzfhw zzfhwVar = new zzfhw();
        zzpqj = zzfhwVar;
        zzfhwVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzfhwVar.zzpph.zzbkr();
    }

    private zzfhw() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setValue(int i) {
        this.zzpqi = i;
    }

    public static zza zzdaa() {
        return (zza) ((zzfhu.zza) zzpqj.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzfhw zzdab() {
        return zzpqj;
    }

    public final int getValue() {
        return this.zzpqi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        boolean zzb;
        zzfhx zzfhxVar = null;
        switch (zzfhx.zzbbk[i - 1]) {
            case 1:
                return new zzfhw();
            case 2:
                return zzpqj;
            case 3:
                return null;
            case 4:
                return new zza(zzfhxVar);
            case 5:
                zzfhw zzfhwVar = (zzfhw) obj2;
                this.zzpqi = ((zzfhu.zzh) obj).zza(this.zzpqi != 0, this.zzpqi, zzfhwVar.zzpqi != 0, zzfhwVar.zzpqi);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    boolean z = false;
                    while (!z) {
                        try {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx != 0) {
                                    if (zzcxx != 8) {
                                        if ((zzcxx & 7) == 4) {
                                            zzb = false;
                                        } else {
                                            if (this.zzpph == zzfko.zzdca()) {
                                                this.zzpph = zzfko.zzdcb();
                                            }
                                            zzb = this.zzpph.zzb(zzcxx, zzfhbVar);
                                        }
                                        if (!zzb) {
                                        }
                                    } else {
                                        this.zzpqi = zzfhbVar.zzcya();
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
                    synchronized (zzfhw.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzpqj);
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
        return zzpqj;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (this.zzpqi != 0) {
            zzfhgVar.zzad(1, this.zzpqi);
        }
        this.zzpph.zza(zzfhgVar);
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzag = (this.zzpqi != 0 ? 0 + zzfhg.zzag(1, this.zzpqi) : 0) + this.zzpph.zzhs();
        this.zzppi = zzag;
        return zzag;
    }
}
