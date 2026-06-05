package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzgr implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final long zzaxh = ((Long) zzlc.zzio().zzd(zzoi.zzbqm)).longValue();
    private final Context mApplicationContext;
    private final WindowManager zzavz;
    private final PowerManager zzawa;
    private final KeyguardManager zzawb;

    @Nullable
    private BroadcastReceiver zzawj;
    private final Rect zzawm;
    private Application zzaxi;
    private WeakReference<ViewTreeObserver> zzaxj;
    private WeakReference<View> zzaxk;
    private zzgw zzaxl;
    private final DisplayMetrics zzaxo;
    private zzake zzavf = new zzake(zzaxh);
    private boolean zzawi = false;
    private int zzaxm = -1;
    private final HashSet<zzgv> zzaxn = new HashSet<>();

    public zzgr(Context context, View view) {
        this.mApplicationContext = context.getApplicationContext();
        this.zzavz = (WindowManager) context.getSystemService("window");
        this.zzawa = (PowerManager) this.mApplicationContext.getSystemService("power");
        this.zzawb = (KeyguardManager) context.getSystemService("keyguard");
        if (this.mApplicationContext instanceof Application) {
            this.zzaxi = (Application) this.mApplicationContext;
            this.zzaxl = new zzgw((Application) this.mApplicationContext, this);
        }
        this.zzaxo = context.getResources().getDisplayMetrics();
        this.zzawm = new Rect();
        this.zzawm.right = this.zzavz.getDefaultDisplay().getWidth();
        this.zzawm.bottom = this.zzavz.getDefaultDisplay().getHeight();
        View view2 = this.zzaxk != null ? this.zzaxk.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzf(view2);
        }
        this.zzaxk = new WeakReference<>(view);
        if (view != null) {
            if (com.google.android.gms.ads.internal.zzbt.zzen().isAttachedToWindow(view)) {
                zze(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final Rect zza(Rect rect) {
        return new Rect(zzn(rect.left), zzn(rect.top), zzn(rect.right), zzn(rect.bottom));
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzaxk == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.zzaxk.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.zzaxm = i;
    }

    private final void zzat() {
        com.google.android.gms.ads.internal.zzbt.zzel();
        zzaij.zzdfn.post(new zzgs(this));
    }

    private final void zze(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzaxj = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzawj == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzawj = new zzgt(this);
            com.google.android.gms.ads.internal.zzbt.zzfk().zza(this.mApplicationContext, this.zzawj, intentFilter);
        }
        if (this.zzaxi != null) {
            try {
                this.zzaxi.registerActivityLifecycleCallbacks(this.zzaxl);
            } catch (Exception e) {
                zzahw.zzb("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private final void zzf(View view) {
        try {
            if (this.zzaxj != null) {
                ViewTreeObserver viewTreeObserver = this.zzaxj.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzaxj = null;
            }
        } catch (Exception e) {
            zzahw.zzb("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzahw.zzb("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.zzawj != null) {
            try {
                com.google.android.gms.ads.internal.zzbt.zzfk().zza(this.mApplicationContext, this.zzawj);
            } catch (IllegalStateException e3) {
                zzahw.zzb("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                com.google.android.gms.ads.internal.zzbt.zzep().zza(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.zzawj = null;
        }
        if (this.zzaxi != null) {
            try {
                this.zzaxi.unregisterActivityLifecycleCallbacks(this.zzaxl);
            } catch (Exception e5) {
                zzahw.zzb("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i) {
        boolean z;
        boolean z2;
        if (this.zzaxn.size() == 0 || this.zzaxk == null) {
            return;
        }
        View view = this.zzaxk.get();
        boolean z3 = i == 1;
        boolean z4 = view == null;
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect2);
            boolean localVisibleRect = view.getLocalVisibleRect(rect3);
            view.getHitRect(rect4);
            try {
                view.getLocationOnScreen(iArr);
                view.getLocationInWindow(iArr2);
            } catch (Exception e) {
                zzahw.zzb("Failure getting view location.", e);
            }
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
            z = globalVisibleRect;
            z2 = localVisibleRect;
        } else {
            z = false;
            z2 = false;
        }
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        if (this.zzaxm != -1) {
            windowVisibility = this.zzaxm;
        }
        boolean z5 = !z4 && com.google.android.gms.ads.internal.zzbt.zzel().zza(view, this.zzawa, this.zzawb) && z && z2 && windowVisibility == 0;
        if (z3 && !this.zzavf.tryAcquire() && z5 == this.zzawi) {
            return;
        }
        if (z5 || this.zzawi || i != 1) {
            zzgu zzguVar = new zzgu(com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime(), this.zzawa.isScreenOn(), view != null ? com.google.android.gms.ads.internal.zzbt.zzen().isAttachedToWindow(view) : false, view != null ? view.getWindowVisibility() : 8, zza(this.zzawm), zza(rect), zza(rect2), z, zza(rect3), z2, zza(rect4), this.zzaxo.density, z5);
            Iterator<zzgv> it = this.zzaxn.iterator();
            while (it.hasNext()) {
                it.next().zza(zzguVar);
            }
            this.zzawi = z5;
        }
    }

    private final int zzn(int i) {
        return (int) (i / this.zzaxo.density);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzm(3);
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzm(3);
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzm(3);
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzm(3);
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzm(3);
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzm(3);
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzm(3);
        zzat();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzm(2);
        zzat();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzm(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzaxm = -1;
        zze(view);
        zzm(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzaxm = -1;
        zzm(3);
        zzat();
        zzf(view);
    }

    public final void zza(zzgv zzgvVar) {
        this.zzaxn.add(zzgvVar);
        zzm(3);
    }

    public final void zzb(zzgv zzgvVar) {
        this.zzaxn.remove(zzgvVar);
    }

    public final void zzgm() {
        zzm(4);
    }
}
