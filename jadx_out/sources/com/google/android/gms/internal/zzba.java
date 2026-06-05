package com.google.android.gms.internal;

import java.io.IOException;
import mobi.beyondpod.downloadengine.IHttpClient;

/* loaded from: classes.dex */
public final class zzba extends zzflm<zzba> {
    public Integer zzej;
    public Integer zzek;
    public Integer zzeq;
    public Integer zzfd;
    public String zzda = null;
    public String zzcu = null;
    public Long zzdb = null;
    private Long zzdc = null;
    public Long zzdd = null;
    public Long zzde = null;
    private Long zzdf = null;
    private Long zzdg = null;
    private Long zzdh = null;
    private Long zzdi = null;
    private Long zzdj = null;
    public Long zzdk = null;
    private String zzdl = null;
    public Long zzdm = null;
    public Long zzdn = null;
    public Long zzdo = null;
    public Long zzdp = null;
    private Long zzdq = null;
    private Long zzdr = null;
    public Long zzds = null;
    public Long zzdt = null;
    public Long zzdu = null;
    public String zzcv = null;
    public String zzdv = null;
    public Long zzdw = null;
    public Long zzdx = null;
    public Long zzdy = null;
    public String zzcx = null;
    public Long zzdz = null;
    public Long zzea = null;
    public Long zzeb = null;
    private zzbd zzec = null;
    public Long zzed = null;
    public Long zzee = null;
    public Long zzef = null;
    public Long zzeg = null;
    public Long zzeh = null;
    public Long zzei = null;
    public String zzcy = null;
    public String zzcz = null;
    public Long zzel = null;
    public Long zzem = null;
    public Long zzen = null;
    private Long zzeo = null;
    private Long zzep = null;
    public zzbb zzer = null;
    public zzbb[] zzes = zzbb.zzr();
    public zzbc zzet = null;
    private Long zzeu = null;
    public Long zzev = null;
    public Long zzew = null;
    public Long zzex = null;
    public Long zzey = null;
    public Long zzez = null;
    private Long zzfa = null;
    private Long zzfb = null;
    public String zzfc = null;
    public Boolean zzfe = null;
    private String zzff = null;
    public Long zzfg = null;
    public zzbf zzfh = null;

