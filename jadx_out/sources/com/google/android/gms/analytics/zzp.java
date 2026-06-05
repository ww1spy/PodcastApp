package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzaql;
import com.google.android.gms.internal.zzaqy;
import com.google.android.gms.internal.zzaqz;
import com.google.android.gms.internal.zzarj;
import com.google.android.gms.internal.zzarn;
import com.google.android.gms.internal.zzarv;
import com.google.android.gms.internal.zzasp;
import com.google.android.gms.internal.zzasy;
import com.google.android.gms.internal.zzatb;
import com.google.android.gms.internal.zzatd;
import com.google.android.gms.internal.zzatt;
import java.util.HashMap;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzp implements Runnable {
    private /* synthetic */ Map zzdwb;
    private /* synthetic */ boolean zzdwc;
    private /* synthetic */ String zzdwd;
    private /* synthetic */ long zzdwe;
    private /* synthetic */ boolean zzdwf;
    private /* synthetic */ boolean zzdwg;
    private /* synthetic */ String zzdwh;
    private /* synthetic */ Tracker zzdwi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(Tracker tracker, Map map, boolean z, String str, long j, boolean z2, boolean z3, String str2) {
        this.zzdwi = tracker;
        this.zzdwb = map;
        this.zzdwc = z;
        this.zzdwd = str;
        this.zzdwe = j;
        this.zzdwf = z2;
        this.zzdwg = z3;
        this.zzdwh = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaqy zzyh;
        zzarv zzyi;
        zzasp zzyj;
        zzasp zzyj2;
        zzaqz zzyc;
        zzaqz zzyc2;
        zzatd zzxy;
        zzatb zzatbVar;
        zzatd zzxy2;
        if (this.zzdwi.zzdvy.zzwl()) {
            this.zzdwb.put("sc", "start");
        }
        Map map = this.zzdwb;
        GoogleAnalytics zzyb = this.zzdwi.zzyb();
        zzbq.zzgw("getClientId can not be called from the main thread");
        zzatt.zzc(map, "cid", zzyb.zzvr().zzyq().zzzp());
        String str = (String) this.zzdwb.get("sf");
        if (str != null) {
            double zza = zzatt.zza(str, 100.0d);
            if (zzatt.zza(zza, (String) this.zzdwb.get("cid"))) {
                this.zzdwi.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(zza));
                return;
            }
        }
        zzyh = this.zzdwi.zzyh();
        if (this.zzdwc) {
            zzatt.zzb((Map<String, String>) this.zzdwb, "ate", zzyh.zzxg());
            zzatt.zzb((Map<String, String>) this.zzdwb, "adid", zzyh.zzxn());
        } else {
            this.zzdwb.remove("ate");
            this.zzdwb.remove("adid");
        }
        zzyi = this.zzdwi.zzyi();
        zzaql zzzd = zzyi.zzzd();
        zzatt.zzb((Map<String, String>) this.zzdwb, "an", zzzd.zzwn());
        zzatt.zzb((Map<String, String>) this.zzdwb, "av", zzzd.zzwo());
        zzatt.zzb((Map<String, String>) this.zzdwb, "aid", zzzd.getAppId());
        zzatt.zzb((Map<String, String>) this.zzdwb, "aiid", zzzd.zzwp());
        this.zzdwb.put("v", NotificationPreferences.YES);
        this.zzdwb.put("_v", zzarj.zzdyr);
        Map map2 = this.zzdwb;
        zzyj = this.zzdwi.zzyj();
        zzatt.zzb((Map<String, String>) map2, "ul", zzyj.zzaah().getLanguage());
        Map map3 = this.zzdwb;
        zzyj2 = this.zzdwi.zzyj();
        zzatt.zzb((Map<String, String>) map3, "sr", zzyj2.zzaai());
        if (!(this.zzdwd.equals("transaction") || this.zzdwd.equals("item"))) {
            zzatbVar = this.zzdwi.zzdvx;
            if (!zzatbVar.zzaas()) {
                zzxy2 = this.zzdwi.zzxy();
                zzxy2.zzf(this.zzdwb, "Too many hits sent too quickly, rate limiting invoked");
                return;
            }
        }
        long zzeo = zzatt.zzeo((String) this.zzdwb.get("ht"));
        if (zzeo == 0) {
            zzeo = this.zzdwe;
        }
        long j = zzeo;
        if (this.zzdwf) {
            zzasy zzasyVar = new zzasy(this.zzdwi, this.zzdwb, j, this.zzdwg);
            zzxy = this.zzdwi.zzxy();
            zzxy.zzc("Dry run enabled. Would have sent hit", zzasyVar);
            return;
        }
        String str2 = (String) this.zzdwb.get("cid");
        HashMap hashMap = new HashMap();
        zzatt.zza(hashMap, "uid", this.zzdwb);
        zzatt.zza(hashMap, "an", this.zzdwb);
        zzatt.zza(hashMap, "aid", this.zzdwb);
        zzatt.zza(hashMap, "av", this.zzdwb);
        zzatt.zza(hashMap, "aiid", this.zzdwb);
        zzarn zzarnVar = new zzarn(0L, str2, this.zzdwh, !TextUtils.isEmpty((CharSequence) this.zzdwb.get("adid")), 0L, hashMap);
        zzyc = this.zzdwi.zzyc();
        this.zzdwb.put("_s", String.valueOf(zzyc.zza(zzarnVar)));
        zzasy zzasyVar2 = new zzasy(this.zzdwi, this.zzdwb, j, this.zzdwg);
        zzyc2 = this.zzdwi.zzyc();
        zzyc2.zza(zzasyVar2);
    }
}
