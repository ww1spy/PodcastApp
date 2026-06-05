package com.google.android.gms.internal;

import android.webkit.ValueCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhp implements ValueCallback<String> {
    private /* synthetic */ zzho zzazu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhp(zzho zzhoVar) {
        this.zzazu = zzhoVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        this.zzazu.zzazp.zza(this.zzazu.zzazr, this.zzazu.zzazs, str, this.zzazu.zzazt);
    }
}