    public zzba() {
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:152:0x0227. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzba zza(zzflj zzfljVar) throws IOException {
        int position;
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 10:
                    this.zzda = zzfljVar.readString();
                case 18:
                    this.zzcu = zzfljVar.readString();
                case 24:
                    this.zzdb = Long.valueOf(zzfljVar.zzcyr());
                case 32:
                    this.zzdc = Long.valueOf(zzfljVar.zzcyr());
                case 40:
                    this.zzdd = Long.valueOf(zzfljVar.zzcyr());
                case 48:
                    this.zzde = Long.valueOf(zzfljVar.zzcyr());
                case 56:
                    this.zzdf = Long.valueOf(zzfljVar.zzcyr());
                case 64:
                    this.zzdg = Long.valueOf(zzfljVar.zzcyr());
                case 72:
                    this.zzdh = Long.valueOf(zzfljVar.zzcyr());
                case 80:
                    this.zzdi = Long.valueOf(zzfljVar.zzcyr());
                case 88:
                    this.zzdj = Long.valueOf(zzfljVar.zzcyr());
                case 96:
                    this.zzdk = Long.valueOf(zzfljVar.zzcyr());
                case 106:
                    this.zzdl = zzfljVar.readString();
                case 112:
                    this.zzdm = Long.valueOf(zzfljVar.zzcyr());
                case 120:
                    this.zzdn = Long.valueOf(zzfljVar.zzcyr());
                case 128:
                    this.zzdo = Long.valueOf(zzfljVar.zzcyr());
                case 136:
                    this.zzdp = Long.valueOf(zzfljVar.zzcyr());
                case 144:
                    this.zzdq = Long.valueOf(zzfljVar.zzcyr());
                case 152:
                    this.zzdr = Long.valueOf(zzfljVar.zzcyr());
                case 160:
                    this.zzds = Long.valueOf(zzfljVar.zzcyr());
                case 168:
                    this.zzfb = Long.valueOf(zzfljVar.zzcyr());
                case 176:
                    this.zzdt = Long.valueOf(zzfljVar.zzcyr());
                case 184:
                    this.zzdu = Long.valueOf(zzfljVar.zzcyr());
                case 194:
                    this.zzfc = zzfljVar.readString();
                case 200:
                    this.zzfg = Long.valueOf(zzfljVar.zzcyr());
                case 208:
                    position = zzfljVar.getPosition();
                    int zzcym = zzfljVar.zzcym();
                    switch (zzcym) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.zzfd = Integer.valueOf(zzcym);
                        default:
                            StringBuilder sb = new StringBuilder(44);
                            sb.append(zzcym);
                            sb.append(" is not a valid enum DeviceIdType");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                case 218:
                    this.zzcv = zzfljVar.readString();
                case 224:
                    this.zzfe = Boolean.valueOf(zzfljVar.zzcyd());
                case 234:
                    this.zzdv = zzfljVar.readString();
                case 242:
                    this.zzff = zzfljVar.readString();
                case 248:
                    this.zzdw = Long.valueOf(zzfljVar.zzcyr());
                case 256:
                    this.zzdx = Long.valueOf(zzfljVar.zzcyr());
                case 264:
                    this.zzdy = Long.valueOf(zzfljVar.zzcyr());
                case 274:
                    this.zzcx = zzfljVar.readString();
                case 280:
                    this.zzdz = Long.valueOf(zzfljVar.zzcyr());
                case 288:
                    this.zzea = Long.valueOf(zzfljVar.zzcyr());
                case 296:
                    this.zzeb = Long.valueOf(zzfljVar.zzcyr());
                case 306:
                    if (this.zzec == null) {
                        this.zzec = new zzbd();
                    }
                    zzflsVar = this.zzec;
                    zzfljVar.zza(zzflsVar);
                case 312:
                    this.zzed = Long.valueOf(zzfljVar.zzcyr());
                case 320:
                    this.zzee = Long.valueOf(zzfljVar.zzcyr());
                case 328:
                    this.zzef = Long.valueOf(zzfljVar.zzcyr());
                case 336:
                    this.zzeg = Long.valueOf(zzfljVar.zzcyr());
                case 346:
                    int zzb = zzflv.zzb(zzfljVar, 346);
                    int length = this.zzes == null ? 0 : this.zzes.length;
                    zzbb[] zzbbVarArr = new zzbb[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzes, 0, zzbbVarArr, 0, length);
                    }
                    while (length < zzbbVarArr.length - 1) {
                        zzbbVarArr[length] = new zzbb();
                        zzfljVar.zza(zzbbVarArr[length]);
                        zzfljVar.zzcxx();
                        length++;
                    }
                    zzbbVarArr[length] = new zzbb();
                    zzfljVar.zza(zzbbVarArr[length]);
                    this.zzes = zzbbVarArr;
                case 352:
                    this.zzeh = Long.valueOf(zzfljVar.zzcyr());
                case 360:
                    this.zzei = Long.valueOf(zzfljVar.zzcyr());
                case 370:
                    this.zzcy = zzfljVar.readString();
                case 378:
                    this.zzcz = zzfljVar.readString();
                case 384:
                    zzfljVar.getPosition();
                    this.zzej = Integer.valueOf(zzaz.zzd(zzfljVar.zzcym()));
                case 392:
                    zzfljVar.getPosition();
                    this.zzek = Integer.valueOf(zzaz.zzd(zzfljVar.zzcym()));
                case IHttpClient.SC_PAYMENT_REQUIRED /* 402 */:
                    if (this.zzer == null) {
                        this.zzer = new zzbb();
                    }
                    zzflsVar = this.zzer;
                    zzfljVar.zza(zzflsVar);
                case IHttpClient.SC_REQUEST_TIMEOUT /* 408 */:
                    this.zzel = Long.valueOf(zzfljVar.zzcyr());
                case IHttpClient.SC_REQUESTED_RANGE_NOT_SATISFIABLE /* 416 */:
                    this.zzem = Long.valueOf(zzfljVar.zzcyr());
                case IHttpClient.SC_FAILED_DEPENDENCY /* 424 */:
                    this.zzen = Long.valueOf(zzfljVar.zzcyr());
                case 432:
                    this.zzeo = Long.valueOf(zzfljVar.zzcyr());
                case 440:
                    this.zzep = Long.valueOf(zzfljVar.zzcyr());
                case 448:
                    position = zzfljVar.getPosition();
                    try {
                        this.zzeq = Integer.valueOf(zzaz.zzd(zzfljVar.zzcym()));
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                    }
                case 458:
                    if (this.zzet == null) {
                        this.zzet = new zzbc();
                    }
                    zzflsVar = this.zzet;
                    zzfljVar.zza(zzflsVar);
                case 464:
                    this.zzeu = Long.valueOf(zzfljVar.zzcyr());
                case 472:
                    this.zzev = Long.valueOf(zzfljVar.zzcyr());
                case 480:
                    this.zzew = Long.valueOf(zzfljVar.zzcyr());
                case 488:
                    this.zzex = Long.valueOf(zzfljVar.zzcyr());
                case 496:
                    this.zzey = Long.valueOf(zzfljVar.zzcyr());
                case IHttpClient.SC_GATEWAY_TIMEOUT /* 504 */:
                    this.zzez = Long.valueOf(zzfljVar.zzcyr());
                case 512:
                    this.zzfa = Long.valueOf(zzfljVar.zzcyr());
                case 1610:
                    if (this.zzfh == null) {
                        this.zzfh = new zzbf();
                    }
                    zzflsVar = this.zzfh;
                    zzfljVar.zza(zzflsVar);
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzda != null) {
            zzflkVar.zzp(1, this.zzda);
        }
        if (this.zzcu != null) {
            zzflkVar.zzp(2, this.zzcu);
        }
        if (this.zzdb != null) {
            zzflkVar.zzf(3, this.zzdb.longValue());
        }
        if (this.zzdc != null) {
            zzflkVar.zzf(4, this.zzdc.longValue());
        }
        if (this.zzdd != null) {
            zzflkVar.zzf(5, this.zzdd.longValue());
        }
        if (this.zzde != null) {
            zzflkVar.zzf(6, this.zzde.longValue());
        }
        if (this.zzdf != null) {
            zzflkVar.zzf(7, this.zzdf.longValue());
        }
        if (this.zzdg != null) {
            zzflkVar.zzf(8, this.zzdg.longValue());
        }
        if (this.zzdh != null) {
            zzflkVar.zzf(9, this.zzdh.longValue());
        }
        if (this.zzdi != null) {
            zzflkVar.zzf(10, this.zzdi.longValue());
        }
        if (this.zzdj != null) {
            zzflkVar.zzf(11, this.zzdj.longValue());
        }
        if (this.zzdk != null) {
            zzflkVar.zzf(12, this.zzdk.longValue());
        }
        if (this.zzdl != null) {
            zzflkVar.zzp(13, this.zzdl);
        }
        if (this.zzdm != null) {
            zzflkVar.zzf(14, this.zzdm.longValue());
        }
        if (this.zzdn != null) {
            zzflkVar.zzf(15, this.zzdn.longValue());
        }
        if (this.zzdo != null) {
            zzflkVar.zzf(16, this.zzdo.longValue());
        }
        if (this.zzdp != null) {
            zzflkVar.zzf(17, this.zzdp.longValue());
        }
        if (this.zzdq != null) {
            zzflkVar.zzf(18, this.zzdq.longValue());
        }
        if (this.zzdr != null) {
            zzflkVar.zzf(19, this.zzdr.longValue());
        }
        if (this.zzds != null) {
            zzflkVar.zzf(20, this.zzds.longValue());
        }
        if (this.zzfb != null) {
            zzflkVar.zzf(21, this.zzfb.longValue());
        }
        if (this.zzdt != null) {
            zzflkVar.zzf(22, this.zzdt.longValue());
        }
        if (this.zzdu != null) {
            zzflkVar.zzf(23, this.zzdu.longValue());
        }
        if (this.zzfc != null) {
            zzflkVar.zzp(24, this.zzfc);
        }
        if (this.zzfg != null) {
            zzflkVar.zzf(25, this.zzfg.longValue());
        }
        if (this.zzfd != null) {
            zzflkVar.zzad(26, this.zzfd.intValue());
        }
        if (this.zzcv != null) {
            zzflkVar.zzp(27, this.zzcv);
        }
        if (this.zzfe != null) {
            zzflkVar.zzl(28, this.zzfe.booleanValue());
        }
        if (this.zzdv != null) {
            zzflkVar.zzp(29, this.zzdv);
        }
        if (this.zzff != null) {
            zzflkVar.zzp(30, this.zzff);
        }
        if (this.zzdw != null) {
            zzflkVar.zzf(31, this.zzdw.longValue());
        }
        if (this.zzdx != null) {
            zzflkVar.zzf(32, this.zzdx.longValue());
        }
        if (this.zzdy != null) {
            zzflkVar.zzf(33, this.zzdy.longValue());
        }
        if (this.zzcx != null) {
            zzflkVar.zzp(34, this.zzcx);
        }
        if (this.zzdz != null) {
            zzflkVar.zzf(35, this.zzdz.longValue());
        }
        if (this.zzea != null) {
            zzflkVar.zzf(36, this.zzea.longValue());
        }
        if (this.zzeb != null) {
            zzflkVar.zzf(37, this.zzeb.longValue());
        }
        if (this.zzec != null) {
            zzflkVar.zza(38, this.zzec);
        }
        if (this.zzed != null) {
            zzflkVar.zzf(39, this.zzed.longValue());
        }
        if (this.zzee != null) {
            zzflkVar.zzf(40, this.zzee.longValue());
        }
        if (this.zzef != null) {
            zzflkVar.zzf(41, this.zzef.longValue());
        }
        if (this.zzeg != null) {
            zzflkVar.zzf(42, this.zzeg.longValue());
        }
        if (this.zzes != null && this.zzes.length > 0) {
            for (int i = 0; i < this.zzes.length; i++) {
                zzbb zzbbVar = this.zzes[i];
                if (zzbbVar != null) {
                    zzflkVar.zza(43, zzbbVar);
                }
            }
        }
        if (this.zzeh != null) {
            zzflkVar.zzf(44, this.zzeh.longValue());
        }
        if (this.zzei != null) {
            zzflkVar.zzf(45, this.zzei.longValue());
        }
        if (this.zzcy != null) {
            zzflkVar.zzp(46, this.zzcy);
        }
        if (this.zzcz != null) {
            zzflkVar.zzp(47, this.zzcz);
        }
        if (this.zzej != null) {
            zzflkVar.zzad(48, this.zzej.intValue());
        }
        if (this.zzek != null) {
            zzflkVar.zzad(49, this.zzek.intValue());
        }
        if (this.zzer != null) {
            zzflkVar.zza(50, this.zzer);
        }
        if (this.zzel != null) {
            zzflkVar.zzf(51, this.zzel.longValue());
        }
        if (this.zzem != null) {
            zzflkVar.zzf(52, this.zzem.longValue());
        }
        if (this.zzen != null) {
            zzflkVar.zzf(53, this.zzen.longValue());
        }
        if (this.zzeo != null) {
            zzflkVar.zzf(54, this.zzeo.longValue());
        }
        if (this.zzep != null) {
            zzflkVar.zzf(55, this.zzep.longValue());
        }
        if (this.zzeq != null) {
            zzflkVar.zzad(56, this.zzeq.intValue());
        }
        if (this.zzet != null) {
            zzflkVar.zza(57, this.zzet);
        }
        if (this.zzeu != null) {
            zzflkVar.zzf(58, this.zzeu.longValue());
        }
        if (this.zzev != null) {
            zzflkVar.zzf(59, this.zzev.longValue());
        }
        if (this.zzew != null) {
            zzflkVar.zzf(60, this.zzew.longValue());
        }
        if (this.zzex != null) {
            zzflkVar.zzf(61, this.zzex.longValue());
        }
        if (this.zzey != null) {
            zzflkVar.zzf(62, this.zzey.longValue());
        }
        if (this.zzez != null) {
            zzflkVar.zzf(63, this.zzez.longValue());
        }
        if (this.zzfa != null) {
            zzflkVar.zzf(64, this.zzfa.longValue());
        }
        if (this.zzfh != null) {
            zzflkVar.zza(IHttpClient.SC_CREATED, this.zzfh);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    protected final int zzq() {
        int zzq = super.zzq();
        if (this.zzda != null) {
            zzq += zzflk.zzq(1, this.zzda);
        }
        if (this.zzcu != null) {
            zzq += zzflk.zzq(2, this.zzcu);
        }
        if (this.zzdb != null) {
            zzq += zzflk.zzc(3, this.zzdb.longValue());
        }
        if (this.zzdc != null) {
            zzq += zzflk.zzc(4, this.zzdc.longValue());
        }
        if (this.zzdd != null) {
            zzq += zzflk.zzc(5, this.zzdd.longValue());
        }
        if (this.zzde != null) {
            zzq += zzflk.zzc(6, this.zzde.longValue());
        }
        if (this.zzdf != null) {
            zzq += zzflk.zzc(7, this.zzdf.longValue());
        }
        if (this.zzdg != null) {
            zzq += zzflk.zzc(8, this.zzdg.longValue());
        }
        if (this.zzdh != null) {
            zzq += zzflk.zzc(9, this.zzdh.longValue());
        }
        if (this.zzdi != null) {
            zzq += zzflk.zzc(10, this.zzdi.longValue());
        }
        if (this.zzdj != null) {
            zzq += zzflk.zzc(11, this.zzdj.longValue());
        }
        if (this.zzdk != null) {
            zzq += zzflk.zzc(12, this.zzdk.longValue());
        }
        if (this.zzdl != null) {
            zzq += zzflk.zzq(13, this.zzdl);
        }
        if (this.zzdm != null) {
            zzq += zzflk.zzc(14, this.zzdm.longValue());
        }
        if (this.zzdn != null) {
            zzq += zzflk.zzc(15, this.zzdn.longValue());
        }
        if (this.zzdo != null) {
            zzq += zzflk.zzc(16, this.zzdo.longValue());
        }
        if (this.zzdp != null) {
            zzq += zzflk.zzc(17, this.zzdp.longValue());
        }
        if (this.zzdq != null) {
            zzq += zzflk.zzc(18, this.zzdq.longValue());
        }
        if (this.zzdr != null) {
            zzq += zzflk.zzc(19, this.zzdr.longValue());
        }
        if (this.zzds != null) {
            zzq += zzflk.zzc(20, this.zzds.longValue());
        }
        if (this.zzfb != null) {
            zzq += zzflk.zzc(21, this.zzfb.longValue());
        }
        if (this.zzdt != null) {
            zzq += zzflk.zzc(22, this.zzdt.longValue());
        }
        if (this.zzdu != null) {
            zzq += zzflk.zzc(23, this.zzdu.longValue());
        }
        if (this.zzfc != null) {
            zzq += zzflk.zzq(24, this.zzfc);
        }
        if (this.zzfg != null) {
            zzq += zzflk.zzc(25, this.zzfg.longValue());
        }
        if (this.zzfd != null) {
            zzq += zzflk.zzag(26, this.zzfd.intValue());
        }
        if (this.zzcv != null) {
            zzq += zzflk.zzq(27, this.zzcv);
        }
        if (this.zzfe != null) {
            this.zzfe.booleanValue();
            zzq += zzflk.zzlw(28) + 1;
        }
        if (this.zzdv != null) {
            zzq += zzflk.zzq(29, this.zzdv);
        }
        if (this.zzff != null) {
            zzq += zzflk.zzq(30, this.zzff);
        }
        if (this.zzdw != null) {
            zzq += zzflk.zzc(31, this.zzdw.longValue());
        }
        if (this.zzdx != null) {
            zzq += zzflk.zzc(32, this.zzdx.longValue());
        }
        if (this.zzdy != null) {
            zzq += zzflk.zzc(33, this.zzdy.longValue());
        }
        if (this.zzcx != null) {
            zzq += zzflk.zzq(34, this.zzcx);
        }
        if (this.zzdz != null) {
            zzq += zzflk.zzc(35, this.zzdz.longValue());
        }
        if (this.zzea != null) {
            zzq += zzflk.zzc(36, this.zzea.longValue());
        }
        if (this.zzeb != null) {
            zzq += zzflk.zzc(37, this.zzeb.longValue());
        }
        if (this.zzec != null) {
            zzq += zzflk.zzb(38, this.zzec);
        }
        if (this.zzed != null) {
            zzq += zzflk.zzc(39, this.zzed.longValue());
        }
        if (this.zzee != null) {
            zzq += zzflk.zzc(40, this.zzee.longValue());
        }
        if (this.zzef != null) {
            zzq += zzflk.zzc(41, this.zzef.longValue());
        }
        if (this.zzeg != null) {
            zzq += zzflk.zzc(42, this.zzeg.longValue());
        }
        if (this.zzes != null && this.zzes.length > 0) {
            for (int i = 0; i < this.zzes.length; i++) {
                zzbb zzbbVar = this.zzes[i];
                if (zzbbVar != null) {
                    zzq += zzflk.zzb(43, zzbbVar);
                }
            }
        }
        if (this.zzeh != null) {
            zzq += zzflk.zzc(44, this.zzeh.longValue());
        }
        if (this.zzei != null) {
            zzq += zzflk.zzc(45, this.zzei.longValue());
        }
        if (this.zzcy != null) {
            zzq += zzflk.zzq(46, this.zzcy);
        }
        if (this.zzcz != null) {
            zzq += zzflk.zzq(47, this.zzcz);
        }
        if (this.zzej != null) {
            zzq += zzflk.zzag(48, this.zzej.intValue());
        }
        if (this.zzek != null) {
            zzq += zzflk.zzag(49, this.zzek.intValue());
        }
        if (this.zzer != null) {
            zzq += zzflk.zzb(50, this.zzer);
        }
        if (this.zzel != null) {
            zzq += zzflk.zzc(51, this.zzel.longValue());
        }
        if (this.zzem != null) {
            zzq += zzflk.zzc(52, this.zzem.longValue());
        }
        if (this.zzen != null) {
            zzq += zzflk.zzc(53, this.zzen.longValue());
        }
        if (this.zzeo != null) {
            zzq += zzflk.zzc(54, this.zzeo.longValue());
        }
        if (this.zzep != null) {
            zzq += zzflk.zzc(55, this.zzep.longValue());
        }
        if (this.zzeq != null) {
            zzq += zzflk.zzag(56, this.zzeq.intValue());
        }
        if (this.zzet != null) {
            zzq += zzflk.zzb(57, this.zzet);
        }
        if (this.zzeu != null) {
            zzq += zzflk.zzc(58, this.zzeu.longValue());
        }
        if (this.zzev != null) {
            zzq += zzflk.zzc(59, this.zzev.longValue());
        }
        if (this.zzew != null) {
            zzq += zzflk.zzc(60, this.zzew.longValue());
        }
        if (this.zzex != null) {
            zzq += zzflk.zzc(61, this.zzex.longValue());
        }
        if (this.zzey != null) {
            zzq += zzflk.zzc(62, this.zzey.longValue());
        }
        if (this.zzez != null) {
            zzq += zzflk.zzc(63, this.zzez.longValue());
        }
        if (this.zzfa != null) {
            zzq += zzflk.zzc(64, this.zzfa.longValue());
        }
        return this.zzfh != null ? zzq + zzflk.zzb(IHttpClient.SC_CREATED, this.zzfh) : zzq;
    }
}
