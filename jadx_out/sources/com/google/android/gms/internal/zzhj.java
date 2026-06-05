package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
/* loaded from: classes.dex */
public final class zzhj implements Application.ActivityLifecycleCallbacks {

    @Nullable
    private Activity mActivity;
    private Context mContext;
    private Runnable zzaza;
    private long zzazb;
    private final Object mLock = new Object();
    private boolean zzayw = true;
    private boolean zzayx = false;
    private final List<zzhl> zzayy = new ArrayList();
    private final List<zzhy> zzayz = new ArrayList();
    private boolean zzarf = false;

    private final void setActivity(Activity activity) {
        synchronized (this.mLock) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.mActivity = activity;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(zzhj zzhjVar, boolean z) {
        zzhjVar.zzayw = false;
        return false;
    }

    @Nullable
    public final Activity getActivity() {
        return this.mActivity;
    }

    @Nullable
    public final Context getContext() {
        return this.mContext;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.mLock) {
            if (this.mActivity == null) {
                return;
            }
            if (this.mActivity.equals(activity)) {
                this.mActivity = null;
            }
            Iterator<zzhy> it = this.zzayz.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().zza(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    zzahw.zzb("onActivityStateChangedListener threw exception.", e);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        setActivity(activity);
        synchronized (this.mLock) {
            Iterator<zzhy> it = this.zzayz.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityPaused(activity);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzahw.zzb("onActivityStateChangedListener threw exception.", e);
                }
            }
        }
        this.zzayx = true;
        if (this.zzaza != null) {
            zzaij.zzdfn.removeCallbacks(this.zzaza);
        }
        Handler handler = zzaij.zzdfn;
        zzhk zzhkVar = new zzhk(this);
        this.zzaza = zzhkVar;
        handler.postDelayed(zzhkVar, this.zzazb);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        setActivity(activity);
        this.zzayx = false;
        boolean z = !this.zzayw;
        this.zzayw = true;
        if (this.zzaza != null) {
            zzaij.zzdfn.removeCallbacks(this.zzaza);
        }
        synchronized (this.mLock) {
            Iterator<zzhy> it = this.zzayz.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityResumed(activity);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzahw.zzb("onActivityStateChangedListener threw exception.", e);
                }
            }
            if (z) {
                Iterator<zzhl> it2 = this.zzayy.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().zzh(true);
                    } catch (Exception e2) {
                        zzahw.zzb("OnForegroundStateChangedListener threw exception.", e2);
                    }
                }
            } else {
                zzahw.zzby("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        setActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    public final void zza(Application application, Context context) {
        if (this.zzarf) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            setActivity((Activity) context);
        }
        this.mContext = application;
        this.zzazb = ((Long) zzlc.zzio().zzd(zzoi.zzbpb)).longValue();
        this.zzarf = true;
    }

    public final void zza(zzhl zzhlVar) {
        synchronized (this.mLock) {
            this.zzayy.add(zzhlVar);
        }
    }
}
