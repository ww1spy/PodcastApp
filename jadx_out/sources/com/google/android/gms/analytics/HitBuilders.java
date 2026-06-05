package com.google.android.gms.analytics;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zzatc;
import com.google.android.gms.internal.zzatt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HitBuilders {

    @Deprecated
    /* loaded from: classes.dex */
    public static class AppViewBuilder extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            set("&t", "screenview");
        }
    }

    /* loaded from: classes.dex */
    public static class EventBuilder extends HitBuilder<EventBuilder> {
        public EventBuilder() {
            set("&t", "event");
        }

        public EventBuilder(String str, String str2) {
            this();
            setCategory(str);
            setAction(str2);
        }

        public EventBuilder setAction(String str) {
            set("&ea", str);
            return this;
        }

        public EventBuilder setCategory(String str) {
            set("&ec", str);
            return this;
        }

        public EventBuilder setLabel(String str) {
            set("&el", str);
            return this;
        }

        public EventBuilder setValue(long j) {
            set("&ev", Long.toString(j));
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class ExceptionBuilder extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder() {
            set("&t", "exception");
        }

        public ExceptionBuilder setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public ExceptionBuilder setFatal(boolean z) {
            set("&exf", zzatt.zzao(z));
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class HitBuilder<T extends HitBuilder> {
        private ProductAction zzdur;
        private Map<String, String> zzduq = new HashMap();
        private Map<String, List<Product>> zzdus = new HashMap();
        private List<Promotion> zzdut = new ArrayList();
        private List<Product> zzduu = new ArrayList();

        protected HitBuilder() {
        }

        private final T zzh(String str, String str2) {
            if (str2 != null) {
                this.zzduq.put(str, str2);
            }
            return this;
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zzatc.zzcz("product should be non-null");
                return this;
            }
            if (str == null) {
                str = "";
            }
            if (!this.zzdus.containsKey(str)) {
                this.zzdus.put(str, new ArrayList());
            }
            this.zzdus.get(str).add(product);
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzatc.zzcz("product should be non-null");
                return this;
            }
            this.zzduu.add(product);
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzatc.zzcz("promotion should be non-null");
                return this;
            }
            this.zzdut.add(promotion);
            return this;
        }

        public Map<String, String> build() {
            HashMap hashMap = new HashMap(this.zzduq);
            if (this.zzdur != null) {
                hashMap.putAll(this.zzdur.build());
            }
            Iterator<Promotion> it = this.zzdut.iterator();
            int i = 1;
            while (it.hasNext()) {
                hashMap.putAll(it.next().zzdx(zzd.zzao(i)));
                i++;
            }
            Iterator<Product> it2 = this.zzduu.iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                hashMap.putAll(it2.next().zzdx(zzd.zzam(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry : this.zzdus.entrySet()) {
                List<Product> value = entry.getValue();
                String zzar = zzd.zzar(i3);
                int i4 = 1;
                for (Product product : value) {
                    String valueOf = String.valueOf(zzar);
                    String valueOf2 = String.valueOf(zzd.zzaq(i4));
                    hashMap.putAll(product.zzdx(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry.getKey())) {
                    String valueOf3 = String.valueOf(zzar);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry.getKey());
                }
                i3++;
            }
            return hashMap;
        }

        protected String get(String str) {
            return this.zzduq.get(str);
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.zzduq.put(str, str2);
                return this;
            }
            zzatc.zzcz("HitBuilder.set() called with a null paramName.");
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map == null) {
                return this;
            }
            this.zzduq.putAll(new HashMap(map));
            return this;
        }

        public T setCampaignParamsFromUrl(String str) {
            String zzep = zzatt.zzep(str);
            if (TextUtils.isEmpty(zzep)) {
                return this;
            }
            Map<String, String> zzen = zzatt.zzen(zzep);
            zzh("&cc", zzen.get("utm_content"));
            zzh("&cm", zzen.get("utm_medium"));
            zzh("&cn", zzen.get("utm_campaign"));
            zzh("&cs", zzen.get("utm_source"));
            zzh("&ck", zzen.get("utm_term"));
            zzh("&ci", zzen.get("utm_id"));
            zzh("&anid", zzen.get("anid"));
            zzh("&gclid", zzen.get("gclid"));
            zzh("&dclid", zzen.get("dclid"));
            zzh("&aclid", zzen.get("aclid"));
            zzh("&gmob_t", zzen.get("gmob_t"));
            return this;
        }

        public T setCustomDimension(int i, String str) {
            set(zzd.zzai(i), str);
            return this;
        }

        public T setCustomMetric(int i, float f) {
            set(zzd.zzak(i), Float.toString(f));
            return this;
        }

        protected T setHitType(String str) {
            set("&t", str);
            return this;
        }

        public T setNewSession() {
            set("&sc", "start");
            return this;
        }

        public T setNonInteraction(boolean z) {
            set("&ni", zzatt.zzao(z));
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.zzdur = productAction;
            return this;
        }

        public T setPromotionAction(String str) {
            this.zzduq.put("&promoa", str);
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class ItemBuilder extends HitBuilder<ItemBuilder> {
        public ItemBuilder() {
            set("&t", "item");
        }

        public ItemBuilder setCategory(String str) {
            set("&iv", str);
            return this;
        }

        public ItemBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public ItemBuilder setName(String str) {
            set("&in", str);
            return this;
        }

        public ItemBuilder setPrice(double d) {
            set("&ip", Double.toString(d));
            return this;
        }

        public ItemBuilder setQuantity(long j) {
            set("&iq", Long.toString(j));
            return this;
        }

        public ItemBuilder setSku(String str) {
            set("&ic", str);
            return this;
        }

        public ItemBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class ScreenViewBuilder extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            set("&t", "screenview");
        }
    }

    /* loaded from: classes.dex */
    public static class SocialBuilder extends HitBuilder<SocialBuilder> {
        public SocialBuilder() {
            set("&t", NotificationCompat.CATEGORY_SOCIAL);
        }

        public SocialBuilder setAction(String str) {
            set("&sa", str);
            return this;
        }

        public SocialBuilder setNetwork(String str) {
            set("&sn", str);
            return this;
        }

        public SocialBuilder setTarget(String str) {
            set("&st", str);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class TimingBuilder extends HitBuilder<TimingBuilder> {
        public TimingBuilder() {
            set("&t", "timing");
        }

        public TimingBuilder(String str, String str2, long j) {
            this();
            setVariable(str2);
            setValue(j);
            setCategory(str);
        }

        public TimingBuilder setCategory(String str) {
            set("&utc", str);
            return this;
        }

        public TimingBuilder setLabel(String str) {
            set("&utl", str);
            return this;
        }

        public TimingBuilder setValue(long j) {
            set("&utt", Long.toString(j));
            return this;
        }

        public TimingBuilder setVariable(String str) {
            set("&utv", str);
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class TransactionBuilder extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder() {
            set("&t", "transaction");
        }

        public TransactionBuilder setAffiliation(String str) {
            set("&ta", str);
            return this;
        }

        public TransactionBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public TransactionBuilder setRevenue(double d) {
            set("&tr", Double.toString(d));
            return this;
        }

        public TransactionBuilder setShipping(double d) {
            set("&ts", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTax(double d) {
            set("&tt", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }
}
