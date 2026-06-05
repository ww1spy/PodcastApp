package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.gmsg.HttpClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.Hide;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzada extends zzahs {
    private static com.google.android.gms.ads.internal.js.zzn zzcql = null;
    private static boolean zzcuz = false;
    private static HttpClient zzcva;
    private static com.google.android.gms.ads.internal.gmsg.zzy zzcvb;
    private static com.google.android.gms.ads.internal.gmsg.zzt<Object> zzcvc;
    private final Context mContext;
    private final Object zzcoe;
    private final zzabj zzcre;
    private final zzacg zzcrf;
    private zziz zzcrh;
    private com.google.android.gms.ads.internal.js.zzaa zzcvd;
    private static long zzcuy = TimeUnit.SECONDS.toMillis(10);
    private static final Object sLock = new Object();

    public zzada(Context context, zzacg zzacgVar, zzabj zzabjVar, zziz zzizVar) {
        super(true);
        this.zzcoe = new Object();
        this.zzcre = zzabjVar;
        this.mContext = context;
        this.zzcrf = zzacgVar;
        this.zzcrh = zzizVar;
        synchronized (sLock) {
            if (!zzcuz) {
                zzcvb = new com.google.android.gms.ads.internal.gmsg.zzy();
                zzcva = new HttpClient(context.getApplicationContext(), zzacgVar.zzatz);
                zzcvc = new zzadi();
                zzcql = new com.google.android.gms.ads.internal.js.zzn(this.mContext.getApplicationContext(), this.zzcrf.zzatz, (String) zzlc.zzio().zzd(zzoi.zzblc), new zzadh(), new zzadg());
                zzcuz = true;
            }
        }
    }

    private final JSONObject zza(zzacf zzacfVar, String str) {
        zzaea zzaeaVar;
        AdvertisingIdClient.Info info;
        Bundle bundle = zzacfVar.zzcrv.extras.getBundle("sdk_less_server_data");
        if (bundle == null) {
            return null;
        }
        try {
            zzaeaVar = com.google.android.gms.ads.internal.zzbt.zzew().zzo(this.mContext).get();
        } catch (Exception e) {
            zzahw.zzc("Error grabbing device info: ", e);
            zzaeaVar = null;
        }
        Context context = this.mContext;
        zzadl zzadlVar = new zzadl();
        zzadlVar.zzcvm = zzacfVar;
        zzadlVar.zzcvn = zzaeaVar;
        JSONObject zza = zzads.zza(context, zzadlVar);
        if (zza == null) {
            return null;
        }
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(this.mContext);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e2) {
            zzahw.zzc("Cannot get advertising id info", e2);
            info = null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("request_id", str);
        hashMap.put("request_param", zza);
        hashMap.put("data", bundle);
        if (info != null) {
            hashMap.put("adid", info.getId());
            hashMap.put("lat", Integer.valueOf(info.isLimitAdTrackingEnabled() ? 1 : 0));
        }
        try {
            return com.google.android.gms.ads.internal.zzbt.zzel().zzq(hashMap);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void zzb(com.google.android.gms.ads.internal.js.zzc zzcVar) {
        zzcVar.zza("/loadAd", zzcvb);
        zzcVar.zza("/fetchHttpRequest", zzcva);
        zzcVar.zza("/invalidRequest", zzcvc);
    }

    private final zzacj zzc(zzacf zzacfVar) {
        com.google.android.gms.ads.internal.zzbt.zzel();
        String zzrc = zzaij.zzrc();
        JSONObject zza = zza(zzacfVar, zzrc);
        if (zza == null) {
            return new zzacj(0);
        }
        long elapsedRealtime = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime();
        Future<JSONObject> zzas = zzcvb.zzas(zzrc);
        zzako.zzaju.post(new zzadc(this, zza, zzrc));
        try {
            JSONObject jSONObject = zzas.get(zzcuy - (com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime() - elapsedRealtime), TimeUnit.MILLISECONDS);
            if (jSONObject == null) {
                return new zzacj(-1);
            }
            zzacj zza2 = zzads.zza(this.mContext, zzacfVar, jSONObject.toString());
            return (zza2.errorCode == -3 || !TextUtils.isEmpty(zza2.body)) ? zza2 : new zzacj(3);
        } catch (InterruptedException | CancellationException unused) {
            return new zzacj(-1);
        } catch (ExecutionException unused2) {
            return new zzacj(0);
        } catch (TimeoutException unused3) {
            return new zzacj(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void zzc(com.google.android.gms.ads.internal.js.zzc zzcVar) {
        zzcVar.zzb("/loadAd", zzcvb);
        zzcVar.zzb("/fetchHttpRequest", zzcva);
        zzcVar.zzb("/invalidRequest", zzcvc);
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
        synchronized (this.zzcoe) {
            zzako.zzaju.post(new zzadf(this));
        }
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        zzahw.zzby("SdkLessAdLoaderBackgroundTask started.");
        String zzz = com.google.android.gms.ads.internal.zzbt.zzfh().zzz(this.mContext);
        zzacf zzacfVar = new zzacf(this.zzcrf, -1L, com.google.android.gms.ads.internal.zzbt.zzfh().zzx(this.mContext), com.google.android.gms.ads.internal.zzbt.zzfh().zzy(this.mContext), zzz);
        com.google.android.gms.ads.internal.zzbt.zzfh().zzg(this.mContext, zzz);
        zzacj zzc = zzc(zzacfVar);
        zzako.zzaju.post(new zzadb(this, new zzahe(zzacfVar, zzc, null, null, zzc.errorCode, com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime(), zzc.zzcts, null, this.zzcrh)));
    }
}
