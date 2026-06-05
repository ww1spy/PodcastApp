package com.google.android.gms.internal;

import android.content.ComponentName;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import java.util.Collections;

@Hide
/* loaded from: classes.dex */
public final class zzaro extends zzari {
    private final zzarq zzdzm;
    private zzasz zzdzn;
    private final zzasn zzdzo;
    private final zzatp zzdzp;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaro(zzark zzarkVar) {
        super(zzarkVar);
        this.zzdzp = new zzatp(zzarkVar.zzxx());
        this.zzdzm = new zzarq(this);
        this.zzdzo = new zzarp(this, zzarkVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.analytics.zzk.zzwj();
        if (this.zzdzn != null) {
            this.zzdzn = null;
            zza("Disconnected from device AnalyticsService", componentName);
            zzyc().zzxu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzasz zzaszVar) {
        com.google.android.gms.analytics.zzk.zzwj();
        this.zzdzn = zzaszVar;
        zzyw();
        zzyc().onServiceConnected();
    }

    private final void zzyw() {
        this.zzdzp.start();
        this.zzdzo.zzs(zzast.zzecv.get().longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzyx() {
        com.google.android.gms.analytics.zzk.zzwj();
        if (isConnected()) {
            zzea("Inactivity, disconnecting from device AnalyticsService");
            disconnect();
        }
    }

    public final boolean connect() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        if (this.zzdzn != null) {
            return true;
        }
        zzasz zzyy = this.zzdzm.zzyy();
        if (zzyy == null) {
            return false;
        }
        this.zzdzn = zzyy;
        zzyw();
        return true;
    }

    public final void disconnect() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        try {
            com.google.android.gms.common.stats.zza.zzanm();
            getContext().unbindService(this.zzdzm);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        if (this.zzdzn != null) {
            this.zzdzn = null;
            zzyc().zzxu();
        }
    }

    public final boolean isConnected() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        return this.zzdzn != null;
    }

    public final boolean zzb(zzasy zzasyVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        zzasz zzaszVar = this.zzdzn;
        if (zzaszVar == null) {
            return false;
        }
        try {
            zzaszVar.zza(zzasyVar.zzjq(), zzasyVar.zzaan(), zzasyVar.zzaap() ? zzasl.zzaab() : zzasl.zzaac(), Collections.emptyList());
            zzyw();
            return true;
        } catch (RemoteException unused) {
            zzea("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
    }

    public final boolean zzyv() {
        com.google.android.gms.analytics.zzk.zzwj();
        zzyk();
        zzasz zzaszVar = this.zzdzn;
        if (zzaszVar == null) {
            return false;
        }
        try {
            zzaszVar.zzxr();
            zzyw();
            return true;
        } catch (RemoteException unused) {
            zzea("Failed to clear hits from AnalyticsService");
            return false;
        }
    }
}
