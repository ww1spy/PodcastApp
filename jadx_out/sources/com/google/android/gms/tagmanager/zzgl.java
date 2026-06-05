package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
/* loaded from: classes.dex */
public final class zzgl extends zzgi {
    private static final String ID = zzbh.UNIVERSAL_ANALYTICS.toString();
    private static final String zzkut = zzbi.ACCOUNT.toString();
    private static final String zzkuu = zzbi.ANALYTICS_PASS_THROUGH.toString();
    private static final String zzkuv = zzbi.ENABLE_ECOMMERCE.toString();
    private static final String zzkuw = zzbi.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String zzkux = zzbi.ECOMMERCE_MACRO_DATA.toString();
    private static final String zzkuy = zzbi.ANALYTICS_FIELDS.toString();
    private static final String zzkuz = zzbi.TRACK_TRANSACTION.toString();
    private static final String zzkva = zzbi.TRANSACTION_DATALAYER_MAP.toString();
    private static final String zzkvb = zzbi.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> zzkvc = Arrays.asList(ProductAction.ACTION_DETAIL, ProductAction.ACTION_CHECKOUT, ProductAction.ACTION_CHECKOUT_OPTION, "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern zzkvd = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzkve = Pattern.compile("metric(\\d+)");
    private static Map<String, String> zzkvf;
    private static Map<String, String> zzkvg;
    private final DataLayer zzknd;
    private final Set<String> zzkvh;
    private final zzgg zzkvi;

    public zzgl(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new zzgg(context));
    }

    private zzgl(Context context, DataLayer dataLayer, zzgg zzggVar) {
        super(ID, new String[0]);
        this.zzknd = dataLayer;
        this.zzkvi = zzggVar;
        this.zzkvh = new HashSet();
        this.zzkvh.add("");
        this.zzkvh.add(NotificationPreferences.NO);
        this.zzkvh.add("false");
    }

    private final void zza(Tracker tracker, Map<String, com.google.android.gms.internal.zzbt> map) {
        Map<String, String> map2;
        Map<String, String> map3;
        String zzmk = zzmk("transactionId");
        if (zzmk == null) {
            zzdj.e("Cannot find transactionId in data layer.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            Map<String, String> zzk = zzk(map.get(zzkuy));
            zzk.put("&t", "transaction");
            com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkva);
            if (zzbtVar != null) {
                map2 = zzj(zzbtVar);
            } else {
                if (zzkvf == null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("transactionId", "&ti");
                    hashMap.put("transactionAffiliation", "&ta");
                    hashMap.put("transactionTax", "&tt");
                    hashMap.put("transactionShipping", "&ts");
                    hashMap.put("transactionTotal", "&tr");
                    hashMap.put("transactionCurrency", "&cu");
                    zzkvf = hashMap;
                }
                map2 = zzkvf;
            }
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                zzd(zzk, entry.getValue(), zzmk(entry.getKey()));
            }
            arrayList.add(zzk);
            List<Map<String, String>> zzml = zzml("transactionProducts");
            if (zzml != null) {
                for (Map<String, String> map4 : zzml) {
                    if (map4.get("name") == null) {
                        zzdj.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map<String, String> zzk2 = zzk(map.get(zzkuy));
                    zzk2.put("&t", "item");
                    zzk2.put("&ti", zzmk);
                    com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkvb);
                    if (zzbtVar2 != null) {
                        map3 = zzj(zzbtVar2);
                    } else {
                        if (zzkvg == null) {
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put("name", "&in");
                            hashMap2.put("sku", "&ic");
                            hashMap2.put("category", "&iv");
                            hashMap2.put("price", "&ip");
                            hashMap2.put("quantity", "&iq");
                            hashMap2.put("currency", "&cu");
                            zzkvg = hashMap2;
                        }
                        map3 = zzkvg;
                    }
                    for (Map.Entry<String, String> entry2 : map3.entrySet()) {
                        zzd(zzk2, entry2.getValue(), map4.get(entry2.getKey()));
                    }
                    arrayList.add(zzk2);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                tracker.send((Map) obj);
            }
        } catch (IllegalArgumentException e) {
            zzdj.zzb("Unable to send transaction", e);
        }
    }

