package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzakd extends zzahs {
    private final String zzag;
    private final zzakz zzdhq;

    public zzakd(Context context, String str, String str2) {
        this(str2, com.google.android.gms.ads.internal.zzbt.zzel().zzl(context, str));
    }

    private zzakd(String str, String str2) {
        this.zzdhq = new zzakz(str2);
        this.zzag = str;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        this.zzdhq.zzcp(this.zzag);
    }
}
