package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzih implements zzhl {
    private /* synthetic */ zzif zzbay;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzih(zzif zzifVar) {
        this.zzbay = zzifVar;
    }

    @Override // com.google.android.gms.internal.zzhl
    public final void zzh(boolean z) {
        if (z) {
            this.zzbay.connect();
        } else {
            this.zzbay.disconnect();
        }
    }
}
