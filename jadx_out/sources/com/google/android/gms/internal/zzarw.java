package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes.dex */
public final class zzarw extends zzari {
    private boolean mStarted;
    private final zzart zzeab;
    private final zzatf zzeac;
    private final zzate zzead;
    private final zzaro zzeae;
    private long zzeaf;
    private final zzasn zzeag;
    private final zzasn zzeah;
    private final zzatp zzeai;
    private long zzeaj;
    private boolean zzeak;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzarw(zzark zzarkVar, zzarm zzarmVar) {
        super(zzarkVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarmVar);
        this.zzeaf = Long.MIN_VALUE;
        this.zzead = new zzate(zzarkVar);
        this.zzeab = new zzart(zzarkVar);
        this.zzeac = new zzatf(zzarkVar);
        this.zzeae = new zzaro(zzarkVar);
        this.zzeai = new zzatp(zzxx());
        this.zzeag = new zzarx(this, zzarkVar);
        this.zzeah = new zzary(this, zzarkVar);
    }

    private final void zza(zzarn zzarnVar, zzaqm zzaqmVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarnVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzaqmVar);
        com.google.android.gms.analytics.zza zzaVar = new com.google.android.gms.analytics.zza(zzxw());
        zzaVar.zzdk(zzarnVar.zzys());
        zzaVar.enableAdvertisingIdCollection(zzarnVar.zzyt());
        com.google.android.gms.analytics.zzg zzvs = zzaVar.zzvs();
        zzaqu zzaquVar = (zzaqu) zzvs.zzb(zzaqu.class);
        zzaquVar.zzdv("data");
        zzaquVar.zzan(true);
        zzvs.zza(zzaqmVar);
        zzaqp zzaqpVar = (zzaqp) zzvs.zzb(zzaqp.class);
        zzaql zzaqlVar = (zzaql) zzvs.zzb(zzaql.class);
        for (Map.Entry<String, String> entry : zzarnVar.zzjq().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                zzaqlVar.setAppName(value);
            } else if ("av".equals(key)) {
                zzaqlVar.setAppVersion(value);
            } else if ("aid".equals(key)) {
                zzaqlVar.setAppId(value);
            } else if ("aiid".equals(key)) {
                zzaqlVar.setAppInstallerId(value);
            } else if ("uid".equals(key)) {
                zzaquVar.setUserId(value);
            } else {
                zzaqpVar.set(key, value);
            }
        }
        zzb("Sending installation campaign to", zzarnVar.zzys(), zzaqmVar);
        zzvs.zzl(zzyf().zzaba());
        zzvs.zzwa();
    }

    private final boolean zzeh(String str) {
        return zzbih.zzdd(getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    private final long zzza() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        try {
            return this.zzeab.zzza();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzzf() {
        zzb(new zzasa(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzzg() {
        try {
            this.zzeab.zzyz();
            zzzk();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzeah.zzs(86400000L);
    }

    private final void zzzh() {
        if (this.zzeak || !zzasl.zzzv() || this.zzeae.isConnected()) {
            return;
        }
        if (this.zzeai.zzu(zzast.zzecz.get().longValue())) {
            this.zzeai.start();
            zzea("Connecting to service");
            if (this.zzeae.connect()) {
                zzea("Connected to service");
                this.zzeai.clear();
                onServiceConnected();
            }
        }
    }

    private final boolean zzzi() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        zzea("Dispatching a batch of local hits");
        boolean z = !this.zzeae.isConnected();
        boolean z2 = !this.zzeac.zzaax();
        if (z && z2) {
            zzea("No network or service available. Will retry later");
            return false;
        }
        long max = Math.max(zzasl.zzzz(), zzasl.zzaaa());
        ArrayList arrayList = new ArrayList();
        long j = 0;
        while (true) {
            try {
                try {
                    this.zzeab.beginTransaction();
                    arrayList.clear();
                    try {
                        List<zzasy> zzo = this.zzeab.zzo(max);
                        if (zzo.isEmpty()) {
                            zzea("Store is empty, nothing to dispatch");
                            zzzm();
                            try {
                                this.zzeab.setTransactionSuccessful();
                                this.zzeab.endTransaction();
                                return false;
                            } catch (SQLiteException e) {
                                zze("Failed to commit local dispatch transaction", e);
                                zzzm();
                                return false;
                            }
                        }
                        zza("Hits loaded from store. count", Integer.valueOf(zzo.size()));
                        Iterator<zzasy> it = zzo.iterator();
                        while (it.hasNext()) {
                            if (it.next().zzaam() == j) {
                                zzd("Database contains successfully uploaded hit", Long.valueOf(j), Integer.valueOf(zzo.size()));
                                zzzm();
                                try {
                                    this.zzeab.setTransactionSuccessful();
                                    this.zzeab.endTransaction();
                                    return false;
                                } catch (SQLiteException e2) {
                                    zze("Failed to commit local dispatch transaction", e2);
                                    zzzm();
                                    return false;
                                }
                            }
                        }
                        if (this.zzeae.isConnected()) {
                            zzea("Service connected, sending hits to the service");
                            while (!zzo.isEmpty()) {
                                zzasy zzasyVar = zzo.get(0);
                                if (!this.zzeae.zzb(zzasyVar)) {
                                    break;
                                }
                                j = Math.max(j, zzasyVar.zzaam());
                                zzo.remove(zzasyVar);
                                zzb("Hit sent do device AnalyticsService for delivery", zzasyVar);
                                try {
                                    this.zzeab.zzp(zzasyVar.zzaam());
                                    arrayList.add(Long.valueOf(zzasyVar.zzaam()));
                                } catch (SQLiteException e3) {
                                    zze("Failed to remove hit that was send for delivery", e3);
                                    zzzm();
                                    try {
                                        this.zzeab.setTransactionSuccessful();
                                        this.zzeab.endTransaction();
                                        return false;
                                    } catch (SQLiteException e4) {
                                        zze("Failed to commit local dispatch transaction", e4);
                                        zzzm();
                                        return false;
                                    }
                                }
                            }
                        }
                        if (this.zzeac.zzaax()) {
                            List<Long> zzu = this.zzeac.zzu(zzo);
                            Iterator<Long> it2 = zzu.iterator();
                            while (it2.hasNext()) {
                                j = Math.max(j, it2.next().longValue());
                            }
                            try {
                                this.zzeab.zzs(zzu);
                                arrayList.addAll(zzu);
                            } catch (SQLiteException e5) {
                                zze("Failed to remove successfully uploaded hits", e5);
                                zzzm();
                                try {
                                    this.zzeab.setTransactionSuccessful();
                                    this.zzeab.endTransaction();
                                    return false;
                                } catch (SQLiteException e6) {
                                    zze("Failed to commit local dispatch transaction", e6);
                                    zzzm();
                                    return false;
                                }
                            }
                        }
                        if (arrayList.isEmpty()) {
                            try {
                                this.zzeab.setTransactionSuccessful();
                                this.zzeab.endTransaction();
                                return false;
                            } catch (SQLiteException e7) {
                                zze("Failed to commit local dispatch transaction", e7);
                                zzzm();
                                return false;
                            }
                        }
                        try {
                            this.zzeab.setTransactionSuccessful();
                            this.zzeab.endTransaction();
                        } catch (SQLiteException e8) {
                            zze("Failed to commit local dispatch transaction", e8);
                            zzzm();
                            return false;
                        }
                    } catch (SQLiteException e9) {
                        zzd("Failed to read hits from persisted store", e9);
                        zzzm();
                        try {
                            this.zzeab.setTransactionSuccessful();
                            this.zzeab.endTransaction();
                            return false;
                        } catch (SQLiteException e10) {
                            zze("Failed to commit local dispatch transaction", e10);
                            zzzm();
                            return false;
                        }
                    }
                } catch (Throwable th) {
                    this.zzeab.setTransactionSuccessful();
                    this.zzeab.endTransaction();
                    throw th;
                }
                this.zzeab.setTransactionSuccessful();
                this.zzeab.endTransaction();
                throw th;
            } catch (SQLiteException e11) {
                zze("Failed to commit local dispatch transaction", e11);
                zzzm();
                return false;
            }
        }
    }

    private final void zzzl() {
        zzasq zzyd = zzyd();
        if (zzyd.zzaaj() && !zzyd.zzea()) {
            long zzza = zzza();
            if (zzza == 0 || Math.abs(zzxx().currentTimeMillis() - zzza) > zzast.zzeby.get().longValue()) {
                return;
            }
            zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzasl.zzzy()));
            zzyd.schedule();
        }
    }

    private final void zzzm() {
        if (this.zzeag.zzea()) {
            zzea("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzeag.cancel();
        zzasq zzyd = zzyd();
        if (zzyd.zzea()) {
            zzyd.cancel();
        }
    }

    private final long zzzn() {
        if (this.zzeaf != Long.MIN_VALUE) {
            return this.zzeaf;
        }
        long longValue = zzast.zzebt.get().longValue();
        zzatu zzye = zzye();
        zzye.zzyk();
        if (!zzye.zzeez) {
            return longValue;
        }
        zzye().zzyk();
        return r0.zzedg * 1000;
    }

    private final void zzzo() {
        zzyk();
        com.google.android.gms.analytics.zzk.zzwj();
        this.zzeak = true;
        this.zzeae.disconnect();
        zzzk();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void onServiceConnected() {
        com.google.android.gms.analytics.zzk.zzwj();
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (!zzasl.zzzv()) {
            zzed("Service client disabled. Can't dispatch local hits to device AnalyticsService");
        }
        if (!this.zzeae.isConnected()) {
            zzea("Service not connected");
            return;
        }
        if (this.zzeab.isEmpty()) {
            return;
        }
        zzea("Dispatching local hits to device AnalyticsService");
        while (true) {
            try {
                List<zzasy> zzo = this.zzeab.zzo(zzasl.zzzz());
                if (zzo.isEmpty()) {
                    zzzk();
                    return;
                }
                while (!zzo.isEmpty()) {
                    zzasy zzasyVar = zzo.get(0);
                    if (!this.zzeae.zzb(zzasyVar)) {
                        zzzk();
                        return;
                    }
                    zzo.remove(zzasyVar);
                    try {
                        this.zzeab.zzp(zzasyVar.zzaam());
                    } catch (SQLiteException e) {
                        zze("Failed to remove hit that was send for delivery", e);
                        zzzm();
                        return;
                    }
                }
            } catch (SQLiteException e2) {
                zze("Failed to read hits from store", e2);
                zzzm();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void start() {
        zzyk();
        com.google.android.gms.common.internal.zzbq.zza(!this.mStarted, "Analytics backend already started");
        this.mStarted = true;
        zzya().zzd(new zzarz(this));
    }

    public final long zza(zzarn zzarnVar, boolean z) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarnVar);
        zzyk();
        com.google.android.gms.analytics.zzk.zzwj();
        try {
            try {
                this.zzeab.beginTransaction();
                zzart zzartVar = this.zzeab;
                long zzyr = zzarnVar.zzyr();
                String zzxe = zzarnVar.zzxe();
                com.google.android.gms.common.internal.zzbq.zzgv(zzxe);
                zzartVar.zzyk();
                com.google.android.gms.analytics.zzk.zzwj();
                int delete = zzartVar.getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(zzyr), zzxe});
                if (delete > 0) {
                    zzartVar.zza("Deleted property records", Integer.valueOf(delete));
                }
                long zza = this.zzeab.zza(zzarnVar.zzyr(), zzarnVar.zzxe(), zzarnVar.zzys());
                zzarnVar.zzm(zza + 1);
                zzart zzartVar2 = this.zzeab;
                com.google.android.gms.common.internal.zzbq.checkNotNull(zzarnVar);
                zzartVar2.zzyk();
                com.google.android.gms.analytics.zzk.zzwj();
                SQLiteDatabase writableDatabase = zzartVar2.getWritableDatabase();
                Map<String, String> zzjq = zzarnVar.zzjq();
                com.google.android.gms.common.internal.zzbq.checkNotNull(zzjq);
                Uri.Builder builder = new Uri.Builder();
                for (Map.Entry<String, String> entry : zzjq.entrySet()) {
                    builder.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                String encodedQuery = builder.build().getEncodedQuery();
                if (encodedQuery == null) {
                    encodedQuery = "";
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_uid", Long.valueOf(zzarnVar.zzyr()));
                contentValues.put("cid", zzarnVar.zzxe());
                contentValues.put("tid", zzarnVar.zzys());
                contentValues.put("adid", Integer.valueOf(zzarnVar.zzyt() ? 1 : 0));
                contentValues.put("hits_count", Long.valueOf(zzarnVar.zzyu()));
                contentValues.put("params", encodedQuery);
                try {
                    if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                        zzartVar2.zzee("Failed to insert/update a property (got -1)");
                    }
                } catch (SQLiteException e) {
                    zzartVar2.zze("Error storing a property", e);
                }
                this.zzeab.setTransactionSuccessful();
                try {
                    this.zzeab.endTransaction();
                    return zza;
                } catch (SQLiteException e2) {
                    zze("Failed to end transaction", e2);
                    return zza;
                }
            } catch (SQLiteException e3) {
                zze("Failed to update Analytics property", e3);
                try {
                    this.zzeab.endTransaction();
                    return -1L;
                } catch (SQLiteException e4) {
                    zze("Failed to end transaction", e4);
                    return -1L;
                }
            }
        } catch (Throwable th) {
            try {
                this.zzeab.endTransaction();
            } catch (SQLiteException e5) {
                zze("Failed to end transaction", e5);
            }
            throw th;
        }
    }

    public final void zza(zzasy zzasyVar) {
        Pair<String, Long> zzabh;
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (this.zzeak) {
            zzeb("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzasyVar);
        }
        if (TextUtils.isEmpty(zzasyVar.zzaar()) && (zzabh = zzyf().zzabf().zzabh()) != null) {
            Long l = (Long) zzabh.second;
            String str = (String) zzabh.first;
            String valueOf = String.valueOf(l);
            StringBuilder sb = new StringBuilder(1 + String.valueOf(valueOf).length() + String.valueOf(str).length());
            sb.append(valueOf);
            sb.append(":");
            sb.append(str);
            String sb2 = sb.toString();
            HashMap hashMap = new HashMap(zzasyVar.zzjq());
            hashMap.put("_m", sb2);
            zzasyVar = new zzasy(this, hashMap, zzasyVar.zzaan(), zzasyVar.zzaap(), zzasyVar.zzaam(), zzasyVar.zzaal(), zzasyVar.zzaao());
        }
        zzzh();
        if (this.zzeae.zzb(zzasyVar)) {
            zzeb("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.zzeab.zzc(zzasyVar);
            zzzk();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zzxy().zza(zzasyVar, "deliver: failed to insert hit to database");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(zzarn zzarnVar) {
        com.google.android.gms.analytics.zzk.zzwj();
        zzb("Sending first hit to property", zzarnVar.zzys());
        if (zzyf().zzabb().zzu(zzasl.zzaaf())) {
            return;
        }
        String zzabe = zzyf().zzabe();
        if (TextUtils.isEmpty(zzabe)) {
            return;
        }
        zzaqm zza = zzatt.zza(zzxy(), zzabe);
        zzb("Found relevant installation campaign", zza);
        zza(zzarnVar, zza);
    }

    public final void zzb(zzasr zzasrVar) {
        long j = this.zzeaj;
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        long zzabc = zzyf().zzabc();
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(zzabc != 0 ? Math.abs(zzxx().currentTimeMillis() - zzabc) : -1L));
        zzzh();
        try {
            zzzi();
            zzyf().zzabd();
            zzzk();
            if (zzasrVar != null) {
                zzasrVar.zze(null);
            }
            if (this.zzeaj != j) {
                this.zzead.zzaaw();
            }
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            zzyf().zzabd();
            zzzk();
            if (zzasrVar != null) {
                zzasrVar.zze(th);
            }
        }
    }

    public final void zzei(String str) {
        com.google.android.gms.common.internal.zzbq.zzgv(str);
        com.google.android.gms.analytics.zzk.zzwj();
        zzaqm zza = zzatt.zza(zzxy(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzabe = zzyf().zzabe();
        if (str.equals(zzabe)) {
            zzed("Ignoring duplicate install campaign");
            return;
        }
        if (!TextUtils.isEmpty(zzabe)) {
            zzd("Ignoring multiple install campaigns. original, new", zzabe, str);
            return;
        }
        zzyf().zzel(str);
        if (zzyf().zzabb().zzu(zzasl.zzaaf())) {
            zzd("Campaign received too late, ignoring", zza);
            return;
        }
        zzb("Received installation campaign", zza);
        Iterator<zzarn> it = this.zzeab.zzq(0L).iterator();
        while (it.hasNext()) {
            zza(it.next(), zza);
        }
    }

    public final void zzr(long j) {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (j < 0) {
            j = 0;
        }
        this.zzeaf = j;
        zzzk();
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        this.zzeab.initialize();
        this.zzeac.initialize();
        this.zzeae.initialize();
    }

    public final void zzxr() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        zzea("Delete all hits from local store");
        try {
            zzart zzartVar = this.zzeab;
            com.google.android.gms.analytics.zzk.zzwj();
            zzartVar.zzyk();
            zzartVar.getWritableDatabase().delete("hits2", null, null);
            zzart zzartVar2 = this.zzeab;
            com.google.android.gms.analytics.zzk.zzwj();
            zzartVar2.zzyk();
            zzartVar2.getWritableDatabase().delete("properties", null, null);
            zzzk();
        } catch (SQLiteException e) {
            zzd("Failed to delete hits from store", e);
        }
        zzzh();
        if (this.zzeae.zzyv()) {
            zzea("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzxv() {
        com.google.android.gms.analytics.zzk.zzwj();
        this.zzeaj = zzxx().currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzze() {
        zzyk();
        com.google.android.gms.analytics.zzk.zzwj();
        Context context = zzxw().getContext();
        if (!zzatk.zzbj(context)) {
            zzed("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zzatl.zzbn(context)) {
            zzee("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zzbj(context)) {
            zzed("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        zzyf().zzaba();
        if (!zzeh("android.permission.ACCESS_NETWORK_STATE")) {
            zzee("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzzo();
        }
        if (!zzeh("android.permission.INTERNET")) {
            zzee("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzzo();
        }
        if (zzatl.zzbn(getContext())) {
            zzea("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzed("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.zzeak && !this.zzeab.isEmpty()) {
            zzzh();
        }
        zzzk();
    }

    public final void zzzj() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        zzeb("Sync dispatching local hits");
        long j = this.zzeaj;
        zzzh();
        try {
            zzzi();
            zzyf().zzabd();
            zzzk();
            if (this.zzeaj != j) {
                this.zzead.zzaaw();
            }
        } catch (Throwable th) {
            zze("Sync local dispatch failed", th);
            zzzk();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
    
        if (r6 > 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzzk() {
        /*
            r10 = this;
            com.google.android.gms.analytics.zzk.zzwj()
            r10.zzyk()
            boolean r0 = r10.zzeak
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L17
            long r4 = r10.zzzn()
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L17
            r0 = r1
            goto L18
        L17:
            r0 = 0
        L18:
            if (r0 != 0) goto L23
            com.google.android.gms.internal.zzate r0 = r10.zzead
            r0.unregister()
            r10.zzzm()
            return
        L23:
            com.google.android.gms.internal.zzart r0 = r10.zzeab
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L34
            com.google.android.gms.internal.zzate r0 = r10.zzead
            r0.unregister()
            r10.zzzm()
            return
        L34:
            com.google.android.gms.internal.zzasu<java.lang.Boolean> r0 = com.google.android.gms.internal.zzast.zzecu
            java.lang.Object r0 = r0.get()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L4d
            com.google.android.gms.internal.zzate r0 = r10.zzead
            r0.zzaau()
            com.google.android.gms.internal.zzate r0 = r10.zzead
            boolean r1 = r0.isConnected()
        L4d:
            if (r1 == 0) goto Laa
            r10.zzzl()
            long r0 = r10.zzzn()
            com.google.android.gms.internal.zzath r4 = r10.zzyf()
            long r4 = r4.zzabc()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L77
            com.google.android.gms.common.util.zze r6 = r10.zzxx()
            long r6 = r6.currentTimeMillis()
            long r8 = r6 - r4
            long r4 = java.lang.Math.abs(r8)
            long r6 = r0 - r4
            int r4 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r4 <= 0) goto L77
            goto L7f
        L77:
            long r2 = com.google.android.gms.internal.zzasl.zzzx()
            long r6 = java.lang.Math.min(r2, r0)
        L7f:
            java.lang.String r0 = "Dispatch scheduled (ms)"
            java.lang.Long r1 = java.lang.Long.valueOf(r6)
            r10.zza(r0, r1)
            com.google.android.gms.internal.zzasn r0 = r10.zzeag
            boolean r0 = r0.zzea()
            if (r0 == 0) goto La4
            r0 = 1
            com.google.android.gms.internal.zzasn r2 = r10.zzeag
            long r2 = r2.zzaag()
            long r4 = r6 + r2
            long r0 = java.lang.Math.max(r0, r4)
            com.google.android.gms.internal.zzasn r2 = r10.zzeag
            r2.zzt(r0)
            return
        La4:
            com.google.android.gms.internal.zzasn r0 = r10.zzeag
            r0.zzs(r6)
            return
        Laa:
            r10.zzzm()
            r10.zzzl()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzarw.zzzk():void");
    }
}
