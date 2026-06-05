package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzaql;
import com.google.android.gms.internal.zzaqq;
import com.google.android.gms.internal.zzatt;
import java.lang.Thread;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@Hide
/* loaded from: classes.dex */
public final class zzk {
    private static volatile zzk zzdvk;
    private final Context mContext;
    private final List<zzn> zzdvl;
    private final zze zzdvm;
    private final zza zzdvn;
    private volatile zzaql zzdvo;
    private Thread.UncaughtExceptionHandler zzdvp;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class zza extends ThreadPoolExecutor {
        public zza() {
            super(1, 1, 1L, TimeUnit.MINUTES, new LinkedBlockingQueue());
            setThreadFactory(new zzb(null));
            allowCoreThreadTimeOut(true);
        }

        @Override // java.util.concurrent.AbstractExecutorService
        protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new zzm(this, runnable, t);
        }
    }

    /* loaded from: classes.dex */
    static class zzb implements ThreadFactory {
        private static final AtomicInteger zzdvt = new AtomicInteger();

        private zzb() {
        }

        /* synthetic */ zzb(zzl zzlVar) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            int incrementAndGet = zzdvt.incrementAndGet();
            StringBuilder sb = new StringBuilder(23);
            sb.append("measurement-");
            sb.append(incrementAndGet);
            return new zzc(runnable, sb.toString());
        }
    }

    /* loaded from: classes.dex */
    static class zzc extends Thread {
        zzc(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private zzk(Context context) {
        Context applicationContext = context.getApplicationContext();
        zzbq.checkNotNull(applicationContext);
        this.mContext = applicationContext;
        this.zzdvn = new zza();
        this.zzdvl = new CopyOnWriteArrayList();
        this.zzdvm = new zze();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(zzg zzgVar) {
        zzbq.zzgw("deliver should be called from worker thread");
        zzbq.checkArgument(zzgVar.zzwb(), "Measurement must be submitted");
        List<zzo> transports = zzgVar.getTransports();
        if (transports.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (zzo zzoVar : transports) {
            Uri zzvu = zzoVar.zzvu();
            if (!hashSet.contains(zzvu)) {
                hashSet.add(zzvu);
                zzoVar.zzb(zzgVar);
            }
        }
    }

    public static zzk zzbk(Context context) {
        zzbq.checkNotNull(context);
        if (zzdvk == null) {
            synchronized (zzk.class) {
                if (zzdvk == null) {
                    zzdvk = new zzk(context);
                }
            }
        }
        return zzdvk;
    }

    @Hide
    public static void zzwj() {
        if (!(Thread.currentThread() instanceof zzc)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Hide
    public final Context getContext() {
        return this.mContext;
    }

    @Hide
    public final <V> Future<V> zza(Callable<V> callable) {
        zzbq.checkNotNull(callable);
        if (!(Thread.currentThread() instanceof zzc)) {
            return this.zzdvn.submit(callable);
        }
        FutureTask futureTask = new FutureTask(callable);
        futureTask.run();
        return futureTask;
    }

    public final void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzdvp = uncaughtExceptionHandler;
    }

    @Hide
    public final void zzd(Runnable runnable) {
        zzbq.checkNotNull(runnable);
        this.zzdvn.submit(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(zzg zzgVar) {
        if (zzgVar.zzwe()) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        }
        if (zzgVar.zzwb()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        }
        zzg zzvx = zzgVar.zzvx();
        zzvx.zzwc();
        this.zzdvn.execute(new zzl(this, zzvx));
    }

    public final zzaql zzwh() {
        if (this.zzdvo == null) {
            synchronized (this) {
                if (this.zzdvo == null) {
                    zzaql zzaqlVar = new zzaql();
                    PackageManager packageManager = this.mContext.getPackageManager();
                    String packageName = this.mContext.getPackageName();
                    zzaqlVar.setAppId(packageName);
                    zzaqlVar.setAppInstallerId(packageManager.getInstallerPackageName(packageName));
                    String str = null;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.mContext.getPackageName(), 0);
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                packageName = applicationLabel.toString();
                            }
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        String valueOf = String.valueOf(packageName);
                        Log.e("GAv4", valueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(valueOf) : new String("Error retrieving package info: appName set to "));
                    }
                    zzaqlVar.setAppName(packageName);
                    zzaqlVar.setAppVersion(str);
                    this.zzdvo = zzaqlVar;
                }
            }
        }
        return this.zzdvo;
    }

    public final zzaqq zzwi() {
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        zzaqq zzaqqVar = new zzaqq();
        zzaqqVar.setLanguage(zzatt.zza(Locale.getDefault()));
        zzaqqVar.zzcly = displayMetrics.widthPixels;
        zzaqqVar.zzclz = displayMetrics.heightPixels;
        return zzaqqVar;
    }
}
