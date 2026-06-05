package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzabb implements zzabf {
    private static final Object sLock = new Object();
    private static zzabf zzcqv;
    private static zzabf zzcqw;
    private final ExecutorService zzair;
    private final zzala zzarg;
    private final Context zzbky;
    private final Object zzcqx;
    private final WeakHashMap<Thread, Boolean> zzcqy;

    private zzabb(Context context) {
        this(context, zzala.zzse());
    }

    private zzabb(Context context, zzala zzalaVar) {
        this.zzcqx = new Object();
        this.zzcqy = new WeakHashMap<>();
        this.zzair = Executors.newCachedThreadPool();
        this.zzbky = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzarg = zzalaVar;
    }

    private final Uri.Builder zza(String str, String str2, String str3, int i) {
        boolean z;
        try {
            z = zzbih.zzdd(this.zzbky).zzaoe();
        } catch (Throwable th) {
            zzaky.zzb("Error fetching instant app info", th);
            z = false;
        }
        String str4 = EnvironmentCompat.MEDIA_UNKNOWN;
        try {
            str4 = this.zzbky.getPackageName();
        } catch (Throwable unused) {
            zzaky.zzcz("Cannot obtain package name, proceeding.");
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
        String str5 = Build.MANUFACTURER;
        String str6 = Build.MODEL;
        if (!str6.startsWith(str5)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 1 + String.valueOf(str6).length());
            sb.append(str5);
            sb.append(" ");
            sb.append(str6);
            str6 = sb.toString();
        }
        return appendQueryParameter.appendQueryParameter("device", str6).appendQueryParameter("js", this.zzarg.zzcu).appendQueryParameter("appid", str4).appendQueryParameter("exceptiontype", str).appendQueryParameter("stacktrace", str2).appendQueryParameter("eids", TextUtils.join(",", zzoi.zzjf())).appendQueryParameter("exceptionkey", str3).appendQueryParameter("cl", "190237664").appendQueryParameter("rc", "dev").appendQueryParameter("session_id", zzlc.zzil()).appendQueryParameter(SettingsJsonConstants.ANALYTICS_SAMPLING_RATE_KEY, Integer.toString(1)).appendQueryParameter("pb_tm", String.valueOf(zzlc.zzio().zzd(zzoi.zzbvt)));
    }

    public static zzabf zzc(Context context, zzala zzalaVar) {
        synchronized (sLock) {
            if (zzcqw == null) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbli)).booleanValue()) {
                    zzabb zzabbVar = new zzabb(context, zzalaVar);
                    Thread thread = Looper.getMainLooper().getThread();
                    if (thread != null) {
                        synchronized (zzabbVar.zzcqx) {
                            zzabbVar.zzcqy.put(thread, true);
                        }
                        thread.setUncaughtExceptionHandler(new zzabd(zzabbVar, thread.getUncaughtExceptionHandler()));
                    }
                    Thread.setDefaultUncaughtExceptionHandler(new zzabc(zzabbVar, Thread.getDefaultUncaughtExceptionHandler()));
                    zzcqw = zzabbVar;
                } else {
                    zzcqw = new zzabg();
                }
            }
        }
        return zzcqw;
    }

    public static zzabf zzj(Context context) {
        synchronized (sLock) {
            if (zzcqv == null) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbli)).booleanValue()) {
                    zzcqv = new zzabb(context);
                } else {
                    zzcqv = new zzabg();
                }
            }
        }
        return zzcqv;
    }

    private final void zzo(List<String> list) {
        for (String str : list) {
            this.zzair.submit(new zzabe(this, new zzakz(), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(Thread thread, Throwable th) {
        boolean z;
        if (th != null) {
            boolean z2 = false;
            boolean z3 = false;
            Throwable th2 = th;
            while (th2 != null) {
                boolean z4 = z3;
                boolean z5 = z2;
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    if (zzako.zzcv(stackTraceElement.getClassName())) {
                        z5 = true;
                    }
                    if (getClass().getName().equals(stackTraceElement.getClassName())) {
                        z4 = true;
                    }
                }
                th2 = th2.getCause();
                z2 = z5;
                z3 = z4;
            }
            if (z2 && !z3) {
                z = true;
                if (z || zzako.zzc(th) == null) {
                }
                String name = th.getClass().getName();
                StringWriter stringWriter = new StringWriter();
                zzdyq.zza(th, new PrintWriter(stringWriter));
                String stringWriter2 = stringWriter.toString();
                if (Math.random() < 1.0d) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(zza(name, stringWriter2, "", 1).toString());
                    zzo(arrayList);
                    return;
                }
                return;
            }
        }
        z = false;
        if (z) {
        }
    }

    @Override // com.google.android.gms.internal.zzabf
    public final void zza(Throwable th, String str) {
        if (zzako.zzc(th) != null) {
            String name = th.getClass().getName();
            StringWriter stringWriter = new StringWriter();
            zzdyq.zza(th, new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            if (Math.random() < 1.0d) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(zza(name, stringWriter2, str, 1).toString());
                zzo(arrayList);
            }
        }
    }
}
