package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.android.gms.internal.zzacf;
import com.google.android.gms.internal.zzacg;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzali;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpx;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbd implements Callable<zzpx> {
    private /* synthetic */ zzahe zzant;
    private /* synthetic */ zzbb zzaro;
    private /* synthetic */ int zzarp;
    private /* synthetic */ JSONArray zzarq;
    private /* synthetic */ int zzarr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbd(zzbb zzbbVar, int i, JSONArray jSONArray, int i2, zzahe zzaheVar) {
        this.zzaro = zzbbVar;
        this.zzarp = i;
        this.zzarq = jSONArray;
        this.zzarr = i2;
        this.zzant = zzaheVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzpx call() throws Exception {
        if (this.zzarp >= this.zzarq.length()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(this.zzarq.get(this.zzarp));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ads", jSONArray);
        zzbb zzbbVar = new zzbb(this.zzaro.zzanm.zzaiq, this.zzaro.zzanp, this.zzaro.zzanm.zzaud, this.zzaro.zzanm.zzatx, this.zzaro.zzanu, this.zzaro.zzanm.zzatz, true);
        zzbb zzbbVar2 = this.zzaro;
        zzbb.zza(this.zzaro.zzanm, zzbbVar.zzanm);
        zzbbVar.zzdr();
        zzbbVar.zza(this.zzaro.zzani);
        zzov zzovVar = zzbbVar.zzanh;
        int i = this.zzarp;
        zzovVar.zzf("num_ads_requested", String.valueOf(this.zzarr));
        zzovVar.zzf("ad_index", String.valueOf(i));
        zzacf zzacfVar = this.zzant.zzcvm;
        String jSONObject2 = jSONObject.toString();
        Bundle bundle = zzacfVar.zzcrv.extras != null ? new Bundle(zzacfVar.zzcrv.extras) : new Bundle();
        bundle.putString("_ad", jSONObject2);
        zzbbVar.zza(new zzacg(zzacfVar.zzcru, new zzkk(zzacfVar.zzcrv.versionCode, zzacfVar.zzcrv.zzbgv, bundle, zzacfVar.zzcrv.zzbgw, zzacfVar.zzcrv.zzbgx, zzacfVar.zzcrv.zzbgy, zzacfVar.zzcrv.zzbgz, zzacfVar.zzcrv.zzbha, zzacfVar.zzcrv.zzbhb, zzacfVar.zzcrv.zzbhc, zzacfVar.zzcrv.zzbhd, zzacfVar.zzcrv.zzbhe, zzacfVar.zzcrv.zzbhf, zzacfVar.zzcrv.zzbhg, zzacfVar.zzcrv.zzbhh, zzacfVar.zzcrv.zzbhi, zzacfVar.zzcrv.zzbhj, zzacfVar.zzcrv.zzbhk), zzacfVar.zzaud, zzacfVar.zzatx, zzacfVar.applicationInfo, zzacfVar.zzcrw, zzacfVar.zzcry, zzacfVar.zzcrz, zzacfVar.zzatz, zzacfVar.zzcsa, zzacfVar.zzauy, zzacfVar.zzcsk, zzacfVar.zzcsc, zzacfVar.zzcsd, zzacfVar.zzcse, zzacfVar.zzcsf, zzacfVar.zzaxz, zzacfVar.zzcsg, zzacfVar.zzcsh, zzacfVar.zzcsi, zzacfVar.zzcsj, zzacfVar.zzatw, zzacfVar.zzauq, zzacfVar.zzcsm, zzacfVar.zzcsn, zzacfVar.zzcst, zzacfVar.zzcso, zzacfVar.zzcsp, zzacfVar.zzcsq, zzacfVar.zzcsr, zzali.zzh(zzacfVar.zzcss), zzacfVar.zzcsu, zzacfVar.zzcia, zzacfVar.zzcsv, zzacfVar.zzcsw, zzacfVar.zzcsx, zzacfVar.zzaus, zzacfVar.zzcsy, zzacfVar.zzcsz, zzacfVar.zzctd, zzali.zzh(zzacfVar.zzcrx), zzacfVar.zzauu, zzacfVar.zzcte, zzacfVar.zzctf, 1, zzacfVar.zzcth, zzacfVar.zzcti, zzacfVar.zzctj), zzbbVar.zzanh);
        return zzbbVar.zzdt().get();
    }
}
