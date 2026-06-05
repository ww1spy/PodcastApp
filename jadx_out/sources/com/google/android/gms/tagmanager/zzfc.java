package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbi;
import com.google.android.gms.internal.zzdkh;
import com.google.android.gms.internal.zzdkj;
import com.google.android.gms.internal.zzdkl;
import com.google.android.gms.internal.zzdkn;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfc {
    private static final zzea<com.google.android.gms.internal.zzbt> zzksk = new zzea<>(zzgk.zzbil(), true);
    private final DataLayer zzknd;
    private final zzdkl zzksl;
    private final zzbo zzksm;
    private final Map<String, zzbr> zzksn;
    private final Map<String, zzbr> zzkso;
    private final Map<String, zzbr> zzksp;
    private final zzp<zzdkj, zzea<com.google.android.gms.internal.zzbt>> zzksq;
    private final zzp<String, zzfi> zzksr;
    private final Set<zzdkn> zzkss;
    private final Map<String, zzfj> zzkst;
    private volatile String zzksu;
    private int zzksv;

    public zzfc(Context context, zzdkl zzdklVar, DataLayer dataLayer, zzan zzanVar, zzan zzanVar2, zzbo zzboVar) {
        if (zzdklVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.zzksl = zzdklVar;
        this.zzkss = new HashSet(zzdklVar.zzbkb());
        this.zzknd = dataLayer;
        this.zzksm = zzboVar;
        zzfd zzfdVar = new zzfd(this);
        new zzq();
        this.zzksq = zzq.zza(1048576, zzfdVar);
        zzfe zzfeVar = new zzfe(this);
        new zzq();
        this.zzksr = zzq.zza(1048576, zzfeVar);
        this.zzksn = new HashMap();
        zzb(new zzm(context));
        zzb(new zzam(zzanVar2));
        zzb(new zzaz(dataLayer));
        zzb(new zzgl(context, dataLayer));
        this.zzkso = new HashMap();
        zzc(new zzak());
        zzc(new zzbl());
        zzc(new zzbm());
        zzc(new zzbt());
        zzc(new zzbu());
        zzc(new zzdf());
        zzc(new zzdg());
        zzc(new zzem());
        zzc(new zzfz());
        this.zzksp = new HashMap();
        zza(new zze(context));
        zza(new zzf(context));
        zza(new zzh(context));
        zza(new zzi(context));
        zza(new zzj(context));
        zza(new zzk(context));
        zza(new zzl(context));
        zza(new zzt());
        zza(new zzaj(this.zzksl.getVersion()));
        zza(new zzam(zzanVar));
        zza(new zzas(dataLayer));
        zza(new zzbc(context));
        zza(new zzbd());
        zza(new zzbk());
        zza(new zzbp(this));
        zza(new zzbv());
        zza(new zzbw());
        zza(new zzcw(context));
        zza(new zzcy());
        zza(new zzde());
        zza(new zzdl());
        zza(new zzdn(context));
        zza(new zzeb());
        zza(new zzef());
        zza(new zzej());
        zza(new zzel());
        zza(new zzen(context));
        zza(new zzfk());
        zza(new zzfl());
        zza(new zzgf());
        zza(new zzgm());
        this.zzkst = new HashMap();
        for (zzdkn zzdknVar : this.zzkss) {
            for (int i = 0; i < zzdknVar.zzbkz().size(); i++) {
                zzdkj zzdkjVar = zzdknVar.zzbkz().get(i);
                zzfj zzg = zzg(this.zzkst, zza(zzdkjVar));
                zzg.zza(zzdknVar);
                zzg.zza(zzdknVar, zzdkjVar);
                zzg.zza(zzdknVar, "Unknown");
            }
            for (int i2 = 0; i2 < zzdknVar.zzbla().size(); i2++) {
                zzdkj zzdkjVar2 = zzdknVar.zzbla().get(i2);
                zzfj zzg2 = zzg(this.zzkst, zza(zzdkjVar2));
                zzg2.zza(zzdknVar);
                zzg2.zzb(zzdknVar, zzdkjVar2);
                zzg2.zzb(zzdknVar, "Unknown");
            }
        }
        for (Map.Entry<String, List<zzdkj>> entry : this.zzksl.zzbkx().entrySet()) {
            for (zzdkj zzdkjVar3 : entry.getValue()) {
                if (!zzgk.zzh(zzdkjVar3.zzbkd().get(zzbi.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                    zzg(this.zzkst, entry.getKey()).zzb(zzdkjVar3);
                }
            }
        }
    }

    private final zzea<com.google.android.gms.internal.zzbt> zza(com.google.android.gms.internal.zzbt zzbtVar, Set<String> set, zzgn zzgnVar) {
        if (!zzbtVar.zzyu) {
            return new zzea<>(zzbtVar, true);
        }
        int i = zzbtVar.type;
        if (i == 7) {
            com.google.android.gms.internal.zzbt zzl = zzdkh.zzl(zzbtVar);
            zzl.zzys = new com.google.android.gms.internal.zzbt[zzbtVar.zzys.length];
            for (int i2 = 0; i2 < zzbtVar.zzys.length; i2++) {
                zzea<com.google.android.gms.internal.zzbt> zza = zza(zzbtVar.zzys[i2], set, zzgnVar.zzfd(i2));
                if (zza == zzksk) {
                    return zzksk;
                }
                zzl.zzys[i2] = zza.getObject();
            }
            return new zzea<>(zzl, false);
        }
        switch (i) {
            case 2:
                com.google.android.gms.internal.zzbt zzl2 = zzdkh.zzl(zzbtVar);
                zzl2.zzyl = new com.google.android.gms.internal.zzbt[zzbtVar.zzyl.length];
                for (int i3 = 0; i3 < zzbtVar.zzyl.length; i3++) {
                    zzea<com.google.android.gms.internal.zzbt> zza2 = zza(zzbtVar.zzyl[i3], set, zzgnVar.zzfa(i3));
                    if (zza2 == zzksk) {
                        return zzksk;
                    }
                    zzl2.zzyl[i3] = zza2.getObject();
                }
                return new zzea<>(zzl2, false);
            case 3:
                com.google.android.gms.internal.zzbt zzl3 = zzdkh.zzl(zzbtVar);
                if (zzbtVar.zzym.length != zzbtVar.zzyn.length) {
                    String valueOf = String.valueOf(zzbtVar.toString());
                    zzdj.e(valueOf.length() != 0 ? "Invalid serving value: ".concat(valueOf) : new String("Invalid serving value: "));
                    return zzksk;
                }
                zzl3.zzym = new com.google.android.gms.internal.zzbt[zzbtVar.zzym.length];
                zzl3.zzyn = new com.google.android.gms.internal.zzbt[zzbtVar.zzym.length];
                for (int i4 = 0; i4 < zzbtVar.zzym.length; i4++) {
                    zzea<com.google.android.gms.internal.zzbt> zza3 = zza(zzbtVar.zzym[i4], set, zzgnVar.zzfb(i4));
                    zzea<com.google.android.gms.internal.zzbt> zza4 = zza(zzbtVar.zzyn[i4], set, zzgnVar.zzfc(i4));
                    if (zza3 == zzksk || zza4 == zzksk) {
                        return zzksk;
                    }
                    zzl3.zzym[i4] = zza3.getObject();
                    zzl3.zzyn[i4] = zza4.getObject();
                }
                return new zzea<>(zzl3, false);
            case 4:
                if (!set.contains(zzbtVar.zzyo)) {
                    set.add(zzbtVar.zzyo);
                    zzea<com.google.android.gms.internal.zzbt> zza5 = zzgo.zza(zza(zzbtVar.zzyo, set, zzgnVar.zzbhc()), zzbtVar.zzyt);
                    set.remove(zzbtVar.zzyo);
                    return zza5;
                }
                String str = zzbtVar.zzyo;
                String obj = set.toString();
                StringBuilder sb = new StringBuilder(79 + String.valueOf(str).length() + String.valueOf(obj).length());
                sb.append("Macro cycle detected.  Current macro reference: ");
                sb.append(str);
                sb.append(".  Previous macro references: ");
                sb.append(obj);
                sb.append(".");
                zzdj.e(sb.toString());
                return zzksk;
            default:
                int i5 = zzbtVar.type;
                StringBuilder sb2 = new StringBuilder(25);
                sb2.append("Unknown type: ");
                sb2.append(i5);
                zzdj.e(sb2.toString());
                return zzksk;
        }
    }

    private final zzea<Boolean> zza(zzdkj zzdkjVar, Set<String> set, zzeo zzeoVar) {
        zzea<com.google.android.gms.internal.zzbt> zza = zza(this.zzkso, zzdkjVar, set, zzeoVar);
        Boolean zzh = zzgk.zzh(zza.getObject());
        zzeoVar.zza(zzgk.zzam(zzh));
        return new zzea<>(zzh, zza.zzbhd());
    }

    private final zzea<Boolean> zza(zzdkn zzdknVar, Set<String> set, zzer zzerVar) {
        Iterator<zzdkj> it = zzdknVar.zzbkg().iterator();
        while (true) {
            boolean z = true;
            while (it.hasNext()) {
                zzea<Boolean> zza = zza(it.next(), set, zzerVar.zzbgv());
                if (zza.getObject().booleanValue()) {
                    zzerVar.zzc(zzgk.zzam(false));
                    return new zzea<>(false, zza.zzbhd());
                }
                if (!z || !zza.zzbhd()) {
                    z = false;
                }
            }
            Iterator<zzdkj> it2 = zzdknVar.zzbkf().iterator();
            while (it2.hasNext()) {
                zzea<Boolean> zza2 = zza(it2.next(), set, zzerVar.zzbgw());
                if (!zza2.getObject().booleanValue()) {
                    zzerVar.zzc(zzgk.zzam(false));
                    return new zzea<>(false, zza2.zzbhd());
                }
                z = z && zza2.zzbhd();
            }
            zzerVar.zzc(zzgk.zzam(true));
            return new zzea<>(true, z);
        }
    }

    private final zzea<com.google.android.gms.internal.zzbt> zza(String str, Set<String> set, zzdm zzdmVar) {
        zzdkj next;
        this.zzksv++;
        zzfi zzfiVar = this.zzksr.get(str);
        if (zzfiVar != null) {
            this.zzksm.zzbgo();
            zza(zzfiVar.zzbhr(), set);
            this.zzksv--;
            return zzfiVar.zzbhq();
        }
        zzfj zzfjVar = this.zzkst.get(str);
        if (zzfjVar == null) {
            String zzbhp = zzbhp();
            StringBuilder sb = new StringBuilder(15 + String.valueOf(zzbhp).length() + String.valueOf(str).length());
            sb.append(zzbhp);
            sb.append("Invalid macro: ");
            sb.append(str);
            zzdj.e(sb.toString());
            this.zzksv--;
            return zzksk;
        }
        zzea<Set<zzdkj>> zza = zza(str, zzfjVar.zzbhs(), zzfjVar.zzbht(), zzfjVar.zzbhu(), zzfjVar.zzbhw(), zzfjVar.zzbhv(), set, zzdmVar.zzbgd());
        if (zza.getObject().isEmpty()) {
            next = zzfjVar.zzbhx();
        } else {
            if (zza.getObject().size() > 1) {
                String zzbhp2 = zzbhp();
                StringBuilder sb2 = new StringBuilder(37 + String.valueOf(zzbhp2).length() + String.valueOf(str).length());
                sb2.append(zzbhp2);
                sb2.append("Multiple macros active for macroName ");
                sb2.append(str);
                zzdj.zzcz(sb2.toString());
            }
            next = zza.getObject().iterator().next();
        }
        if (next == null) {
            this.zzksv--;
            return zzksk;
        }
        zzea<com.google.android.gms.internal.zzbt> zza2 = zza(this.zzksp, next, set, zzdmVar.zzbgu());
        zzea<com.google.android.gms.internal.zzbt> zzeaVar = zza2 == zzksk ? zzksk : new zzea<>(zza2.getObject(), zza.zzbhd() && zza2.zzbhd());
        com.google.android.gms.internal.zzbt zzbhr = next.zzbhr();
        if (zzeaVar.zzbhd()) {
            this.zzksr.zzf(str, new zzfi(zzeaVar, zzbhr));
        }
        zza(zzbhr, set);
        this.zzksv--;
        return zzeaVar;
    }

    private final zzea<Set<zzdkj>> zza(String str, Set<zzdkn> set, Map<zzdkn, List<zzdkj>> map, Map<zzdkn, List<String>> map2, Map<zzdkn, List<zzdkj>> map3, Map<zzdkn, List<String>> map4, Set<String> set2, zzfb zzfbVar) {
        return zza(set, set2, new zzff(this, map, map2, map3, map4), zzfbVar);
    }

    private final zzea<com.google.android.gms.internal.zzbt> zza(Map<String, zzbr> map, zzdkj zzdkjVar, Set<String> set, zzeo zzeoVar) {
        String sb;
        com.google.android.gms.internal.zzbt zzbtVar = zzdkjVar.zzbkd().get(zzbi.FUNCTION.toString());
        if (zzbtVar == null) {
            sb = "No function id in properties";
        } else {
            String str = zzbtVar.zzyp;
            zzbr zzbrVar = map.get(str);
            if (zzbrVar == null) {
                sb = String.valueOf(str).concat(" has no backing implementation.");
            } else {
                zzea<com.google.android.gms.internal.zzbt> zzeaVar = this.zzksq.get(zzdkjVar);
                if (zzeaVar != null) {
                    this.zzksm.zzbgo();
                    return zzeaVar;
                }
                HashMap hashMap = new HashMap();
                boolean z = true;
                for (Map.Entry<String, com.google.android.gms.internal.zzbt> entry : zzdkjVar.zzbkd().entrySet()) {
                    zzea<com.google.android.gms.internal.zzbt> zza = zza(entry.getValue(), set, zzeoVar.zzlz(entry.getKey()).zzb(entry.getValue()));
                    if (zza == zzksk) {
                        return zzksk;
                    }
                    if (zza.zzbhd()) {
                        zzdkjVar.zza(entry.getKey(), zza.getObject());
                    } else {
                        z = false;
                    }
                    hashMap.put(entry.getKey(), zza.getObject());
                }
                if (zzbrVar.zzd(hashMap.keySet())) {
                    boolean z2 = z && zzbrVar.zzbfh();
                    zzea<com.google.android.gms.internal.zzbt> zzeaVar2 = new zzea<>(zzbrVar.zzx(hashMap), z2);
                    if (z2) {
                        this.zzksq.zzf(zzdkjVar, zzeaVar2);
                    }
                    zzeoVar.zza(zzeaVar2.getObject());
                    return zzeaVar2;
                }
                String valueOf = String.valueOf(zzbrVar.zzbgq());
                String valueOf2 = String.valueOf(hashMap.keySet());
                StringBuilder sb2 = new StringBuilder(43 + String.valueOf(str).length() + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length());
                sb2.append("Incorrect keys for function ");
                sb2.append(str);
                sb2.append(" required ");
                sb2.append(valueOf);
                sb2.append(" had ");
                sb2.append(valueOf2);
                sb = sb2.toString();
            }
        }
        zzdj.e(sb);
        return zzksk;
    }

    private final zzea<Set<zzdkj>> zza(Set<zzdkn> set, Set<String> set2, zzfh zzfhVar, zzfb zzfbVar) {
        boolean z;
        Set<zzdkj> hashSet = new HashSet<>();
        Set<zzdkj> hashSet2 = new HashSet<>();
        while (true) {
            for (zzdkn zzdknVar : set) {
                zzer zzbhb = zzfbVar.zzbhb();
                zzea<Boolean> zza = zza(zzdknVar, set2, zzbhb);
                if (zza.getObject().booleanValue()) {
                    zzfhVar.zza(zzdknVar, hashSet, hashSet2, zzbhb);
                }
                z = z && zza.zzbhd();
            }
            hashSet.removeAll(hashSet2);
            zzfbVar.zze(hashSet);
            return new zzea<>(hashSet, z);
        }
    }

    private static String zza(zzdkj zzdkjVar) {
        return zzgk.zzd(zzdkjVar.zzbkd().get(zzbi.INSTANCE_NAME.toString()));
    }

    private final void zza(com.google.android.gms.internal.zzbt zzbtVar, Set<String> set) {
        zzea<com.google.android.gms.internal.zzbt> zza;
        if (zzbtVar == null || (zza = zza(zzbtVar, set, new zzdy())) == zzksk) {
            return;
        }
        Object zzi = zzgk.zzi(zza.getObject());
        if (zzi instanceof Map) {
            this.zzknd.push((Map) zzi);
            return;
        }
        if (!(zzi instanceof List)) {
            zzdj.zzcz("pushAfterEvaluate: value not a Map or List");
            return;
        }
        for (Object obj : (List) zzi) {
            if (obj instanceof Map) {
                this.zzknd.push((Map) obj);
            } else {
                zzdj.zzcz("pushAfterEvaluate: value not a Map");
            }
        }
    }

    private final void zza(zzbr zzbrVar) {
        zza(this.zzksp, zzbrVar);
    }

    private static void zza(Map<String, zzbr> map, zzbr zzbrVar) {
        if (map.containsKey(zzbrVar.zzbgp())) {
            String valueOf = String.valueOf(zzbrVar.zzbgp());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate function type name: ".concat(valueOf) : new String("Duplicate function type name: "));
        }
        map.put(zzbrVar.zzbgp(), zzbrVar);
    }

    private final void zzb(zzbr zzbrVar) {
        zza(this.zzksn, zzbrVar);
    }

    private final String zzbhp() {
        if (this.zzksv <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.zzksv));
        for (int i = 2; i < this.zzksv; i++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    private final void zzc(zzbr zzbrVar) {
        zza(this.zzkso, zzbrVar);
    }

    private static zzfj zzg(Map<String, zzfj> map, String str) {
        zzfj zzfjVar = map.get(str);
        if (zzfjVar != null) {
            return zzfjVar;
        }
        zzfj zzfjVar2 = new zzfj();
        map.put(str, zzfjVar2);
        return zzfjVar2;
    }

    private final synchronized void zzmd(String str) {
        this.zzksu = str;
    }

    public final synchronized void zzan(List<com.google.android.gms.internal.zzbr> list) {
        for (com.google.android.gms.internal.zzbr zzbrVar : list) {
            if (zzbrVar.name != null && zzbrVar.name.startsWith("gaExperiment:")) {
                zzbq.zza(this.zzknd, zzbrVar);
            }
            String valueOf = String.valueOf(zzbrVar);
            StringBuilder sb = new StringBuilder(22 + String.valueOf(valueOf).length());
            sb.append("Ignored supplemental: ");
            sb.append(valueOf);
            zzdj.v(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized String zzbho() {
        return this.zzksu;
    }

    public final synchronized void zzlj(String str) {
        zzmd(str);
        zzar zzbgn = this.zzksm.zzlt(str).zzbgn();
        Iterator<zzdkj> it = zza(this.zzkss, new HashSet(), new zzfg(this), zzbgn.zzbgd()).getObject().iterator();
        while (it.hasNext()) {
            zza(this.zzksn, it.next(), new HashSet(), zzbgn.zzbgc());
        }
        zzmd(null);
    }

    public final zzea<com.google.android.gms.internal.zzbt> zzmc(String str) {
        this.zzksv = 0;
        return zza(str, new HashSet(), this.zzksm.zzls(str).zzbgm());
    }
}
