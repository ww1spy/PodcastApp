package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzdu implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private static final Handler zzaju = new Handler(Looper.getMainLooper());
    private final zzdm zzagq;
    private Application zzaih;
    private final Context zzajv;
    private final PowerManager zzajw;
    private final KeyguardManager zzajx;
    private BroadcastReceiver zzajy;
    private WeakReference<ViewTreeObserver> zzajz;
    private WeakReference<View> zzaka;
    private zzda zzakb;
    private boolean zzakc = false;
    private int zzakd = -1;
    private long zzake = -3;

    public zzdu(zzdm zzdmVar, View view) {
        this.zzagq = zzdmVar;
        this.zzajv = zzdmVar.zzaiq;
        this.zzajw = (PowerManager) this.zzajv.getSystemService("power");
        this.zzajx = (KeyguardManager) this.zzajv.getSystemService("keyguard");
        if (this.zzajv instanceof Application) {
            this.zzaih = (Application) this.zzajv;
            this.zzakb = new zzda((Application) this.zzajv, this);
        }
        zzd(view);
    }

    private final void zza(Activity activity, int i) {
        Window window;
        if (this.zzaka == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = this.zzaka.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.zzakd = i;
    }

    private final void zzat() {
        zzaju.post(new zzdv(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
    
        if (r4 == false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzav() {
        /*
            r9 = this;
            java.lang.ref.WeakReference<android.view.View> r0 = r9.zzaka
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.ref.WeakReference<android.view.View> r0 = r9.zzaka
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            r1 = 0
            if (r0 != 0) goto L17
            r2 = -3
            r9.zzake = r2
            r9.zzakc = r1
            return
        L17:
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            boolean r2 = r0.getGlobalVisibleRect(r2)
            android.graphics.Rect r3 = new android.graphics.Rect
            r3.<init>()
            boolean r3 = r0.getLocalVisibleRect(r3)
            com.google.android.gms.internal.zzdm r4 = r9.zzagq
            boolean r4 = r4.zzal()
            r5 = 1
            if (r4 != 0) goto L5d
            android.app.KeyguardManager r4 = r9.zzajx
            boolean r4 = r4.inKeyguardRestrictedInputMode()
            if (r4 == 0) goto L5b
            android.app.Activity r4 = com.google.android.gms.internal.zzds.zzc(r0)
            if (r4 == 0) goto L57
            android.view.Window r4 = r4.getWindow()
            if (r4 != 0) goto L48
            r4 = 0
            goto L4c
        L48:
            android.view.WindowManager$LayoutParams r4 = r4.getAttributes()
        L4c:
            if (r4 == 0) goto L57
            int r4 = r4.flags
            r6 = 524288(0x80000, float:7.34684E-40)
            r4 = r4 & r6
            if (r4 == 0) goto L57
            r4 = r5
            goto L58
        L57:
            r4 = r1
        L58:
            if (r4 == 0) goto L5b
            goto L5d
        L5b:
            r4 = r1
            goto L5e
        L5d:
            r4 = r5
        L5e:
            int r6 = r0.getWindowVisibility()
            int r7 = r9.zzakd
            r8 = -1
            if (r7 == r8) goto L69
            int r6 = r9.zzakd
        L69:
            int r7 = r0.getVisibility()
            if (r7 != 0) goto L86
            boolean r0 = r0.isShown()
            if (r0 == 0) goto L86
            android.os.PowerManager r0 = r9.zzajw
            boolean r0 = r0.isScreenOn()
            if (r0 == 0) goto L86
            if (r4 == 0) goto L86
            if (r3 == 0) goto L86
            if (r2 == 0) goto L86
            if (r6 != 0) goto L86
            r1 = r5
        L86:
            boolean r0 = r9.zzakc
            if (r0 == r1) goto L97
            if (r1 == 0) goto L91
            long r2 = android.os.SystemClock.elapsedRealtime()
            goto L93
        L91:
            r2 = -2
        L93:
            r9.zzake = r2
            r9.zzakc = r1
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdu.zzav():void");
    }

    private final void zze(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzajz = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzajy == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzajy = new zzdw(this);
            this.zzajv.registerReceiver(this.zzajy, intentFilter);
        }
        if (this.zzaih != null) {
            try {
                this.zzaih.registerActivityLifecycleCallbacks(this.zzakb);
            } catch (Exception unused) {
            }
        }
    }

    private final void zzf(View view) {
        try {
            if (this.zzajz != null) {
                ViewTreeObserver viewTreeObserver = this.zzajz.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzajz = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        if (this.zzajy != null) {
            try {
                this.zzajv.unregisterReceiver(this.zzajy);
            } catch (Exception unused3) {
            }
            this.zzajy = null;
        }
        if (this.zzaih != null) {
            try {
                this.zzaih.unregisterActivityLifecycleCallbacks(this.zzakb);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzav();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzav();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzav();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzav();
        zzat();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzav();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzav();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzav();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzav();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzav();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzakd = -1;
        zze(view);
        zzav();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzakd = -1;
        zzav();
        zzat();
        zzf(view);
    }

    public final long zzau() {
        if (this.zzake == -2 && this.zzaka.get() == null) {
            this.zzake = -3L;
        }
        return this.zzake;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(View view) {
        long j;
        View view2 = this.zzaka != null ? this.zzaka.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzf(view2);
        }
        this.zzaka = new WeakReference<>(view);
        if (view != null) {
            if ((view.getWindowToken() == null && view.getWindowVisibility() == 8) ? false : true) {
                zze(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.zzake = j;
    }
}
