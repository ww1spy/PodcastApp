package com.google.android.gms.internal;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzaqr extends com.google.android.gms.analytics.zzi<zzaqr> {
    private ProductAction zzdur;
    private final List<Product> zzduu = new ArrayList();
    private final List<Promotion> zzdut = new ArrayList();
    private final Map<String, List<Product>> zzdus = new HashMap();

    public final String toString() {
        HashMap hashMap = new HashMap();
        if (!this.zzduu.isEmpty()) {
            hashMap.put("products", this.zzduu);
        }
        if (!this.zzdut.isEmpty()) {
            hashMap.put("promotions", this.zzdut);
        }
        if (!this.zzdus.isEmpty()) {
            hashMap.put("impressions", this.zzdus);
        }
        hashMap.put("productAction", this.zzdur);
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqr zzaqrVar) {
        zzaqr zzaqrVar2 = zzaqrVar;
        zzaqrVar2.zzduu.addAll(this.zzduu);
        zzaqrVar2.zzdut.addAll(this.zzdut);
        for (Map.Entry<String, List<Product>> entry : this.zzdus.entrySet()) {
            String key = entry.getKey();
            for (Product product : entry.getValue()) {
                if (product != null) {
                    String str = key == null ? "" : key;
                    if (!zzaqrVar2.zzdus.containsKey(str)) {
                        zzaqrVar2.zzdus.put(str, new ArrayList());
                    }
                    zzaqrVar2.zzdus.get(str).add(product);
                }
            }
        }
        if (this.zzdur != null) {
            zzaqrVar2.zzdur = this.zzdur;
        }
    }

    public final ProductAction zzwz() {
        return this.zzdur;
    }

    public final List<Product> zzxa() {
        return Collections.unmodifiableList(this.zzduu);
    }

    public final Map<String, List<Product>> zzxb() {
        return this.zzdus;
    }

    public final List<Promotion> zzxc() {
        return Collections.unmodifiableList(this.zzdut);
    }
}
