package com.google.android.gms.internal;

import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdwn extends zzfhu<zzdwn, zza> implements zzfje {
    private static volatile zzfjl<zzdwn> zzbbm;
    private static final zzdwn zzmja;
    private int zzmix;
    private boolean zzmiy;
    private String zzmiw = "";
    private String zzmid = "";
    private String zzmiz = "";

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu.zza<zzdwn, zza> implements zzfje {
        private zza() {
            super(zzdwn.zzmja);
        }

        /* synthetic */ zza(zzdwo zzdwoVar) {
            this();
        }

        public final zza zzch(boolean z) {
            zzczv();
            ((zzdwn) this.zzppl).zzcg(true);
            return this;
        }

        public final zza zzgq(int i) {
            zzczv();
            ((zzdwn) this.zzppl).zzgp(0);
            return this;
        }

        public final zza zzos(String str) {
            zzczv();
            ((zzdwn) this.zzppl).zzoq(str);
            return this;
        }

        public final zza zzot(String str) {
            zzczv();
            ((zzdwn) this.zzppl).zzoo(str);
            return this;
        }

        public final zza zzou(String str) {
            zzczv();
            ((zzdwn) this.zzppl).zzor(str);
            return this;
        }
    }

    static {
        zzdwn zzdwnVar = new zzdwn();
        zzmja = zzdwnVar;
        zzdwnVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
        zzdwnVar.zzpph.zzbkr();
    }

    private zzdwn() {
    }

    public static zza zzbrg() {
        return (zza) ((zzfhu.zza) zzmja.zza(zzfhu.zzg.zzppy, (Object) null, (Object) null));
    }

    public static zzdwn zzbrh() {
        return zzmja;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzcg(boolean z) {
        this.zzmiy = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgp(int i) {
        this.zzmix = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzoo(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzmid = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzoq(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzmiw = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzor(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzmiz = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfhu
    public final Object zza(int i, Object obj, Object obj2) {
        zzdwo zzdwoVar = null;
        switch (zzdwo.zzbbk[i - 1]) {
            case 1:
                return new zzdwn();
            case 2:
                return zzmja;
            case 3:
                return null;
            case 4:
                return new zza(zzdwoVar);
            case 5:
                zzfhu.zzh zzhVar = (zzfhu.zzh) obj;
                zzdwn zzdwnVar = (zzdwn) obj2;
                this.zzmiw = zzhVar.zza(!this.zzmiw.isEmpty(), this.zzmiw, !zzdwnVar.zzmiw.isEmpty(), zzdwnVar.zzmiw);
                this.zzmid = zzhVar.zza(!this.zzmid.isEmpty(), this.zzmid, !zzdwnVar.zzmid.isEmpty(), zzdwnVar.zzmid);
                this.zzmix = zzhVar.zza(this.zzmix != 0, this.zzmix, zzdwnVar.zzmix != 0, zzdwnVar.zzmix);
                this.zzmiy = zzhVar.zza(this.zzmiy, this.zzmiy, zzdwnVar.zzmiy, zzdwnVar.zzmiy);
                this.zzmiz = zzhVar.zza(!this.zzmiz.isEmpty(), this.zzmiz, true ^ zzdwnVar.zzmiz.isEmpty(), zzdwnVar.zzmiz);
                return this;
            case 6:
                zzfhb zzfhbVar = (zzfhb) obj;
                if (((zzfhm) obj2) != null) {
                    while (!r0) {
                        try {
                            int zzcxx = zzfhbVar.zzcxx();
                            if (zzcxx != 0) {
                                if (zzcxx == 10) {
                                    this.zzmiw = zzfhbVar.zzcye();
                                } else if (zzcxx == 18) {
                                    this.zzmid = zzfhbVar.zzcye();
                                } else if (zzcxx == 24) {
                                    this.zzmix = zzfhbVar.zzcyg();
                                } else if (zzcxx == 32) {
                                    this.zzmiy = zzfhbVar.zzcyd();
                                } else if (zzcxx == 42) {
                                    this.zzmiz = zzfhbVar.zzcye();
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
                    synchronized (zzdwn.class) {
                        if (zzbbm == null) {
                            zzbbm = new zzfhu.zzb(zzmja);
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
        return zzmja;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final void zza(zzfhg zzfhgVar) throws IOException {
        if (!this.zzmiw.isEmpty()) {
            zzfhgVar.zzp(1, this.zzmiw);
        }
        if (!this.zzmid.isEmpty()) {
            zzfhgVar.zzp(2, this.zzmid);
        }
        if (this.zzmix != 0) {
            zzfhgVar.zzae(3, this.zzmix);
        }
        if (this.zzmiy) {
            zzfhgVar.zzl(4, this.zzmiy);
        }
        if (!this.zzmiz.isEmpty()) {
            zzfhgVar.zzp(5, this.zzmiz);
        }
        this.zzpph.zza(zzfhgVar);
    }

    public final String zzbqu() {
        return this.zzmid;
    }

    public final String zzbrc() {
        return this.zzmiw;
    }

    public final int zzbrd() {
        return this.zzmix;
    }

    public final boolean zzbre() {
        return this.zzmiy;
    }

    public final String zzbrf() {
        return this.zzmiz;
    }

    @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
    public final int zzhs() {
        int i = this.zzppi;
        if (i != -1) {
            return i;
        }
        int zzq = this.zzmiw.isEmpty() ? 0 : 0 + zzfhg.zzq(1, this.zzmiw);
        if (!this.zzmid.isEmpty()) {
            zzq += zzfhg.zzq(2, this.zzmid);
        }
        if (this.zzmix != 0) {
            zzq += zzfhg.zzah(3, this.zzmix);
        }
        if (this.zzmiy) {
            zzq += zzfhg.zzm(4, this.zzmiy);
        }
        if (!this.zzmiz.isEmpty()) {
            zzq += zzfhg.zzq(5, this.zzmiz);
        }
        int zzhs = zzq + this.zzpph.zzhs();
        this.zzppi = zzhs;
        return zzhs;
    }
}
