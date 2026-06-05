package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzark;
import com.google.android.gms.internal.zzast;
import com.google.android.gms.internal.zzatc;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzats;
import com.google.android.gms.internal.zzatu;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class GoogleAnalytics extends com.google.android.gms.analytics.zza {
    private static List<Runnable> zzduj = new ArrayList();
    private boolean zzarf;
    private Set<zza> zzduk;
    private boolean zzdul;
    private boolean zzdum;
    private volatile boolean zzdun;
    private boolean zzduo;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface zza {
        void zzm(Activity activity);

        void zzn(Activity activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(14)
    /* loaded from: classes.dex */
    public class zzb implements Application.ActivityLifecycleCallbacks {
        zzb() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.zzk(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.zzl(activity);
        }
    }

    @Hide
    public GoogleAnalytics(zzark zzarkVar) {
        super(zzarkVar);
        this.zzduk = new HashSet();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static GoogleAnalytics getInstance(Context context) {
        return zzark.zzbl(context).zzyn();
    }

    @Hide
    public static void zzvw() {
        synchronized (GoogleAnalytics.class) {
            if (zzduj != null) {
                Iterator<Runnable> it = zzduj.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                zzduj = null;
            }
        }
    }

    public final void dispatchLocalHits() {
        zzvr().zzyc().zzxs();
    }

    @TargetApi(14)
    public final void enableAutoActivityReports(Application application) {
        if (this.zzdul) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new zzb());
        this.zzdul = true;
    }

    public final boolean getAppOptOut() {
        return this.zzdun;
    }

    @Deprecated
    public final Logger getLogger() {
        return zzatc.getLogger();
    }

    @Hide
    public final void initialize() {
        zzatu zzye = zzvr().zzye();
        zzye.zzabm();
        if (zzye.zzabn()) {
            setDryRun(zzye.zzabo());
        }
        zzye.zzabm();
        this.zzarf = true;
    }

    public final boolean isDryRunEnabled() {
        return this.zzdum;
    }

    @Hide
    public final boolean isInitialized() {
        return this.zzarf;
    }

    public final Tracker newTracker(int i) {
        Tracker tracker;
        zzats zzav;
        synchronized (this) {
            tracker = new Tracker(zzvr(), null, null);
            if (i > 0 && (zzav = new zzatq(zzvr()).zzav(i)) != null) {
                tracker.zza(zzav);
            }
            tracker.initialize();
        }
        return tracker;
    }

    public final Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzvr(), str, null);
            tracker.initialize();
        }
        return tracker;
    }

    public final void reportActivityStart(Activity activity) {
        if (this.zzdul) {
            return;
        }
        zzk(activity);
    }

    public final void reportActivityStop(Activity activity) {
        if (this.zzdul) {
            return;
        }
        zzl(activity);
    }

    public final void setAppOptOut(boolean z) {
        this.zzdun = z;
        if (this.zzdun) {
            zzvr().zzyc().zzxr();
        }
    }

    public final void setDryRun(boolean z) {
        this.zzdum = z;
    }

    public final void setLocalDispatchPeriod(int i) {
        zzvr().zzyc().setLocalDispatchPeriod(i);
    }

    @Deprecated
    public final void setLogger(Logger logger) {
        zzatc.setLogger(logger);
        if (this.zzduo) {
            return;
        }
        String str = zzast.zzebn.get();
        String str2 = zzast.zzebn.get();
        StringBuilder sb = new StringBuilder(112 + String.valueOf(str2).length());
        sb.append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
        sb.append(str2);
        sb.append(" DEBUG");
        Log.i(str, sb.toString());
        this.zzduo = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zza zzaVar) {
        this.zzduk.add(zzaVar);
        Context context = zzvr().getContext();
        if (context instanceof Application) {
            enableAutoActivityReports((Application) context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zza zzaVar) {
        this.zzduk.remove(zzaVar);
    }

    final void zzk(Activity activity) {
        Iterator<zza> it = this.zzduk.iterator();
        while (it.hasNext()) {
            it.next().zzm(activity);
        }
    }

    final void zzl(Activity activity) {
        Iterator<zza> it = this.zzduk.iterator();
        while (it.hasNext()) {
            it.next().zzn(activity);
        }
    }
}
