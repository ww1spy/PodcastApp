package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Hide;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes.dex */
public final class zzfo extends zzfn {
    private static final Object zzkti = new Object();
    private static zzfo zzktu;
    private Context zzktj;
    private zzcc zzktk;
    private volatile zzbz zzktl;
    private zzfr zzktr;
    private zzdo zzkts;
    private int zzktm = 1800000;
    private boolean zzktn = true;
    private boolean zzkto = false;
    private boolean connected = true;
    private boolean zzktp = true;
    private zzcd zzktq = new zzfp(this);
    private boolean zzktt = false;

    private zzfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isPowerSaveMode() {
        return this.zzktt || !this.connected || this.zzktm <= 0;
    }

    public static zzfo zzbhz() {
        if (zzktu == null) {
            zzktu = new zzfo();
        }
        return zzktu;
    }

    @Override // com.google.android.gms.tagmanager.zzfn
    public final synchronized void dispatch() {
        if (this.zzkto) {
            this.zzktl.zzm(new zzfq(this));
        } else {
            zzdj.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.zzktn = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zza(Context context, zzbz zzbzVar) {
        if (this.zzktj != null) {
            return;
        }
        this.zzktj = context.getApplicationContext();
        if (this.zzktl == null) {
            this.zzktl = zzbzVar;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzfn
    public final synchronized void zzbhy() {
        if (!isPowerSaveMode()) {
            this.zzktr.zzbic();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized zzcc zzbia() {
        if (this.zzktk == null) {
            if (this.zzktj == null) {
                throw new IllegalStateException("Cant get a store unless we have a context");
            }
            this.zzktk = new zzec(this.zzktq, this.zzktj);
        }
        if (this.zzktr == null) {
            this.zzktr = new zzfs(this, null);
            if (this.zzktm > 0) {
                this.zzktr.zzs(this.zzktm);
            }
        }
        this.zzkto = true;
        if (this.zzktn) {
            dispatch();
            this.zzktn = false;
        }
        if (this.zzkts == null && this.zzktp) {
            this.zzkts = new zzdo(this);
            zzdo zzdoVar = this.zzkts;
            Context context = this.zzktj;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            context.registerReceiver(zzdoVar, intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("com.google.analytics.RADIO_POWERED");
            intentFilter2.addCategory(context.getPackageName());
            context.registerReceiver(zzdoVar, intentFilter2);
        }
        return this.zzktk;
    }

    @Override // com.google.android.gms.tagmanager.zzfn
    public final synchronized void zzca(boolean z) {
        zzd(this.zzktt, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzd(boolean z, boolean z2) {
        boolean isPowerSaveMode = isPowerSaveMode();
        this.zzktt = z;
        this.connected = z2;
        if (isPowerSaveMode() == isPowerSaveMode) {
            return;
        }
        if (isPowerSaveMode()) {
            this.zzktr.cancel();
            zzdj.v("PowerSaveMode initiated.");
        } else {
            this.zzktr.zzs(this.zzktm);
            zzdj.v("PowerSaveMode terminated.");
        }
    }
}
