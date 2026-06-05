package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaeq extends zzaey {
    private final Context mContext;
    private final Object mLock;
    private final zzala zzapq;
    private final zzaer zzczt;

    public zzaeq(Context context, com.google.android.gms.ads.internal.zzv zzvVar, zzwf zzwfVar, zzala zzalaVar) {
        this(context, zzalaVar, new zzaer(context, zzvVar, zzko.zzib(), zzwfVar, zzalaVar));
    }

    private zzaeq(Context context, zzala zzalaVar, zzaer zzaerVar) {
        this.mLock = new Object();
        this.mContext = context;
        this.zzapq = zzalaVar;
        this.zzczt = zzaerVar;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void destroy() {
        zzd(null);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final String getMediationAdapterClassName() {
        String mediationAdapterClassName;
        synchronized (this.mLock) {
            mediationAdapterClassName = this.zzczt.getMediationAdapterClassName();
        }
        return mediationAdapterClassName;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final boolean isLoaded() {
        boolean isLoaded;
        synchronized (this.mLock) {
            isLoaded = this.zzczt.isLoaded();
        }
        return isLoaded;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void pause() {
        zzb(null);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void resume() {
        zzc(null);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void setImmersiveMode(boolean z) {
        synchronized (this.mLock) {
            this.zzczt.setImmersiveMode(z);
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void setUserId(String str) {
        synchronized (this.mLock) {
            this.zzczt.setUserId(str);
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void show() {
        synchronized (this.mLock) {
            this.zzczt.zzov();
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zza(zzafc zzafcVar) {
        synchronized (this.mLock) {
            this.zzczt.zza(zzafcVar);
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zza(zzafi zzafiVar) {
        synchronized (this.mLock) {
            this.zzczt.zza(zzafiVar);
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzb(IObjectWrapper iObjectWrapper) {
        synchronized (this.mLock) {
            this.zzczt.pause();
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzc(IObjectWrapper iObjectWrapper) {
        Context context;
        synchronized (this.mLock) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                try {
                    context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
                } catch (Exception e) {
                    zzahw.zzc("Unable to extract updated context.", e);
                }
            }
            if (context != null) {
                this.zzczt.onContextChanged(context);
            }
            this.zzczt.resume();
        }
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzd(IObjectWrapper iObjectWrapper) {
        synchronized (this.mLock) {
            this.zzczt.destroy();
        }
    }
}
