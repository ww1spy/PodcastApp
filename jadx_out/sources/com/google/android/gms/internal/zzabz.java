package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzabz implements zzabx, zzajb<Void> {
    private final Object mLock = new Object();
    private final zzamf<zzacf> zzcro;
    private final zzabx zzcrp;

    public zzabz(zzamf<zzacf> zzamfVar, zzabx zzabxVar) {
        this.zzcro = zzamfVar;
        this.zzcrp = zzabxVar;
    }

    @Override // com.google.android.gms.internal.zzajb
    public final void cancel() {
        zzny();
    }

    @Override // com.google.android.gms.internal.zzabx
    public final void zza(zzacj zzacjVar) {
        synchronized (this.mLock) {
            this.zzcrp.zza(zzacjVar);
            zzny();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza(zzacn zzacnVar, zzacf zzacfVar) {
        try {
            zzacnVar.zza(zzacfVar, new zzaci(this));
            return true;
        } catch (Throwable th) {
            zzahw.zzc("Could not fetch ad response from ad request service due to an Exception.", th);
            com.google.android.gms.ads.internal.zzbt.zzep().zza(th, "AdRequestClientTask.getAdResponseFromService");
            this.zzcrp.zza(new zzacj(0));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzajb
    public final /* synthetic */ Void zzns() {
        zzacn zznz = zznz();
        if (zznz != null) {
            this.zzcro.zza(new zzaca(this, zznz), new zzacb(this));
            return null;
        }
        this.zzcrp.zza(new zzacj(0));
        zzny();
        return null;
    }

    public abstract void zzny();

    public abstract zzacn zznz();
}
