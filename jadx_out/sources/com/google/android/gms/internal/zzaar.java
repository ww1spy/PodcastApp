package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.js.JavascriptEngineFactory;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaar extends zzzw<zzaar> {
    private static boolean zzcqk = false;
    private static com.google.android.gms.ads.internal.js.zzn zzcql;
    private final Context mContext;
    private final Object mLock = new Object();
    private final zzala zzarg;
    private String zzarn;
    private final zzcv zzbyz;
    private final com.google.android.gms.ads.internal.zzbb zzcpw;
    private JavascriptEngineFactory zzcqh;
    private zzalt<zzaof> zzcqi;
    private final com.google.android.gms.ads.internal.gmsg.zzz zzcqm;
    private final zzqa zzcqn;
    private static final long zzcqj = TimeUnit.SECONDS.toMillis(60);
    private static final Object sLock = new Object();

    public zzaar(Context context, com.google.android.gms.ads.internal.zzbb zzbbVar, String str, zzcv zzcvVar, zzala zzalaVar) {
        zzahw.zzcy("Webview loading for native ads.");
        this.mContext = context;
        this.zzcpw = zzbbVar;
        this.zzbyz = zzcvVar;
        this.zzarg = zzalaVar;
        this.zzarn = str;
        this.zzcqh = new JavascriptEngineFactory();
        com.google.android.gms.ads.internal.zzbt.zzem();
        zzalt<zzaof> zza = zzaol.zza(this.mContext, this.zzarg, (String) zzlc.zzio().zzd(zzoi.zzbsi), this.zzbyz, this.zzcpw.zzbo());
        this.zzcqm = new com.google.android.gms.ads.internal.gmsg.zzz(this.mContext);
        this.zzcqn = new zzqa(zzbbVar, str);
        this.zzcqi = zzali.zza(zza, new zzald(this) { // from class: com.google.android.gms.internal.zzaas
            private final zzaar zzcqo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcqo = this;
            }

            @Override // com.google.android.gms.internal.zzald
            public final zzalt zzc(Object obj) {
                return this.zzcqo.zzg((zzaof) obj);
            }
        }, zzaly.zzdju);
        zzalg.zza(this.zzcqi, "WebViewNativeAdsUtil.constructor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzalt zza(JSONObject jSONObject, zzaof zzaofVar) throws Exception {
        jSONObject.put("ads_id", this.zzarn);
        zzaofVar.zzb("google.afma.nativeAds.handleImpressionPing", jSONObject);
        return zzali.zzh(new JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzaof zzaofVar, zzzx zzzxVar, zzamd zzamdVar, zzaof zzaofVar2, Map map) {
        boolean z;
        JSONObject jSONObject;
        try {
            String str = (String) map.get("success");
            String str2 = (String) map.get("failure");
            if (TextUtils.isEmpty(str2)) {
                z = true;
                jSONObject = new JSONObject(str);
            } else {
                jSONObject = new JSONObject(str2);
                z = false;
            }
            if (this.zzarn.equals(jSONObject.optString("ads_id", ""))) {
                zzaofVar.zzb("/nativeAdPreProcess", zzzxVar.zzcov);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("success", z);
                jSONObject2.put("json", jSONObject);
                zzamdVar.set(jSONObject2);
            }
        } catch (Throwable th) {
            zzahw.zzb("Error while preprocessing json.", th);
            zzamdVar.setException(th);
        }
    }

    @Override // com.google.android.gms.internal.zzzw, com.google.android.gms.internal.zzaan
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt zztVar) {
        zzali.zza(this.zzcqi, new zzaax(this, str, zztVar), zzaly.zzdjt);
    }

    @Override // com.google.android.gms.internal.zzaan
    public final void zza(String str, JSONObject jSONObject) {
        zzali.zza(this.zzcqi, new zzaaz(this, str, jSONObject), zzaly.zzdjt);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzalt zzb(JSONObject jSONObject, zzaof zzaofVar) throws Exception {
        jSONObject.put("ads_id", this.zzarn);
        zzaofVar.zzb("google.afma.nativeAds.handleClickGmsg", jSONObject);
        return zzali.zzh(new JSONObject());
    }

    @Override // com.google.android.gms.internal.zzzw, com.google.android.gms.internal.zzaan
    public final void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt zztVar) {
        zzali.zza(this.zzcqi, new zzaay(this, str, zztVar), zzaly.zzdjt);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzalt zzc(JSONObject jSONObject, final zzaof zzaofVar) throws Exception {
        jSONObject.put("ads_id", this.zzarn);
        final zzamd zzamdVar = new zzamd();
        final zzzx zzzxVar = new zzzx();
        com.google.android.gms.ads.internal.gmsg.zzt<? super zzaof> zztVar = new com.google.android.gms.ads.internal.gmsg.zzt(this, zzaofVar, zzzxVar, zzamdVar) { // from class: com.google.android.gms.internal.zzaaw
            private final zzaar zzcqo;
            private final zzaof zzcqp;
            private final zzzx zzcqq;
            private final zzamd zzcqr;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcqo = this;
                this.zzcqp = zzaofVar;
                this.zzcqq = zzzxVar;
                this.zzcqr = zzamdVar;
            }

            @Override // com.google.android.gms.ads.internal.gmsg.zzt
            public final void zza(Object obj, Map map) {
                this.zzcqo.zza(this.zzcqp, this.zzcqq, this.zzcqr, (zzaof) obj, map);
            }
        };
        zzzxVar.zzcov = zztVar;
        zzaofVar.zza("/nativeAdPreProcess", zztVar);
        zzaofVar.zzb("google.afma.nativeAds.preProcessJsonGmsg", jSONObject);
        return zzamdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzalt zzg(zzaof zzaofVar) throws Exception {
        zzahw.zzcy("Javascript has loaded for native ads.");
        zzaofVar.zzua().zza(this.zzcpw, this.zzcpw, this.zzcpw, this.zzcpw, false, null, new com.google.android.gms.ads.internal.zzw(this.mContext, null, null), null, null);
        zzaofVar.zzua().zza("/logScionEvent", this.zzcqm);
        zzaofVar.zzua().zza("/logScionEvent", this.zzcqn);
        return zzali.zzh(zzaofVar);
    }

    @Override // com.google.android.gms.internal.zzaan
    public final zzalt<JSONObject> zzh(final JSONObject jSONObject) {
        return zzali.zza(this.zzcqi, new zzald(this, jSONObject) { // from class: com.google.android.gms.internal.zzaat
            private final JSONObject zzcqa;
            private final zzaar zzcqo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcqo = this;
                this.zzcqa = jSONObject;
            }

            @Override // com.google.android.gms.internal.zzald
            public final zzalt zzc(Object obj) {
                return this.zzcqo.zzc(this.zzcqa, (zzaof) obj);
            }
        }, zzaly.zzdjt);
    }

    @Override // com.google.android.gms.internal.zzaan
    public final zzalt<JSONObject> zzi(final JSONObject jSONObject) {
        return zzali.zza(this.zzcqi, new zzald(this, jSONObject) { // from class: com.google.android.gms.internal.zzaau
            private final JSONObject zzcqa;
            private final zzaar zzcqo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcqo = this;
                this.zzcqa = jSONObject;
            }

            @Override // com.google.android.gms.internal.zzald
            public final zzalt zzc(Object obj) {
                return this.zzcqo.zzb(this.zzcqa, (zzaof) obj);
            }
        }, zzaly.zzdjt);
    }

    @Override // com.google.android.gms.internal.zzaan
    public final zzalt<JSONObject> zzj(final JSONObject jSONObject) {
        return zzali.zza(this.zzcqi, new zzald(this, jSONObject) { // from class: com.google.android.gms.internal.zzaav
            private final JSONObject zzcqa;
            private final zzaar zzcqo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcqo = this;
                this.zzcqa = jSONObject;
            }

            @Override // com.google.android.gms.internal.zzald
            public final zzalt zzc(Object obj) {
                return this.zzcqo.zza(this.zzcqa, (zzaof) obj);
            }
        }, zzaly.zzdjt);
    }

    @Override // com.google.android.gms.internal.zzaan
    public final void zzmd() {
        zzali.zza(this.zzcqi, new zzaba(this), zzaly.zzdjt);
    }
}
