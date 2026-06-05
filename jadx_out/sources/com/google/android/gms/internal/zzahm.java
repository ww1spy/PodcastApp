package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahm {
    private String mSessionId;
    private long zzdec = -1;
    private long zzded = -1;
    private int zzdee = -1;
    int zzdef = -1;
    private long zzdeg = 0;
    private final Object mLock = new Object();
    private int zzdeh = 0;
    private int zzdei = 0;

    public zzahm(String str) {
        this.mSessionId = str;
    }

    private static boolean zzae(Context context) {
        int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier != 0) {
            try {
                if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                    return true;
                }
                zzahw.zzcy("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                return false;
            } catch (PackageManager.NameNotFoundException unused) {
                zzahw.zzcz("Fail to fetch AdActivity theme");
            }
        }
        zzahw.zzcy("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
        return false;
    }

    public final void zzb(zzkk zzkkVar, long j) {
        synchronized (this.mLock) {
            long zzqw = com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqw();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
            if (this.zzded == -1) {
                if (currentTimeMillis - zzqw > ((Long) zzlc.zzio().zzd(zzoi.zzbpc)).longValue()) {
                    this.zzdef = -1;
                } else {
                    this.zzdef = com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqx();
                }
                this.zzded = j;
                j = this.zzded;
            }
            this.zzdec = j;
            if (zzkkVar == null || zzkkVar.extras == null || zzkkVar.extras.getInt("gw", 2) != 1) {
                this.zzdee++;
                this.zzdef++;
                if (this.zzdef == 0) {
                    this.zzdeg = 0L;
                    com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzk(currentTimeMillis);
                } else {
                    this.zzdeg = currentTimeMillis - com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqy();
                }
            }
        }
    }

    public final Bundle zzk(Context context, String str) {
        Bundle bundle;
        synchronized (this.mLock) {
            bundle = new Bundle();
            bundle.putString("session_id", this.mSessionId);
            bundle.putLong("basets", this.zzded);
            bundle.putLong("currts", this.zzdec);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzdee);
            bundle.putInt("preqs_in_session", this.zzdef);
            bundle.putLong("time_in_session", this.zzdeg);
            bundle.putInt("pclick", this.zzdeh);
            bundle.putInt("pimp", this.zzdei);
            bundle.putBoolean("support_transparent_background", zzae(context));
        }
        return bundle;
    }

    public final void zzpk() {
        synchronized (this.mLock) {
            this.zzdei++;
        }
    }

    public final void zzpl() {
        synchronized (this.mLock) {
            this.zzdeh++;
        }
    }
}
