package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahy {
    private SharedPreferences zzbkx;
    private zzalt<?> zzdet;
    SharedPreferences.Editor zzdev;
    private String zzdex;
    private String zzdey;
    private final Object mLock = new Object();
    private CopyOnWriteArraySet<zzaic> zzdeu = new CopyOnWriteArraySet<>();
    private boolean zzdew = false;
    private boolean zzcxd = true;
    private boolean zzcxm = false;
    private String zzddm = "";
    private long zzdez = 0;
    private long zzdfa = 0;
    private long zzdfb = 0;
    private int zzdef = -1;
    private int zzdfc = 0;
    private Set<String> zzdfd = Collections.emptySet();
    private JSONObject zzdfe = new JSONObject();
    private boolean zzcxe = true;
    private boolean zzcxf = true;

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(Bundle bundle) {
        new zzaia(this, bundle).zzns();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public static boolean zzql() {
        return Build.VERSION.SDK_INT >= 23 && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    private final void zzqm() {
        if (this.zzdet == null || this.zzdet.isDone()) {
            return;
        }
        try {
            this.zzdet.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            zzahw.zzc("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException | ExecutionException | TimeoutException e2) {
            zzahw.zzb("Fail to initialize AdSharedPreferenceManager.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bundle zzqn() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.mLock) {
            bundle.putBoolean("use_https", this.zzcxd);
            bundle.putBoolean("content_url_opted_out", this.zzcxe);
            bundle.putBoolean("content_vertical_opted_out", this.zzcxf);
            bundle.putBoolean("auto_collect_location", this.zzcxm);
            bundle.putInt("version_code", this.zzdfc);
            bundle.putStringArray("never_pool_slots", (String[]) this.zzdfd.toArray(new String[this.zzdfd.size()]));
            bundle.putString("app_settings_json", this.zzddm);
            bundle.putLong("app_settings_last_update_ms", this.zzdez);
            bundle.putLong("app_last_background_time_ms", this.zzdfa);
            bundle.putInt("request_in_session_count", this.zzdef);
            bundle.putLong("first_ad_req_time_ms", this.zzdfb);
            bundle.putString("native_advanced_settings", this.zzdfe.toString());
            if (this.zzdex != null) {
                bundle.putString("content_url_hashes", this.zzdex);
            }
            if (this.zzdey != null) {
                bundle.putString("content_vertical_hashes", this.zzdey);
            }
        }
        return bundle;
    }

    public final void initialize(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.zzdet = (zzalt) new zzahz(this, context).zzns();
    }

    public final void zza(zzaic zzaicVar) {
        synchronized (this.mLock) {
            if (this.zzdet != null && this.zzdet.isDone()) {
                zzaicVar.zzb(zzqn());
            }
            this.zzdeu.add(zzaicVar);
        }
    }

    public final void zza(String str, String str2, boolean z) {
        zzqm();
        synchronized (this.mLock) {
            JSONArray optJSONArray = this.zzdfe.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    return;
                }
                if (str2.equals(optJSONObject.optString("template_id"))) {
                    if (z && optJSONObject.optBoolean("uses_media_view", false) == z) {
                        return;
                    } else {
                        length = i;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis());
                optJSONArray.put(length, jSONObject);
                this.zzdfe.put(str, optJSONArray);
            } catch (JSONException e) {
                zzahw.zzc("Could not update native advanced settings", e);
            }
            if (this.zzdev != null) {
                this.zzdev.putString("native_advanced_settings", this.zzdfe.toString());
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", this.zzdfe.toString());
            zzc(bundle);
        }
    }

    public final void zzaa(boolean z) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzcxd == z) {
                return;
            }
            this.zzcxd = z;
            if (this.zzdev != null) {
                this.zzdev.putBoolean("use_https", z);
                this.zzdev.apply();
            }
            if (!this.zzdew) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("use_https", z);
                zzc(bundle);
            }
        }
    }

    public final void zzab(boolean z) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzcxe == z) {
                return;
            }
            this.zzcxe = z;
            if (this.zzdev != null) {
                this.zzdev.putBoolean("content_url_opted_out", z);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.zzcxe);
            bundle.putBoolean("content_vertical_opted_out", this.zzcxf);
            zzc(bundle);
        }
    }

    public final void zzac(int i) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzdfc == i) {
                return;
            }
            this.zzdfc = i;
            if (this.zzdev != null) {
                this.zzdev.putInt("version_code", i);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("version_code", i);
            zzc(bundle);
        }
    }

    public final void zzac(boolean z) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzcxf == z) {
                return;
            }
            this.zzcxf = z;
            if (this.zzdev != null) {
                this.zzdev.putBoolean("content_vertical_opted_out", z);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.zzcxe);
            bundle.putBoolean("content_vertical_opted_out", this.zzcxf);
            zzc(bundle);
        }
    }

    public final void zzad(int i) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzdef == i) {
                return;
            }
            this.zzdef = i;
            if (this.zzdev != null) {
                this.zzdev.putInt("request_in_session_count", i);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request_in_session_count", i);
            zzc(bundle);
        }
    }

    public final void zzad(boolean z) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzcxm == z) {
                return;
            }
            this.zzcxm = z;
            if (this.zzdev != null) {
                this.zzdev.putBoolean("auto_collect_location", z);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", z);
            zzc(bundle);
        }
    }

    public final void zzcb(String str) {
        zzqm();
        synchronized (this.mLock) {
            if (str != null) {
                try {
                    if (!str.equals(this.zzdex)) {
                        this.zzdex = str;
                        if (this.zzdev != null) {
                            this.zzdev.putString("content_url_hashes", str);
                            this.zzdev.apply();
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString("content_url_hashes", str);
                        zzc(bundle);
                    }
                } finally {
                }
            }
        }
    }

    public final void zzcc(String str) {
        zzqm();
        synchronized (this.mLock) {
            if (str != null) {
                try {
                    if (!str.equals(this.zzdey)) {
                        this.zzdey = str;
                        if (this.zzdev != null) {
                            this.zzdev.putString("content_vertical_hashes", str);
                            this.zzdev.apply();
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString("content_vertical_hashes", str);
                        zzc(bundle);
                    }
                } finally {
                }
            }
        }
    }

    public final void zzcd(String str) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzdfd.contains(str)) {
                return;
            }
            this.zzdfd.add(str);
            if (this.zzdev != null) {
                this.zzdev.putStringSet("never_pool_slots", this.zzdfd);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putStringArray("never_pool_slots", (String[]) this.zzdfd.toArray(new String[this.zzdfd.size()]));
            zzc(bundle);
        }
    }

    public final void zzce(String str) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzdfd.contains(str)) {
                this.zzdfd.remove(str);
                if (this.zzdev != null) {
                    this.zzdev.putStringSet("never_pool_slots", this.zzdfd);
                    this.zzdev.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putStringArray("never_pool_slots", (String[]) this.zzdfd.toArray(new String[this.zzdfd.size()]));
                zzc(bundle);
            }
        }
    }

    public final boolean zzcf(String str) {
        boolean contains;
        zzqm();
        synchronized (this.mLock) {
            contains = this.zzdfd.contains(str);
        }
        return contains;
    }

    public final void zzcg(String str) {
        zzqm();
        synchronized (this.mLock) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
            this.zzdez = currentTimeMillis;
            if (str != null && !str.equals(this.zzddm)) {
                this.zzddm = str;
                if (this.zzdev != null) {
                    this.zzdev.putString("app_settings_json", str);
                    this.zzdev.putLong("app_settings_last_update_ms", currentTimeMillis);
                    this.zzdev.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", str);
                bundle.putLong("app_settings_last_update_ms", currentTimeMillis);
                zzc(bundle);
            }
        }
    }

    public final void zzj(long j) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzdfa == j) {
                return;
            }
            this.zzdfa = j;
            if (this.zzdev != null) {
                this.zzdev.putLong("app_last_background_time_ms", j);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", j);
            zzc(bundle);
        }
    }

    public final void zzk(long j) {
        zzqm();
        synchronized (this.mLock) {
            if (this.zzdfb == j) {
                return;
            }
            this.zzdfb = j;
            if (this.zzdev != null) {
                this.zzdev.putLong("first_ad_req_time_ms", j);
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("first_ad_req_time_ms", j);
            zzc(bundle);
        }
    }

    public final boolean zzqo() {
        boolean z;
        zzqm();
        synchronized (this.mLock) {
            z = this.zzcxd || this.zzdew;
        }
        return z;
    }

    public final boolean zzqp() {
        boolean z;
        zzqm();
        synchronized (this.mLock) {
            z = this.zzcxe;
        }
        return z;
    }

    public final String zzqq() {
        String str;
        zzqm();
        synchronized (this.mLock) {
            str = this.zzdex;
        }
        return str;
    }

    public final boolean zzqr() {
        boolean z;
        zzqm();
        synchronized (this.mLock) {
            z = this.zzcxf;
        }
        return z;
    }

    public final String zzqs() {
        String str;
        zzqm();
        synchronized (this.mLock) {
            str = this.zzdey;
        }
        return str;
    }

    public final boolean zzqt() {
        boolean z;
        zzqm();
        synchronized (this.mLock) {
            z = this.zzcxm;
        }
        return z;
    }

    public final int zzqu() {
        int i;
        zzqm();
        synchronized (this.mLock) {
            i = this.zzdfc;
        }
        return i;
    }

    public final zzahh zzqv() {
        zzahh zzahhVar;
        zzqm();
        synchronized (this.mLock) {
            zzahhVar = new zzahh(this.zzddm, this.zzdez);
        }
        return zzahhVar;
    }

    public final long zzqw() {
        long j;
        zzqm();
        synchronized (this.mLock) {
            j = this.zzdfa;
        }
        return j;
    }

    public final int zzqx() {
        int i;
        zzqm();
        synchronized (this.mLock) {
            i = this.zzdef;
        }
        return i;
    }

    public final long zzqy() {
        long j;
        zzqm();
        synchronized (this.mLock) {
            j = this.zzdfb;
        }
        return j;
    }

    public final JSONObject zzqz() {
        JSONObject jSONObject;
        zzqm();
        synchronized (this.mLock) {
            jSONObject = this.zzdfe;
        }
        return jSONObject;
    }

    public final void zzra() {
        zzqm();
        synchronized (this.mLock) {
            this.zzdfe = new JSONObject();
            if (this.zzdev != null) {
                this.zzdev.remove("native_advanced_settings");
                this.zzdev.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            zzc(bundle);
        }
    }
}
