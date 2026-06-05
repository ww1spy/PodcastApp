package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.json.JSONException;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public final class zzaji {
    private final Object mLock = new Object();
    private String zzdgh = "";
    private String zzdgi = "";
    private boolean zzdgj = false;
    private String zzdgk = "";

    private final void zza(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzaij.zzdfn.post(new zzajj(this, context, str, z, z2));
        } else {
            zzahw.zzcy("Can not create dialog without Activity Context");
        }
    }

    private final String zzaw(Context context) {
        String str;
        synchronized (this.mLock) {
            if (TextUtils.isEmpty(this.zzdgh)) {
                com.google.android.gms.ads.internal.zzbt.zzel();
                this.zzdgh = zzaij.zzm(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.zzdgh)) {
                    com.google.android.gms.ads.internal.zzbt.zzel();
                    this.zzdgh = zzaij.zzrc();
                    com.google.android.gms.ads.internal.zzbt.zzel();
                    zzaij.zzf(context, "debug_signals_id.txt", this.zzdgh);
                }
            }
            str = this.zzdgh;
        }
        return str;
    }

    private final Uri zzc(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", zzaw(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    private final boolean zzh(Context context, String str, String str2) {
        String zzj = zzj(context, zzc(context, (String) zzlc.zzio().zzd(zzoi.zzbuu), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzj)) {
            zzahw.zzby("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zzj.trim());
            String optString = jSONObject.optString("gct");
            this.zzdgk = jSONObject.optString("status");
            synchronized (this.mLock) {
                this.zzdgi = optString;
            }
            return true;
        } catch (JSONException e) {
            zzahw.zzc("Fail to get in app preview response json.", e);
            return false;
        }
    }

    private final boolean zzi(Context context, String str, String str2) {
        String zzj = zzj(context, zzc(context, (String) zzlc.zzio().zzd(zzoi.zzbuv), str, str2).toString(), str2);
        if (TextUtils.isEmpty(zzj)) {
            zzahw.zzby("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = NotificationPreferences.YES.equals(new JSONObject(zzj.trim()).optString("debug_mode"));
            synchronized (this.mLock) {
                this.zzdgj = equals;
            }
            return equals;
        } catch (JSONException e) {
            zzahw.zzc("Fail to get debug mode response json.", e);
            return false;
        }
    }

    private static String zzj(Context context, String str, String str2) {
        String str3;
        String valueOf;
        String str4;
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzbt.zzel().zzl(context, str2));
        zzalt<String> zzb = new zzajr(context).zzb(str, hashMap);
        try {
            return zzb.get(((Integer) zzlc.zzio().zzd(zzoi.zzbux)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e = e;
            str3 = "Interrupted while retriving a response from: ";
            valueOf = String.valueOf(str);
            if (valueOf.length() == 0) {
                str4 = new String("Interrupted while retriving a response from: ");
                zzahw.zzb(str4, e);
                zzb.cancel(true);
                return null;
            }
            str4 = str3.concat(valueOf);
            zzahw.zzb(str4, e);
            zzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            e = e2;
            str3 = "Timeout while retriving a response from: ";
            valueOf = String.valueOf(str);
            if (valueOf.length() == 0) {
                str4 = new String("Timeout while retriving a response from: ");
                zzahw.zzb(str4, e);
                zzb.cancel(true);
                return null;
            }
            str4 = str3.concat(valueOf);
            zzahw.zzb(str4, e);
            zzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf2 = String.valueOf(str);
            zzahw.zzb(valueOf2.length() != 0 ? "Error retriving a response from: ".concat(valueOf2) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    private final void zzk(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzbt.zzel();
        zzaij.zza(context, zzc(context, (String) zzlc.zzio().zzd(zzoi.zzbut), str, str2));
    }

    public final void zza(Context context, String str, String str2, String str3) {
        boolean zzrr = zzrr();
        if (!zzi(context, str, str2)) {
            zzk(context, str, str2);
            return;
        }
        if (!zzrr && !TextUtils.isEmpty(str3)) {
            zzb(context, str2, str3, str);
        }
        zzahw.zzby("Device is linked for debug signals.");
        zza(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final void zzb(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = zzc(context, (String) zzlc.zzio().zzd(zzoi.zzbuw), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzbt.zzel();
        zzaij.zze(context, str, buildUpon.build().toString());
    }

    public final void zzg(Context context, String str, String str2) {
        if (!zzh(context, str, str2)) {
            zza(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
            return;
        }
        if ("2".equals(this.zzdgk)) {
            zzahw.zzby("Creative is not pushed for this device.");
            zza(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if (NotificationPreferences.YES.equals(this.zzdgk)) {
            zzahw.zzby("The app is not linked for creative preview.");
            zzk(context, str, str2);
        } else if (NotificationPreferences.NO.equals(this.zzdgk)) {
            zzahw.zzby("Device is linked for in app preview.");
            zza(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final String zzrq() {
        String str;
        synchronized (this.mLock) {
            str = this.zzdgi;
        }
        return str;
    }

    public final boolean zzrr() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzdgj;
        }
        return z;
    }
}
