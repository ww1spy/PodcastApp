package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;

@Hide
/* loaded from: classes.dex */
final class zzgw implements Application.ActivityLifecycleCallbacks {
    private final Application zzaxi;
    private final WeakReference<Application.ActivityLifecycleCallbacks> zzaya;
    private boolean zzayb = false;

    public zzgw(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzaya = new WeakReference<>(activityLifecycleCallbacks);
        this.zzaxi = application;
    }

    private final void zza(zzhe zzheVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.zzaya.get();
            if (activityLifecycleCallbacks != null) {
                zzheVar.zza(activityLifecycleCallbacks);
            } else {
                if (this.zzayb) {
                    return;
                }
                this.zzaxi.unregisterActivityLifecycleCallbacks(this);
                this.zzayb = true;
            }
        } catch (Exception e) {
            zzahw.zzb("Error while dispatching lifecycle callback.", e);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzgx(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zza(new zzhd(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(new zzha(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(new zzgz(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzhc(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(new zzgy(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zza(new zzhb(this, activity));
    }
}
