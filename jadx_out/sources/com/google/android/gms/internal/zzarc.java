package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzarc implements Runnable {
    private /* synthetic */ zzaqz zzdyj;
    private /* synthetic */ String zzdyl;
    private /* synthetic */ Runnable zzdym;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarc(zzaqz zzaqzVar, String str, Runnable runnable) {
        this.zzdyj = zzaqzVar;
        this.zzdyl = str;
        this.zzdym = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zzei(this.zzdyl);
        if (this.zzdym != null) {
            this.zzdym.run();
        }
    }
}
