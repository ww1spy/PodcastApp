package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.widget.ActivityChooserView;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzari;
import com.google.android.gms.internal.zzark;
import com.google.android.gms.internal.zzatb;
import com.google.android.gms.internal.zzats;
import com.google.android.gms.internal.zzatt;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class Tracker extends zzari {
    private final Map<String, String> zzbwu;
    private boolean zzdvv;
    private final Map<String, String> zzdvw;
    private final zzatb zzdvx;
    private final zza zzdvy;
    private ExceptionReporter zzdvz;
    private zzats zzdwa;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class zza extends zzari implements GoogleAnalytics.zza {
        private boolean zzdwj;
        private int zzdwk;
        private long zzdwl;
        private boolean zzdwm;
        private long zzdwn;

        protected zza(zzark zzarkVar) {
            super(zzarkVar);
            this.zzdwl = -1L;
        }

        private final void zzwm() {
            if (this.zzdwl >= 0 || this.zzdwj) {
                zzyb().zza(Tracker.this.zzdvy);
            } else {
                zzyb().zzb(Tracker.this.zzdvy);
            }
        }

        public final void enableAutoActivityTracking(boolean z) {
            this.zzdwj = z;
            zzwm();
        }

        public final void setSessionTimeout(long j) {
            this.zzdwl = j;
            zzwm();
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public final void zzm(Activity activity) {
            String canonicalName;
            if (this.zzdwk == 0) {
                if (zzxx().elapsedRealtime() >= this.zzdwn + Math.max(1000L, this.zzdwl)) {
                    this.zzdwm = true;
                }
            }
            this.zzdwk++;
            if (this.zzdwj) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Tracker.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("&t", "screenview");
                Tracker tracker = Tracker.this;
                if (Tracker.this.zzdwa != null) {
                    zzats zzatsVar = Tracker.this.zzdwa;
                    canonicalName = activity.getClass().getCanonicalName();
                    String str = zzatsVar.zzeex.get(canonicalName);
                    if (str != null) {
                        canonicalName = str;
                    }
                } else {
                    canonicalName = activity.getClass().getCanonicalName();
                }
                tracker.set("&cd", canonicalName);
                if (TextUtils.isEmpty((CharSequence) hashMap.get("&dr"))) {
                    zzbq.checkNotNull(activity);
                    Intent intent2 = activity.getIntent();
                    String str2 = null;
                    if (intent2 != null) {
                        String stringExtra = intent2.getStringExtra("android.intent.extra.REFERRER_NAME");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            str2 = stringExtra;
                        }
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        hashMap.put("&dr", str2);
                    }
                }
                Tracker.this.send(hashMap);
            }
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.zza
        public final void zzn(Activity activity) {
            this.zzdwk--;
            this.zzdwk = Math.max(0, this.zzdwk);
            if (this.zzdwk == 0) {
                this.zzdwn = zzxx().elapsedRealtime();
            }
        }

        @Override // com.google.android.gms.internal.zzari
        protected final void zzwk() {
        }

        public final synchronized boolean zzwl() {
            boolean z;
            z = this.zzdwm;
            this.zzdwm = false;
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tracker(zzark zzarkVar, String str, zzatb zzatbVar) {
        super(zzarkVar);
        this.zzbwu = new HashMap();
        this.zzdvw = new HashMap();
        if (str != null) {
            this.zzbwu.put("&tid", str);
        }
        this.zzbwu.put("useSecure", NotificationPreferences.YES);
        this.zzbwu.put("&a", Integer.toString(new Random().nextInt(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) + 1));
        this.zzdvx = new zzatb("tracking", zzxx());
        this.zzdvy = new zza(zzarkVar);
    }

    private static String zza(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        if (key.startsWith("&") && key.length() >= 2) {
            return entry.getKey().substring(1);
        }
        return null;
    }

    private static void zzb(Map<String, String> map, Map<String, String> map2) {
        zzbq.checkNotNull(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String zza2 = zza(entry);
            if (zza2 != null) {
                map2.put(zza2, entry.getValue());
            }
        }
    }

    private static void zzc(Map<String, String> map, Map<String, String> map2) {
        zzbq.checkNotNull(map2);
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String zza2 = zza(entry);
            if (zza2 != null && !map2.containsKey(zza2)) {
                map2.put(zza2, entry.getValue());
            }
        }
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzdvv = z;
    }

    public void enableAutoActivityTracking(boolean z) {
        this.zzdvy.enableAutoActivityTracking(z);
    }

    public void enableExceptionReporting(boolean z) {
        String str;
        synchronized (this) {
            if ((this.zzdvz != null) == z) {
                return;
            }
            if (z) {
                this.zzdvz = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), getContext());
                Thread.setDefaultUncaughtExceptionHandler(this.zzdvz);
                str = "Uncaught exceptions will be reported to Google Analytics";
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this.zzdvz.zzvv());
                str = "Uncaught exceptions will not be reported to Google Analytics";
            }
            zzea(str);
        }
    }

    public String get(String str) {
        zzyk();
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.zzbwu.containsKey(str)) {
            return this.zzbwu.get(str);
        }
        if (str.equals("&ul")) {
            return zzatt.zza(Locale.getDefault());
        }
        if (str.equals("&cid")) {
            return zzyg().zzzp();
        }
        if (str.equals("&sr")) {
            return zzyj().zzaai();
        }
        if (str.equals("&aid")) {
            return zzyi().zzzd().getAppId();
        }
        if (str.equals("&an")) {
            return zzyi().zzzd().zzwn();
        }
        if (str.equals("&av")) {
            return zzyi().zzzd().zzwo();
        }
        if (str.equals("&aiid")) {
            return zzyi().zzzd().zzwp();
        }
        return null;
    }

    public void send(Map<String, String> map) {
        long currentTimeMillis = zzxx().currentTimeMillis();
        if (zzyb().getAppOptOut()) {
            zzeb("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        boolean isDryRunEnabled = zzyb().isDryRunEnabled();
        HashMap hashMap = new HashMap();
        zzb(this.zzbwu, hashMap);
        zzb(map, hashMap);
        boolean zzd = zzatt.zzd(this.zzbwu.get("useSecure"), true);
        zzc(this.zzdvw, hashMap);
        this.zzdvw.clear();
        String str = hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            zzxy().zzf(hashMap, "Missing hit type parameter");
            return;
        }
        String str2 = hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zzxy().zzf(hashMap, "Missing tracking id parameter");
            return;
        }
        boolean z = this.zzdvv;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt(this.zzbwu.get("&a")) + 1;
                if (parseInt >= Integer.MAX_VALUE) {
                    parseInt = 1;
                }
                this.zzbwu.put("&a", Integer.toString(parseInt));
            }
        }
        zzya().zzd(new zzp(this, hashMap, z, str, currentTimeMillis, isDryRunEnabled, zzd, str2));
    }

    public void set(String str, String str2) {
        zzbq.checkNotNull(str, "Key should be non-null");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zzbwu.put(str, str2);
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", zzatt.zzao(z));
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setCampaignParamsOnNextHit(Uri uri) {
        if (uri == null || uri.isOpaque()) {
            return;
        }
        String queryParameter = uri.getQueryParameter("referrer");
        if (TextUtils.isEmpty(queryParameter)) {
            return;
        }
        String valueOf = String.valueOf(queryParameter);
        Uri parse = Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?"));
        String queryParameter2 = parse.getQueryParameter("utm_id");
        if (queryParameter2 != null) {
            this.zzdvw.put("&ci", queryParameter2);
        }
        String queryParameter3 = parse.getQueryParameter("anid");
        if (queryParameter3 != null) {
            this.zzdvw.put("&anid", queryParameter3);
        }
        String queryParameter4 = parse.getQueryParameter("utm_campaign");
        if (queryParameter4 != null) {
            this.zzdvw.put("&cn", queryParameter4);
        }
        String queryParameter5 = parse.getQueryParameter("utm_content");
        if (queryParameter5 != null) {
            this.zzdvw.put("&cc", queryParameter5);
        }
        String queryParameter6 = parse.getQueryParameter("utm_medium");
        if (queryParameter6 != null) {
            this.zzdvw.put("&cm", queryParameter6);
        }
        String queryParameter7 = parse.getQueryParameter("utm_source");
        if (queryParameter7 != null) {
            this.zzdvw.put("&cs", queryParameter7);
        }
        String queryParameter8 = parse.getQueryParameter("utm_term");
        if (queryParameter8 != null) {
            this.zzdvw.put("&ck", queryParameter8);
        }
        String queryParameter9 = parse.getQueryParameter("dclid");
        if (queryParameter9 != null) {
            this.zzdvw.put("&dclid", queryParameter9);
        }
        String queryParameter10 = parse.getQueryParameter("gclid");
        if (queryParameter10 != null) {
            this.zzdvw.put("&gclid", queryParameter10);
        }
        String queryParameter11 = parse.getQueryParameter("aclid");
        if (queryParameter11 != null) {
            this.zzdvw.put("&aclid", queryParameter11);
        }
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toString(d));
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i < 0 && i2 < 0) {
            zzed("Invalid width or height. The values should be non-negative.");
            return;
        }
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        set("&sr", sb.toString());
    }

    public void setSessionTimeout(long j) {
        this.zzdvy.setSessionTimeout(j * 1000);
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setUseSecure(boolean z) {
        set("useSecure", zzatt.zzao(z));
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzats zzatsVar) {
        zzea("Loading Tracker config values");
        this.zzdwa = zzatsVar;
        if (this.zzdwa.zzdub != null) {
            String str = this.zzdwa.zzdub;
            set("&tid", str);
            zza("trackingId loaded", str);
        }
        if (this.zzdwa.zzees >= 0.0d) {
            String d = Double.toString(this.zzdwa.zzees);
            set("&sf", d);
            zza("Sample frequency loaded", d);
        }
        if (this.zzdwa.zzeet >= 0) {
            int i = this.zzdwa.zzeet;
            setSessionTimeout(i);
            zza("Session timeout loaded", Integer.valueOf(i));
        }
        if (this.zzdwa.zzeeu != -1) {
            boolean z = this.zzdwa.zzeeu == 1;
            enableAutoActivityTracking(z);
            zza("Auto activity tracking loaded", Boolean.valueOf(z));
        }
        if (this.zzdwa.zzeev != -1) {
            boolean z2 = this.zzdwa.zzeev == 1;
            if (z2) {
                set("&aip", NotificationPreferences.YES);
            }
            zza("Anonymize ip loaded", Boolean.valueOf(z2));
        }
        enableExceptionReporting(this.zzdwa.zzeew == 1);
    }

    @Override // com.google.android.gms.internal.zzari
    @Hide
    protected final void zzwk() {
        this.zzdvy.initialize();
        String zzwn = zzye().zzwn();
        if (zzwn != null) {
            set("&an", zzwn);
        }
        String zzwo = zzye().zzwo();
        if (zzwo != null) {
            set("&av", zzwo);
        }
    }
}
