package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzaql;
import com.google.android.gms.internal.zzaqm;
import com.google.android.gms.internal.zzaqn;
import com.google.android.gms.internal.zzaqo;
import com.google.android.gms.internal.zzaqp;
import com.google.android.gms.internal.zzaqq;
import com.google.android.gms.internal.zzaqr;
import com.google.android.gms.internal.zzaqs;
import com.google.android.gms.internal.zzaqt;
import com.google.android.gms.internal.zzaqu;
import com.google.android.gms.internal.zzaqv;
import com.google.android.gms.internal.zzaqw;
import com.google.android.gms.internal.zzaqx;
import com.google.android.gms.internal.zzarh;
import com.google.android.gms.internal.zzarj;
import com.google.android.gms.internal.zzark;
import com.google.android.gms.internal.zzarn;
import com.google.android.gms.internal.zzasy;
import com.google.android.gms.internal.zzatt;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mobi.beyondpod.evo.BuildConfig;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
/* loaded from: classes.dex */
public final class zzb extends zzarh implements zzo {
    private static DecimalFormat zzdua;
    private final zzark zzdtw;
    private final String zzdub;
    private final Uri zzduc;

    public zzb(zzark zzarkVar, String str) {
        this(zzarkVar, str, true, false);
    }

    private zzb(zzark zzarkVar, String str, boolean z, boolean z2) {
        super(zzarkVar);
        zzbq.zzgv(str);
        this.zzdtw = zzarkVar;
        this.zzdub = str;
        this.zzduc = zzdl(this.zzdub);
    }

    private static void zza(Map<String, String> map, String str, double d) {
        if (d != 0.0d) {
            map.put(str, zzb(d));
        }
    }

    private static void zza(Map<String, String> map, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        map.put(str, sb.toString());
    }

