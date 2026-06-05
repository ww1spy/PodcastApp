package com.google.android.gms.tagmanager;

/* loaded from: classes.dex */
final class zzaw implements Runnable {
    private /* synthetic */ zzat zzkoz;
    private /* synthetic */ String zzkpb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaw(zzat zzatVar, String str) {
        this.zzkoz = zzatVar;
        this.zzkpb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzkoz.zzlp(this.zzkpb);
    }
}
