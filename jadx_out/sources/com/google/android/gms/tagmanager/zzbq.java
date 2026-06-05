package com.google.android.gms.tagmanager;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbq {
    private static void zza(DataLayer dataLayer, com.google.android.gms.internal.zzbn zzbnVar) {
        String str;
        for (com.google.android.gms.internal.zzbm zzbmVar : zzbnVar.zzws) {
            if (zzbmVar.key == null) {
                str = "GaExperimentRandom: No key";
            } else {
                Object obj = dataLayer.get(zzbmVar.key);
                Long valueOf = !(obj instanceof Number) ? null : Long.valueOf(((Number) obj).longValue());
                long j = zzbmVar.zzwm;
                long j2 = zzbmVar.zzwn;
                if (!zzbmVar.zzwo || valueOf == null || valueOf.longValue() < j || valueOf.longValue() > j2) {
                    if (j <= j2) {
                        obj = Long.valueOf(Math.round((Math.random() * (j2 - j)) + j));
                    } else {
                        str = "GaExperimentRandom: random range invalid";
                    }
                }
                dataLayer.zzlm(zzbmVar.key);
                Map<String, Object> zzn = DataLayer.zzn(zzbmVar.key, obj);
                if (zzbmVar.zzwp > 0) {
                    if (zzn.containsKey("gtm")) {
                        Object obj2 = zzn.get("gtm");
                        if (obj2 instanceof Map) {
                            ((Map) obj2).put("lifetime", Long.valueOf(zzbmVar.zzwp));
                        } else {
                            zzdj.zzcz("GaExperimentRandom: gtm not a map");
                        }
                    } else {
                        zzn.put("gtm", DataLayer.mapOf("lifetime", Long.valueOf(zzbmVar.zzwp)));
                    }
                }
                dataLayer.push(zzn);
            }
            zzdj.zzcz(str);
        }
    }

    public static void zza(DataLayer dataLayer, com.google.android.gms.internal.zzbr zzbrVar) {
        Map<String, Object> map;
        if (zzbrVar.zzyg == null) {
            zzdj.zzcz("supplemental missing experimentSupplemental");
            return;
        }
        for (com.google.android.gms.internal.zzbt zzbtVar : zzbrVar.zzyg.zzwr) {
            dataLayer.zzlm(zzgk.zzd(zzbtVar));
        }
        for (com.google.android.gms.internal.zzbt zzbtVar2 : zzbrVar.zzyg.zzwq) {
            Object zzi = zzgk.zzi(zzbtVar2);
            if (zzi instanceof Map) {
                map = (Map) zzi;
            } else {
                String valueOf = String.valueOf(zzi);
                StringBuilder sb = new StringBuilder(36 + String.valueOf(valueOf).length());
                sb.append("value: ");
                sb.append(valueOf);
                sb.append(" is not a map value, ignored.");
                zzdj.zzcz(sb.toString());
                map = null;
            }
            if (map != null) {
                dataLayer.push(map);
            }
        }
        zza(dataLayer, zzbrVar.zzyg);
    }
}
