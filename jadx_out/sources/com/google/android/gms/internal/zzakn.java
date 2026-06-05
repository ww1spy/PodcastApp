package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;

@zzabh
/* loaded from: classes.dex */
public final class zzakn {
    private final View mView;
    private Activity zzdid;
    private boolean zzdie;
    private boolean zzdif;
    private boolean zzdig;
    private ViewTreeObserver.OnGlobalLayoutListener zzdih;
    private ViewTreeObserver.OnScrollChangedListener zzdii;

    public zzakn(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzdid = activity;
        this.mView = view;
        this.zzdih = onGlobalLayoutListener;
        this.zzdii = onScrollChangedListener;
    }

    private static ViewTreeObserver zzj(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    private final void zzrx() {
        if (this.zzdie) {
            return;
        }
        if (this.zzdih != null) {
            if (this.zzdid != null) {
                Activity activity = this.zzdid;
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzdih;
                ViewTreeObserver zzj = zzj(activity);
                if (zzj != null) {
                    zzj.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            com.google.android.gms.ads.internal.zzbt.zzfg();
            zzaml.zza(this.mView, this.zzdih);
        }
        if (this.zzdii != null) {
            if (this.zzdid != null) {
                Activity activity2 = this.zzdid;
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.zzdii;
                ViewTreeObserver zzj2 = zzj(activity2);
                if (zzj2 != null) {
                    zzj2.addOnScrollChangedListener(onScrollChangedListener);
                }
            }
            com.google.android.gms.ads.internal.zzbt.zzfg();
            zzaml.zza(this.mView, this.zzdii);
        }
        this.zzdie = true;
    }

    private final void zzry() {
        if (this.zzdid != null && this.zzdie) {
            if (this.zzdih != null) {
                Activity activity = this.zzdid;
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzdih;
                ViewTreeObserver zzj = zzj(activity);
                if (zzj != null) {
                    com.google.android.gms.ads.internal.zzbt.zzen().zza(zzj, onGlobalLayoutListener);
                }
            }
            if (this.zzdii != null) {
                Activity activity2 = this.zzdid;
                ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.zzdii;
                ViewTreeObserver zzj2 = zzj(activity2);
                if (zzj2 != null) {
                    zzj2.removeOnScrollChangedListener(onScrollChangedListener);
                }
            }
            this.zzdie = false;
        }
    }

    public final void onAttachedToWindow() {
        this.zzdif = true;
        if (this.zzdig) {
            zzrx();
        }
    }

    public final void onDetachedFromWindow() {
        this.zzdif = false;
        zzry();
    }

    public final void zzi(Activity activity) {
        this.zzdid = activity;
    }

    public final void zzrv() {
        this.zzdig = true;
        if (this.zzdif) {
            zzrx();
        }
    }

    public final void zzrw() {
        this.zzdig = false;
        zzry();
    }
}
