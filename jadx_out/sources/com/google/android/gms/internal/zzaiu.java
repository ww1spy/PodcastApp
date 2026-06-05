package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.webkit.WebChromeClient;

@TargetApi(14)
/* loaded from: classes.dex */
public class zzaiu extends zzais {
    @Override // com.google.android.gms.internal.zzaip
    public final String zza(SslError sslError) {
        return sslError.getUrl();
    }

    @Override // com.google.android.gms.internal.zzais, com.google.android.gms.internal.zzaip
    public final WebChromeClient zzj(zzaof zzaofVar) {
        return new zzapl(zzaofVar);
    }

    @Override // com.google.android.gms.internal.zzaip
    public int zzrl() {
        return 1;
    }
}
