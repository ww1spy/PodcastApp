package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class zzajt<T> implements zzald<Throwable, T> {
    private /* synthetic */ zzajx zzdhd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajt(zzajr zzajrVar, zzajx zzajxVar) {
        this.zzdhd = zzajxVar;
    }

    @Override // com.google.android.gms.internal.zzald
    public final /* synthetic */ zzalt zzc(Throwable th) throws Exception {
        Throwable th2 = th;
        zzahw.zzb("Error occurred while dispatching http response in getter.", th2);
        com.google.android.gms.ads.internal.zzbt.zzep().zza(th2, "HttpGetter.deliverResponse.1");
        return zzali.zzh(this.zzdhd.zznx());
    }
}