    private static Product zzac(Map<String, Object> map) {
        String str;
        String valueOf;
        String str2;
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        Object obj2 = map.get("name");
        if (obj2 != null) {
            product.setName(String.valueOf(obj2));
        }
        Object obj3 = map.get("brand");
        if (obj3 != null) {
            product.setBrand(String.valueOf(obj3));
        }
        Object obj4 = map.get("category");
        if (obj4 != null) {
            product.setCategory(String.valueOf(obj4));
        }
        Object obj5 = map.get("variant");
        if (obj5 != null) {
            product.setVariant(String.valueOf(obj5));
        }
        Object obj6 = map.get("coupon");
        if (obj6 != null) {
            product.setCouponCode(String.valueOf(obj6));
        }
        Object obj7 = map.get("position");
        if (obj7 != null) {
            product.setPosition(zzar(obj7).intValue());
        }
        Object obj8 = map.get("price");
        if (obj8 != null) {
            product.setPrice(zzaq(obj8).doubleValue());
        }
        Object obj9 = map.get("quantity");
        if (obj9 != null) {
            product.setQuantity(zzar(obj9).intValue());
        }
        for (String str3 : map.keySet()) {
            Matcher matcher = zzkvd.matcher(str3);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str3)));
                } catch (NumberFormatException unused) {
                    str = "illegal number in custom dimension value: ";
                    valueOf = String.valueOf(str3);
                    if (valueOf.length() == 0) {
                        str2 = new String("illegal number in custom dimension value: ");
                        zzdj.zzcz(str2);
                    }
                    str2 = str.concat(valueOf);
                    zzdj.zzcz(str2);
                }
            } else {
                Matcher matcher2 = zzkve.matcher(str3);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), zzar(map.get(str3)).intValue());
                    } catch (NumberFormatException unused2) {
                        str = "illegal number in custom metric value: ";
                        valueOf = String.valueOf(str3);
                        if (valueOf.length() == 0) {
                            str2 = new String("illegal number in custom metric value: ");
                            zzdj.zzcz(str2);
                        }
                        str2 = str.concat(valueOf);
                        zzdj.zzcz(str2);
                    }
                }
            }
        }
        return product;
    }

    private static Double zzaq(Object obj) {
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf) : new String("Cannot convert the object to Double: "));
            }
        }
        if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
        if (obj instanceof Double) {
            return (Double) obj;
        }
        String valueOf2 = String.valueOf(obj.toString());
        throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf2) : new String("Cannot convert the object to Double: "));
    }

    private static Integer zzar(Object obj) {
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf) : new String("Cannot convert the object to Integer: "));
            }
        }
        if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        String valueOf2 = String.valueOf(obj.toString());
        throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf2) : new String("Cannot convert the object to Integer: "));
    }

    private static void zzd(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private static boolean zzh(Map<String, com.google.android.gms.internal.zzbt> map, String str) {
        com.google.android.gms.internal.zzbt zzbtVar = map.get(str);
        if (zzbtVar == null) {
            return false;
        }
        return zzgk.zzh(zzbtVar).booleanValue();
    }

    private static Map<String, String> zzj(com.google.android.gms.internal.zzbt zzbtVar) {
        Object zzi = zzgk.zzi(zzbtVar);
        if (!(zzi instanceof Map)) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) zzi).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private final Map<String, String> zzk(com.google.android.gms.internal.zzbt zzbtVar) {
        Map<String, String> zzj;
        if (zzbtVar != null && (zzj = zzj(zzbtVar)) != null) {
            String str = zzj.get("&aip");
            if (str != null && this.zzkvh.contains(str.toLowerCase())) {
                zzj.remove("&aip");
            }
            return zzj;
        }
        return new HashMap();
    }

    private final String zzmk(String str) {
        Object obj = this.zzknd.get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    private final List<Map<String, String>> zzml(String str) {
        Object obj = this.zzknd.get(str);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof List)) {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        }
        List<Map<String, String>> list = (List) obj;
        Iterator<Map<String, String>> it = list.iterator();
        while (it.hasNext()) {
            if (!(it.next() instanceof Map)) {
                throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
            }
        }
        return list;
    }

    @Override // com.google.android.gms.tagmanager.zzgi, com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ boolean zzbfh() {
        return super.zzbfh();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ String zzbgp() {
        return super.zzbgp();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ Set zzbgq() {
        return super.zzbgq();
    }

    @Override // com.google.android.gms.tagmanager.zzgi, com.google.android.gms.tagmanager.zzbr
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.zzbt zzx(Map map) {
        return super.zzx(map);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r8v27 java.lang.Object, still in use, count: 2, list:
          (r8v27 java.lang.Object) from 0x003e: INSTANCE_OF (r8v27 java.lang.Object) A[WRAPPED] java.util.Map
          (r8v27 java.lang.Object) from 0x0053: PHI (r8v8 java.lang.Object) = (r8v7 java.lang.Object), (r8v27 java.lang.Object) binds: [B:147:0x0051, B:6:0x0040] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017b  */
    @Override // com.google.android.gms.tagmanager.zzgi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzz(java.util.Map<java.lang.String, com.google.android.gms.internal.zzbt> r8) {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzgl.zzz(java.util.Map):void");
    }
}
