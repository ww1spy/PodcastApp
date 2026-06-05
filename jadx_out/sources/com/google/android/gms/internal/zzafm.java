package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzafm implements Runnable {
    private /* synthetic */ zzkk zzaps;
    private /* synthetic */ zzwi zzdai;
    private /* synthetic */ zzafl zzdaj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafm(zzafl zzaflVar, zzkk zzkkVar, zzwi zzwiVar) {
        this.zzdaj = zzaflVar;
        this.zzaps = zzkkVar;
        this.zzdai = zzwiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdaj.zza(this.zzaps, this.zzdai);
    }
}
