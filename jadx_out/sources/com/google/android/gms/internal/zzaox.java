package com.google.android.gms.internal;

import android.annotation.TargetApi;
import com.google.android.gms.internal.zzapa;
import com.google.android.gms.internal.zzapr;
import com.google.android.gms.internal.zzapt;

@TargetApi(17)
@zzabh
/* loaded from: classes.dex */
public final class zzaox<WebViewT extends zzapa & zzapr & zzapt> {
    private final zzaoz zzdsa;
    private final WebViewT zzdsb;

    private zzaox(WebViewT webviewt, zzaoz zzaozVar) {
        this.zzdsa = zzaozVar;
        this.zzdsb = webviewt;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.zzaoz, com.google.android.gms.internal.zzaoy] */
    public static zzaox<zzaof> zzl(final zzaof zzaofVar) {
        return new zzaox<>(zzaofVar, new Object(zzaofVar) { // from class: com.google.android.gms.internal.zzaoy
            private final zzaof zzcqb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcqb = zzaofVar;
            }
        });
    }
}
