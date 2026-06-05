package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzhi {
    private final Object zzayt = new Object();
    private zzhj zzayu = null;
    private boolean zzayv = false;

    @Nullable
    public final Activity getActivity() {
        synchronized (this.zzayt) {
            if (this.zzayu == null) {
                return null;
            }
            return this.zzayu.getActivity();
        }
    }

    @Nullable
    public final Context getContext() {
        synchronized (this.zzayt) {
            if (this.zzayu == null) {
                return null;
            }
            return this.zzayu.getContext();
        }
    }

    public final void initialize(Context context) {
        synchronized (this.zzayt) {
            if (!this.zzayv) {
                if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbpa)).booleanValue()) {
                    return;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    zzahw.zzcz("Can not cast Context to Application");
                    return;
                }
                if (this.zzayu == null) {
                    this.zzayu = new zzhj();
                }
                this.zzayu.zza(application, context);
                this.zzayv = true;
            }
        }
    }

    public final void zza(zzhl zzhlVar) {
        synchronized (this.zzayt) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbpa)).booleanValue()) {
                if (this.zzayu == null) {
                    this.zzayu = new zzhj();
                }
                this.zzayu.zza(zzhlVar);
            }
        }
    }
}
