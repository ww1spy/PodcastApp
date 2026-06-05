package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public final class zzagf implements zzagq {
    private static List<Future<Void>> zzday = Collections.synchronizedList(new ArrayList());
    private static ScheduledExecutorService zzdaz = Executors.newSingleThreadScheduledExecutor();
    private final Context mContext;
    private final zzagn zzcxr;
    private final zzflw zzdba;
    private final LinkedHashMap<String, zzfme> zzdbb;
    private final zzags zzdbc;

    @VisibleForTesting
    private boolean zzdbd;
    private final Object mLock = new Object();
    private HashSet<String> zzdbe = new HashSet<>();
    private boolean zzdbf = false;
    private boolean zzdbg = false;
    private boolean zzdbh = false;

    public zzagf(Context context, zzala zzalaVar, zzagn zzagnVar, String str, zzags zzagsVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzagnVar, "SafeBrowsing config is not present.");
        this.mContext = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdbb = new LinkedHashMap<>();
        this.zzdbc = zzagsVar;
        this.zzcxr = zzagnVar;
        Iterator<String> it = this.zzcxr.zzdbr.iterator();
        while (it.hasNext()) {
            this.zzdbe.add(it.next().toLowerCase(Locale.ENGLISH));
        }
        this.zzdbe.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzflw zzflwVar = new zzflw();
        zzflwVar.zzbdh = 8;
        zzflwVar.url = str;
        zzflwVar.zzpwg = str;
        zzflwVar.zzpwi = new zzflx();
        zzflwVar.zzpwi.zzdbn = this.zzcxr.zzdbn;
        zzfmf zzfmfVar = new zzfmf();
        zzfmfVar.zzpxp = zzalaVar.zzcu;
        zzfmfVar.zzpxr = Boolean.valueOf(zzbih.zzdd(this.mContext).zzaoe());
        com.google.android.gms.common.zzf.zzahf();
        long zzcg = com.google.android.gms.common.zzf.zzcg(this.mContext);
        if (zzcg > 0) {
            zzfmfVar.zzpxq = Long.valueOf(zzcg);
        }
        zzflwVar.zzpws = zzfmfVar;
        this.zzdba = zzflwVar;
    }

    @Nullable
    private final zzfme zzbw(String str) {
        zzfme zzfmeVar;
        synchronized (this.mLock) {
            zzfmeVar = this.zzdbb.get(str);
        }
        return zzfmeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Void zzbx(String str) {
        return null;
    }

    @VisibleForTesting
    private final zzalt<Void> zzpi() {
        zzalt<Void> zza;
        if (!((this.zzdbd && this.zzcxr.zzdbt) || (this.zzdbh && this.zzcxr.zzdbs) || (!this.zzdbd && this.zzcxr.zzdbq))) {
            return zzali.zzh(null);
        }
        synchronized (this.mLock) {
            this.zzdba.zzpwj = new zzfme[this.zzdbb.size()];
            this.zzdbb.values().toArray(this.zzdba.zzpwj);
            if (zzagp.isEnabled()) {
                String str = this.zzdba.url;
                String str2 = this.zzdba.zzpwk;
                StringBuilder sb = new StringBuilder(53 + String.valueOf(str).length() + String.valueOf(str2).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(str);
                sb.append("\n  clickUrl: ");
                sb.append(str2);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzfme zzfmeVar : this.zzdba.zzpwj) {
                    sb2.append("    [");
                    sb2.append(zzfmeVar.zzpxo.length);
                    sb2.append("] ");
                    sb2.append(zzfmeVar.url);
                }
                zzagp.zzby(sb2.toString());
            }
            zzalt<String> zza2 = new zzajr(this.mContext).zza(1, this.zzcxr.zzdbo, null, zzfls.zzc(this.zzdba));
            if (zzagp.isEnabled()) {
                zza2.zza(new zzagk(this), zzaid.zzdfi);
            }
            zza = zzali.zza(zza2, zzagh.zzdbj, zzaly.zzdju);
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.zzagq
    public final void zza(String str, Map<String, String> map, int i) {
        synchronized (this.mLock) {
            if (i == 3) {
                try {
                    this.zzdbh = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.zzdbb.containsKey(str)) {
                if (i == 3) {
                    this.zzdbb.get(str).zzpxn = Integer.valueOf(i);
                }
                return;
            }
            zzfme zzfmeVar = new zzfme();
            zzfmeVar.zzpxn = Integer.valueOf(i);
            zzfmeVar.zzjsx = Integer.valueOf(this.zzdbb.size());
            zzfmeVar.url = str;
            zzfmeVar.zzpxi = new zzflz();
            if (this.zzdbe.size() > 0 && map != null) {
                LinkedList linkedList = new LinkedList();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    try {
                        String key = entry.getKey() != null ? entry.getKey() : "";
                        String value = entry.getValue() != null ? entry.getValue() : "";
                        if (this.zzdbe.contains(key.toLowerCase(Locale.ENGLISH))) {
                            zzfly zzflyVar = new zzfly();
                            zzflyVar.zzpwu = key.getBytes(HttpRequest.CHARSET_UTF8);
                            zzflyVar.zzosz = value.getBytes(HttpRequest.CHARSET_UTF8);
                            linkedList.add(zzflyVar);
                        }
                    } catch (UnsupportedEncodingException unused) {
                        zzagp.zzby("Cannot convert string to bytes, skip header.");
                    }
                }
                zzfly[] zzflyVarArr = new zzfly[linkedList.size()];
                linkedList.toArray(zzflyVarArr);
                zzfmeVar.zzpxi.zzpww = zzflyVarArr;
            }
            this.zzdbb.put(str, zzfmeVar);
        }
    }

    @Override // com.google.android.gms.internal.zzagq
    public final void zzbv(String str) {
        synchronized (this.mLock) {
            this.zzdba.zzpwk = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzalt zzp(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.mLock) {
                            int length = optJSONArray.length();
                            zzfme zzbw = zzbw(str);
                            if (zzbw == null) {
                                String valueOf = String.valueOf(str);
                                zzagp.zzby(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                zzbw.zzpxo = new String[length];
                                for (int i = 0; i < length; i++) {
                                    zzbw.zzpxo[i] = optJSONArray.getJSONObject(i).getString("threat_type");
                                }
                                this.zzdbd = (length > 0) | this.zzdbd;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbty)).booleanValue()) {
                    zzahw.zza("Failed to get SafeBrowsing metadata", e);
                }
                return zzali.zzd(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zzdbd) {
            synchronized (this.mLock) {
                this.zzdba.zzbdh = 9;
            }
        }
        return zzpi();
    }

    @Override // com.google.android.gms.internal.zzagq
    public final zzagn zzpe() {
        return this.zzcxr;
    }

    @Override // com.google.android.gms.internal.zzagq
    public final boolean zzpf() {
        return com.google.android.gms.common.util.zzs.zzanv() && this.zzcxr.zzdbp && !this.zzdbg;
    }

    @Override // com.google.android.gms.internal.zzagq
    public final void zzpg() {
        this.zzdbf = true;
    }

    @Override // com.google.android.gms.internal.zzagq
    public final void zzph() {
        synchronized (this.mLock) {
            zzalt zza = zzali.zza(this.zzdbc.zza(this.mContext, this.zzdbb.keySet()), new zzald(this) { // from class: com.google.android.gms.internal.zzagg
                private final zzagf zzdbi;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdbi = this;
                }

                @Override // com.google.android.gms.internal.zzald
                public final zzalt zzc(Object obj) {
                    return this.zzdbi.zzp((Map) obj);
                }
            }, zzaly.zzdju);
            zzalt zza2 = zzali.zza(zza, 10L, TimeUnit.SECONDS, zzdaz);
            zzali.zza(zza, new zzagj(this, zza2), zzaly.zzdju);
            zzday.add(zza2);
        }
    }

    @Override // com.google.android.gms.internal.zzagq
    public final void zzq(View view) {
        if (this.zzcxr.zzdbp && !this.zzdbg) {
            com.google.android.gms.ads.internal.zzbt.zzel();
            Bitmap zzs = zzaij.zzs(view);
            if (zzs == null) {
                zzagp.zzby("Failed to capture the webview bitmap.");
            } else {
                this.zzdbg = true;
                zzaij.zzc(new zzagi(this, zzs));
            }
        }
    }
}
