package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzahs implements zzajb<zzalt> {
    private volatile Thread zzdeq;
    private final Runnable zzy = new zzaht(this);
    private boolean zzder = false;

    public zzahs() {
    }

    public zzahs(boolean z) {
    }

    @Override // com.google.android.gms.internal.zzajb
    public final void cancel() {
        onStop();
        if (this.zzdeq != null) {
            this.zzdeq.interrupt();
        }
    }

    public abstract void onStop();

    public abstract void zzdo();

    @Override // com.google.android.gms.internal.zzajb
    public final /* synthetic */ zzalt zzns() {
        return this.zzder ? zzaid.zza(1, this.zzy) : zzaid.zzb(this.zzy);
    }

    public final zzalt zzqj() {
        return this.zzder ? zzaid.zza(1, this.zzy) : zzaid.zzb(this.zzy);
    }
}