    private static void zza(Map<String, String> map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    private static void zza(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, NotificationPreferences.YES);
        }
    }

    @Hide
    private static String zzb(double d) {
        if (zzdua == null) {
            zzdua = new DecimalFormat("0.######");
        }
        return zzdua.format(d);
    }

    @Hide
    private static Map<String, String> zzc(zzg zzgVar) {
        HashMap hashMap = new HashMap();
        zzaqp zzaqpVar = (zzaqp) zzgVar.zza(zzaqp.class);
        if (zzaqpVar != null) {
            for (Map.Entry<String, Object> entry : zzaqpVar.zzwy().entrySet()) {
                Object value = entry.getValue();
                String str = null;
                if (value != null) {
                    if (value instanceof String) {
                        String str2 = (String) value;
                        if (!TextUtils.isEmpty(str2)) {
                            str = str2;
                        }
                    } else if (value instanceof Double) {
                        Double d = (Double) value;
                        if (d.doubleValue() != 0.0d) {
                            str = zzb(d.doubleValue());
                        }
                    } else if (!(value instanceof Boolean)) {
                        str = String.valueOf(value);
                    } else if (value != Boolean.FALSE) {
                        str = NotificationPreferences.YES;
                    }
                }
                if (str != null) {
                    hashMap.put(entry.getKey(), str);
                }
            }
        }
        zzaqu zzaquVar = (zzaqu) zzgVar.zza(zzaqu.class);
        if (zzaquVar != null) {
            zza(hashMap, "t", zzaquVar.zzxd());
            zza(hashMap, "cid", zzaquVar.zzxe());
            zza(hashMap, "uid", zzaquVar.getUserId());
            zza(hashMap, "sc", zzaquVar.zzxh());
            zza(hashMap, "sf", zzaquVar.zzxj());
            zza(hashMap, "ni", zzaquVar.zzxi());
            zza(hashMap, "adid", zzaquVar.zzxf());
            zza(hashMap, "ate", zzaquVar.zzxg());
        }
        zzaqv zzaqvVar = (zzaqv) zzgVar.zza(zzaqv.class);
        if (zzaqvVar != null) {
            zza(hashMap, "cd", zzaqvVar.zzxk());
            zza(hashMap, "a", zzaqvVar.zzxl());
            zza(hashMap, "dr", zzaqvVar.zzxm());
        }
        zzaqs zzaqsVar = (zzaqs) zzgVar.zza(zzaqs.class);
        if (zzaqsVar != null) {
            zza(hashMap, "ec", zzaqsVar.getCategory());
            zza(hashMap, "ea", zzaqsVar.getAction());
            zza(hashMap, "el", zzaqsVar.getLabel());
            zza(hashMap, "ev", zzaqsVar.getValue());
        }
        zzaqm zzaqmVar = (zzaqm) zzgVar.zza(zzaqm.class);
        if (zzaqmVar != null) {
            zza(hashMap, "cn", zzaqmVar.getName());
            zza(hashMap, "cs", zzaqmVar.getSource());
            zza(hashMap, "cm", zzaqmVar.zzwq());
            zza(hashMap, "ck", zzaqmVar.zzwr());
            zza(hashMap, "cc", zzaqmVar.getContent());
            zza(hashMap, "ci", zzaqmVar.getId());
            zza(hashMap, "anid", zzaqmVar.zzws());
            zza(hashMap, "gclid", zzaqmVar.zzwt());
            zza(hashMap, "dclid", zzaqmVar.zzwu());
            zza(hashMap, "aclid", zzaqmVar.zzwv());
        }
        zzaqt zzaqtVar = (zzaqt) zzgVar.zza(zzaqt.class);
        if (zzaqtVar != null) {
            zza(hashMap, "exd", zzaqtVar.zzdxh);
            zza(hashMap, "exf", zzaqtVar.zzdxi);
        }
        zzaqw zzaqwVar = (zzaqw) zzgVar.zza(zzaqw.class);
        if (zzaqwVar != null) {
            zza(hashMap, "sn", zzaqwVar.zzdxw);
            zza(hashMap, "sa", zzaqwVar.zzdxe);
            zza(hashMap, "st", zzaqwVar.zzdxx);
        }
        zzaqx zzaqxVar = (zzaqx) zzgVar.zza(zzaqx.class);
        if (zzaqxVar != null) {
            zza(hashMap, "utv", zzaqxVar.zzdxy);
            zza(hashMap, "utt", zzaqxVar.zzdxz);
            zza(hashMap, "utc", zzaqxVar.mCategory);
            zza(hashMap, "utl", zzaqxVar.zzdxf);
        }
        zzaqn zzaqnVar = (zzaqn) zzgVar.zza(zzaqn.class);
        if (zzaqnVar != null) {
            for (Map.Entry<Integer, String> entry2 : zzaqnVar.zzww().entrySet()) {
                String zzaj = zzd.zzaj(entry2.getKey().intValue());
                if (!TextUtils.isEmpty(zzaj)) {
                    hashMap.put(zzaj, entry2.getValue());
                }
            }
        }
        zzaqo zzaqoVar = (zzaqo) zzgVar.zza(zzaqo.class);
        if (zzaqoVar != null) {
            for (Map.Entry<Integer, Double> entry3 : zzaqoVar.zzwx().entrySet()) {
                String zzal = zzd.zzal(entry3.getKey().intValue());
                if (!TextUtils.isEmpty(zzal)) {
                    hashMap.put(zzal, zzb(entry3.getValue().doubleValue()));
                }
            }
        }
        zzaqr zzaqrVar = (zzaqr) zzgVar.zza(zzaqr.class);
        if (zzaqrVar != null) {
            ProductAction zzwz = zzaqrVar.zzwz();
            if (zzwz != null) {
                for (Map.Entry<String, String> entry4 : zzwz.build().entrySet()) {
                    hashMap.put(entry4.getKey().startsWith("&") ? entry4.getKey().substring(1) : entry4.getKey(), entry4.getValue());
                }
            }
            Iterator<Promotion> it = zzaqrVar.zzxc().iterator();
            int i = 1;
            while (it.hasNext()) {
                hashMap.putAll(it.next().zzdx(zzd.zzap(i)));
                i++;
            }
            Iterator<Product> it2 = zzaqrVar.zzxa().iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                hashMap.putAll(it2.next().zzdx(zzd.zzan(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry5 : zzaqrVar.zzxb().entrySet()) {
                List<Product> value2 = entry5.getValue();
                String zzas = zzd.zzas(i3);
                int i4 = 1;
                for (Product product : value2) {
                    String valueOf = String.valueOf(zzas);
                    String valueOf2 = String.valueOf(zzd.zzaq(i4));
                    hashMap.putAll(product.zzdx(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry5.getKey())) {
                    String valueOf3 = String.valueOf(zzas);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry5.getKey());
                }
                i3++;
            }
        }
        zzaqq zzaqqVar = (zzaqq) zzgVar.zza(zzaqq.class);
        if (zzaqqVar != null) {
            zza(hashMap, "ul", zzaqqVar.getLanguage());
            zza(hashMap, BuildConfig.FLAVOR, zzaqqVar.zzdxb);
            zza(hashMap, "sr", zzaqqVar.zzcly, zzaqqVar.zzclz);
            zza(hashMap, "vp", zzaqqVar.zzdxc, zzaqqVar.zzdxd);
        }
        zzaql zzaqlVar = (zzaql) zzgVar.zza(zzaql.class);
        if (zzaqlVar != null) {
            zza(hashMap, "an", zzaqlVar.zzwn());
            zza(hashMap, "aid", zzaqlVar.getAppId());
            zza(hashMap, "aiid", zzaqlVar.zzwp());
            zza(hashMap, "av", zzaqlVar.zzwo());
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri zzdl(String str) {
        zzbq.zzgv(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    @Override // com.google.android.gms.analytics.zzo
    public final void zzb(zzg zzgVar) {
        zzbq.checkNotNull(zzgVar);
        zzbq.checkArgument(zzgVar.zzwb(), "Can't deliver not submitted measurement");
        zzbq.zzgw("deliver should be called on worker thread");
        zzg zzvx = zzgVar.zzvx();
        zzaqu zzaquVar = (zzaqu) zzvx.zzb(zzaqu.class);
        if (TextUtils.isEmpty(zzaquVar.zzxd())) {
            zzxy().zzf(zzc(zzvx), "Ignoring measurement without type");
            return;
        }
        if (TextUtils.isEmpty(zzaquVar.zzxe())) {
            zzxy().zzf(zzc(zzvx), "Ignoring measurement without client id");
            return;
        }
        if (this.zzdtw.zzyn().getAppOptOut()) {
            return;
        }
        double zzxj = zzaquVar.zzxj();
        if (zzatt.zza(zzxj, zzaquVar.zzxe())) {
            zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(zzxj));
            return;
        }
        Map<String, String> zzc = zzc(zzvx);
        zzc.put("v", NotificationPreferences.YES);
        zzc.put("_v", zzarj.zzdyr);
        zzc.put("tid", this.zzdub);
        if (this.zzdtw.zzyn().isDryRunEnabled()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : zzc.entrySet()) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(entry.getKey());
                sb.append("=");
                sb.append(entry.getValue());
            }
            zzc("Dry run is enabled. GoogleAnalytics would have sent", sb.toString());
            return;
        }
        HashMap hashMap = new HashMap();
        zzatt.zzb(hashMap, "uid", zzaquVar.getUserId());
        zzaql zzaqlVar = (zzaql) zzgVar.zza(zzaql.class);
        if (zzaqlVar != null) {
            zzatt.zzb(hashMap, "an", zzaqlVar.zzwn());
            zzatt.zzb(hashMap, "aid", zzaqlVar.getAppId());
            zzatt.zzb(hashMap, "av", zzaqlVar.zzwo());
            zzatt.zzb(hashMap, "aiid", zzaqlVar.zzwp());
        }
        zzc.put("_s", String.valueOf(zzyc().zza(new zzarn(0L, zzaquVar.zzxe(), this.zzdub, !TextUtils.isEmpty(zzaquVar.zzxf()), 0L, hashMap))));
        zzyc().zza(new zzasy(zzxy(), zzc, zzgVar.zzvz(), true));
    }

    @Override // com.google.android.gms.analytics.zzo
    public final Uri zzvu() {
        return this.zzduc;
    }
}
