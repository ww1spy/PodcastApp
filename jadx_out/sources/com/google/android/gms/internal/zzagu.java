package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzagu {
    private final AtomicReference<ThreadPoolExecutor> zzdbv = new AtomicReference<>(null);
    private final Object zzdbw = new Object();

    @Nullable
    private String zzdbx = null;
    private AtomicBoolean zzdby = new AtomicBoolean(false);
    private final AtomicInteger zzdbz = new AtomicInteger(-1);
    private final AtomicReference<Object> zzdca = new AtomicReference<>(null);
    private final AtomicReference<Object> zzdcb = new AtomicReference<>(null);
    private ConcurrentMap<String, Method> zzdcc = new ConcurrentHashMap(9);

    private static Bundle zza(Context context, String str, boolean z) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            zzahw.zzb(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if (z) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final Object zza(String str, Context context) {
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdca, true)) {
            return null;
        }
        try {
            return zzi(context, str).invoke(this.zzdca.get(), new Object[0]);
        } catch (Exception e) {
            zza(e, str, true);
            return null;
        }
    }

    private final void zza(Context context, String str, Bundle bundle) {
        if (zzq(context) && zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdca, true)) {
            try {
                zzaa(context).invoke(this.zzdca.get(), "am", str, bundle);
            } catch (Exception e) {
                zza(e, "logEventInternal", true);
            }
        }
    }

    private final void zza(Exception exc, String str, boolean z) {
        if (this.zzdby.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder(30 + String.valueOf(str).length());
        sb.append("Invoke Firebase method ");
        sb.append(str);
        sb.append(" error.");
        zzahw.zzcz(sb.toString());
        if (z) {
            zzahw.zzcz("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.zzdby.set(true);
        }
    }

    private final boolean zza(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() != null) {
            return true;
        }
        try {
            atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            return true;
        } catch (Exception e) {
            zza(e, "getInstance", z);
            return false;
        }
    }

    private final Method zzaa(Context context) {
        Method method = this.zzdcc.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.zzdcc.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, "logEventInternal", true);
            return null;
        }
    }

    private final void zzb(Context context, String str, String str2) {
        if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdca, true)) {
            try {
                zzh(context, str2).invoke(this.zzdca.get(), str);
                StringBuilder sb = new StringBuilder(37 + String.valueOf(str2).length() + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzahw.v(sb.toString());
            } catch (Exception e) {
                zza(e, str2, false);
            }
        }
    }

    private final Method zzh(Context context, String str) {
        Method method = this.zzdcc.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.zzdcc.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, str, false);
            return null;
        }
    }

    private final Method zzi(Context context, String str) {
        Method method = this.zzdcc.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzdcc.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, str, false);
            return null;
        }
    }

    private final Method zzj(Context context, String str) {
        Method method = this.zzdcc.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.zzdcc.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            zza(e, str, false);
            return null;
        }
    }

    public final void zza(Context context, String str, String str2) {
        if (zzq(context)) {
            zza(context, str, zza(context, str2, "_ac".equals(str)));
        }
    }

    public final void zza(Context context, String str, String str2, String str3, int i) {
        if (zzq(context)) {
            Bundle zza = zza(context, str, false);
            zza.putString("_ai", str2);
            zza.putString("type", str3);
            zza.putInt("value", i);
            zza(context, "_ar", zza);
            StringBuilder sb = new StringBuilder(75 + String.valueOf(str3).length());
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i);
            zzahw.v(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String zzab(Context context) throws Exception {
        return (String) zza("getAppInstanceId", context);
    }

    public final void zzb(Context context, String str) {
        if (zzq(context)) {
            zzb(context, str, "beginAdUnitExposure");
        }
    }

    public final void zzc(Context context, String str) {
        if (zzq(context)) {
            zzb(context, str, "endAdUnitExposure");
        }
    }

    public final void zzd(Context context, String str) {
        if (zzq(context) && (context instanceof Activity) && zza(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzdcb, false)) {
            try {
                zzj(context, "setCurrentScreen").invoke(this.zzdcb.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception e) {
                zza(e, "setCurrentScreen", false);
            }
        }
    }

    public final void zze(Context context, String str) {
        zza(context, "_ac", str);
    }

    public final void zzf(Context context, String str) {
        zza(context, "_ai", str);
    }

    public final void zzg(Context context, String str) {
        zza(context, "_aq", str);
    }

    public final boolean zzq(Context context) {
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbog)).booleanValue() || this.zzdby.get()) {
            return false;
        }
        if (this.zzdbz.get() == -1) {
            zzlc.zzij();
            if (!zzako.zzbb(context)) {
                zzlc.zzij();
                if (zzako.zzbe(context)) {
                    zzahw.zzcz("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.zzdbz.set(0);
                }
            }
            this.zzdbz.set(1);
        }
        return this.zzdbz.get() == 1;
    }

    public final boolean zzr(Context context) {
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzboh)).booleanValue() && zzq(context);
    }

    public final boolean zzs(Context context) {
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzboi)).booleanValue() && zzq(context);
    }

    public final boolean zzt(Context context) {
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzboj)).booleanValue() && zzq(context);
    }

    public final boolean zzu(Context context) {
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzbok)).booleanValue() && zzq(context);
    }

    public final boolean zzv(Context context) {
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzbon)).booleanValue() && zzq(context);
    }

    public final String zzw(Context context) {
        if (!zzq(context) || !zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdca, true)) {
            return "";
        }
        try {
            String str = (String) zzi(context, "getCurrentScreenName").invoke(this.zzdca.get(), new Object[0]);
            if (str == null) {
                str = (String) zzi(context, "getCurrentScreenClass").invoke(this.zzdca.get(), new Object[0]);
            }
            return str != null ? str : "";
        } catch (Exception e) {
            zza(e, "getCurrentScreenName", false);
            return "";
        }
    }

    @Nullable
    public final String zzx(Context context) {
        if (!zzq(context)) {
            return null;
        }
        synchronized (this.zzdbw) {
            if (this.zzdbx != null) {
                return this.zzdbx;
            }
            this.zzdbx = (String) zza("getGmpAppId", context);
            return this.zzdbx;
        }
    }

    @Nullable
    public final String zzy(final Context context) {
        if (!zzq(context)) {
            return null;
        }
        long longValue = ((Long) zzlc.zzio().zzd(zzoi.zzboq)).longValue();
        if (longValue < 0) {
            return (String) zza("getAppInstanceId", context);
        }
        if (this.zzdbv.get() == null) {
            this.zzdbv.compareAndSet(null, new ThreadPoolExecutor(((Integer) zzlc.zzio().zzd(zzoi.zzbor)).intValue(), ((Integer) zzlc.zzio().zzd(zzoi.zzbor)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzagw(this)));
        }
        Future submit = this.zzdbv.get().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.zzagv
            private final zzagu zzdcd;
            private final Context zzdce;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdcd = this;
                this.zzdce = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzdcd.zzab(this.zzdce);
            }
        });
        try {
            return (String) submit.get(longValue, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            submit.cancel(true);
            if (e instanceof TimeoutException) {
                return "TIME_OUT";
            }
            return null;
        }
    }

    @Nullable
    public final String zzz(Context context) {
        Object zza;
        if (zzq(context) && (zza = zza("generateEventId", context)) != null) {
            return zza.toString();
        }
        return null;
    }
}
