package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzadn extends zzaco {
    private static final Object sLock = new Object();
    private static zzadn zzcwb;
    private final Context mContext;
    private final zzadm zzcwc;
    private final ScheduledExecutorService zzcwd = Executors.newSingleThreadScheduledExecutor();

    private zzadn(Context context, zzadm zzadmVar) {
        this.mContext = context;
        this.zzcwc = zzadmVar;
    }

    private static zzacj zza(Context context, zzadm zzadmVar, zzacf zzacfVar, ScheduledExecutorService scheduledExecutorService) {
        String string;
        zzahw.zzby("Starting ad request from service using: google.afma.request.getAdDictionary");
        zzov zzovVar = new zzov(((Boolean) zzlc.zzio().zzd(zzoi.zzbne)).booleanValue(), "load_ad", zzacfVar.zzaud.zzbia);
        if (zzacfVar.versionCode > 10 && zzacfVar.zzcsl != -1) {
            zzovVar.zza(zzovVar.zzd(zzacfVar.zzcsl), "cts");
        }
        zzot zzjo = zzovVar.zzjo();
        zzalt zza = zzali.zza(zzadmVar.zzcvy.zzi(context), ((Long) zzlc.zzio().zzd(zzoi.zzbtv)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        zzalt zza2 = zzali.zza(zzadmVar.zzcvx.zzp(context), ((Long) zzlc.zzio().zzd(zzoi.zzbra)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        zzalt<String> zzbz = zzadmVar.zzcvs.zzbz(zzacfVar.zzcrw.packageName);
        zzalt<String> zza3 = zzadmVar.zzcvz.zza(zzacfVar.zzcrx, zzacfVar.zzcrw);
        Future<zzaea> zzo = com.google.android.gms.ads.internal.zzbt.zzew().zzo(context);
        zzalt<Location> zzh = zzali.zzh(null);
        Bundle bundle = zzacfVar.zzcrv.extras;
        boolean z = (bundle == null || bundle.getString("_ad") == null) ? false : true;
        if (zzacfVar.zzcsr && !z) {
            zzh = zzadmVar.zzcvv.zza(zzacfVar.applicationInfo);
        }
        zzalt zza4 = zzali.zza(zzh, ((Long) zzlc.zzio().zzd(zzoi.zzbte)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        Future zzh2 = zzali.zzh(null);
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbpd)).booleanValue()) {
            zzh2 = zzali.zza(zzadmVar.zzcvz.zzac(context), ((Long) zzlc.zzio().zzd(zzoi.zzbpe)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
        }
        Bundle bundle2 = (zzacfVar.versionCode < 4 || zzacfVar.zzcsc == null) ? null : zzacfVar.zzcsc;
        ((Boolean) zzlc.zzio().zzd(zzoi.zzbnu)).booleanValue();
        com.google.android.gms.ads.internal.zzbt.zzel();
        if (zzaij.zzd(context, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE") && ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() == null) {
            zzahw.zzby("Device is offline.");
        }
        String uuid = zzacfVar.versionCode >= 7 ? zzacfVar.zzcsi : UUID.randomUUID().toString();
        new zzadt(context, uuid, zzacfVar.applicationInfo.packageName);
        if (zzacfVar.zzcrv.extras != null && (string = zzacfVar.zzcrv.extras.getString("_ad")) != null) {
            return zzads.zza(context, zzacfVar, string);
        }
        List<String> zzf = zzadmVar.zzcvt.zzf(zzacfVar.zzcsj);
        String str = uuid;
        Bundle bundle3 = (Bundle) zzali.zza(zza, (Object) null, ((Long) zzlc.zzio().zzd(zzoi.zzbtv)).longValue(), TimeUnit.MILLISECONDS);
        zzaek zzaekVar = (zzaek) zzali.zza(zza2, (Object) null);
        Location location = (Location) zzali.zza(zza4, (Object) null);
        AdvertisingIdClient.Info info = (AdvertisingIdClient.Info) zzali.zza((Future<Object>) zzh2, (Object) null);
        String str2 = (String) zzali.zza(zza3, (Object) null);
        String str3 = (String) zzali.zza(zzbz, (Object) null);
        zzaea zzaeaVar = (zzaea) zzali.zza(zzo, (Object) null);
        if (zzaeaVar == null) {
            zzahw.zzcz("Error fetching device info. This is not recoverable.");
            return new zzacj(0);
        }
        zzadl zzadlVar = new zzadl();
        zzadlVar.zzcvm = zzacfVar;
        zzadlVar.zzcvn = zzaeaVar;
        zzadlVar.zzcvj = zzaekVar;
        zzadlVar.zzbhd = location;
        zzadlVar.zzcvi = bundle3;
        zzadlVar.zzcrx = str2;
        zzadlVar.zzcvl = info;
        if (zzf == null) {
            zzadlVar.zzcsj.clear();
        }
        zzadlVar.zzcsj = zzf;
        zzadlVar.zzcsc = bundle2;
        zzadlVar.zzcvk = str3;
        zzadlVar.zzcvo = zzadmVar.zzcvr.zze(context);
        zzadlVar.zzcvp = zzadmVar.zzcvp;
        JSONObject zza5 = zzads.zza(context, zzadlVar);
        if (zza5 == null) {
            return new zzacj(0);
        }
        if (zzacfVar.versionCode < 7) {
            try {
                zza5.put("request_id", str);
            } catch (JSONException unused) {
            }
        }
        zza5.toString();
        zzovVar.zza(zzjo, "arc");
        zzovVar.zzjo();
        zzalt zza6 = zzali.zza(zzali.zza(zzadmVar.zzcwa.zzoe().zzf(zza5), zzado.zzaoy, scheduledExecutorService), 10L, TimeUnit.SECONDS, scheduledExecutorService);
        zzalt<Void> zzon = zzadmVar.zzcvu.zzon();
        if (zzon != null) {
            zzalg.zza(zzon, "AdRequestServiceImpl.loadAd.flags");
        }
        zzadz zzadzVar = (zzadz) zzali.zza(zza6, (Object) null);
        if (zzadzVar == null) {
            return new zzacj(0);
        }
        if (zzadzVar.getErrorCode() != -2) {
            return new zzacj(zzadzVar.getErrorCode());
        }
        zzovVar.zzjr();
        zzacj zza7 = !TextUtils.isEmpty(zzadzVar.zzok()) ? zzads.zza(context, zzacfVar, zzadzVar.zzok()) : null;
        if (zza7 == null && !TextUtils.isEmpty(zzadzVar.getUrl())) {
            zza7 = zza(zzacfVar, context, zzacfVar.zzatz.zzcu, zzadzVar.getUrl(), str3, zzadzVar, zzovVar, zzadmVar);
        }
        if (zza7 == null) {
            zza7 = new zzacj(0);
        }
        zzovVar.zza(zzjo, "tts");
        zza7.zzcub = zzovVar.zzjp();
        return zza7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0192, code lost:
    
        r2 = new java.lang.StringBuilder(46);
        r2.append("Received error HTTP response code: ");
        r2.append(r4);
        com.google.android.gms.internal.zzahw.zzcz(r2.toString());
        r1 = new com.google.android.gms.internal.zzacj(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01ac, code lost:
    
        r12.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01af, code lost:
    
        if (r25 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01b1, code lost:
    
        r25.zzcvw.zzop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b6, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.zzacj zza(com.google.android.gms.internal.zzacf r18, android.content.Context r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, com.google.android.gms.internal.zzadz r23, com.google.android.gms.internal.zzov r24, com.google.android.gms.internal.zzadm r25) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzadn.zza(com.google.android.gms.internal.zzacf, android.content.Context, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.zzadz, com.google.android.gms.internal.zzov, com.google.android.gms.internal.zzadm):com.google.android.gms.internal.zzacj");
    }

    public static zzadn zza(Context context, zzadm zzadmVar) {
        zzadn zzadnVar;
        synchronized (sLock) {
            if (zzcwb == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                zzoi.initialize(context);
                zzcwb = new zzadn(context, zzadmVar);
                if (context.getApplicationContext() != null) {
                    com.google.android.gms.ads.internal.zzbt.zzel().zzai(context);
                }
                zzahu.zzaf(context);
            }
            zzadnVar = zzcwb;
        }
        return zzadnVar;
    }

    private static void zza(String str, Map<String, List<String>> map, String str2, int i) {
        if (zzahw.zzae(2)) {
            StringBuilder sb = new StringBuilder(39 + String.valueOf(str).length());
            sb.append("Http Response: {\n  URL:\n    ");
            sb.append(str);
            sb.append("\n  Headers:");
            zzahw.v(sb.toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    StringBuilder sb2 = new StringBuilder(5 + String.valueOf(str3).length());
                    sb2.append("    ");
                    sb2.append(str3);
                    sb2.append(":");
                    zzahw.v(sb2.toString());
                    Iterator<String> it = map.get(str3).iterator();
                    while (it.hasNext()) {
                        String valueOf = String.valueOf(it.next());
                        zzahw.v(valueOf.length() != 0 ? "      ".concat(valueOf) : new String("      "));
                    }
                }
            }
            zzahw.v("  Body:");
            if (str2 != null) {
                int i2 = 0;
                while (i2 < Math.min(str2.length(), 100000)) {
                    int i3 = i2 + 1000;
                    zzahw.v(str2.substring(i2, Math.min(str2.length(), i3)));
                    i2 = i3;
                }
            } else {
                zzahw.v("    null");
            }
            StringBuilder sb3 = new StringBuilder(34);
            sb3.append("  Response Code:\n    ");
            sb3.append(i);
            sb3.append("\n}");
            zzahw.v(sb3.toString());
        }
    }

    @Override // com.google.android.gms.internal.zzacn
    public final void zza(zzacf zzacfVar, zzacq zzacqVar) {
        com.google.android.gms.ads.internal.zzbt.zzep().zzd(this.mContext, zzacfVar.zzatz);
        zzalt<Void> zzb = zzaid.zzb(new zzadp(this, zzacfVar, zzacqVar));
        com.google.android.gms.ads.internal.zzbt.zzfa().zzrt();
        com.google.android.gms.ads.internal.zzbt.zzfa().getHandler().postDelayed(new zzadq(this, zzb), 60000L);
    }

    @Override // com.google.android.gms.internal.zzacn
    public final void zza(zzacy zzacyVar, zzact zzactVar) {
        zzahw.v("Nonagon code path entered in octagon");
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.zzacn
    public final zzacj zzb(zzacf zzacfVar) {
        return zza(this.mContext, this.zzcwc, zzacfVar, this.zzcwd);
    }
}
