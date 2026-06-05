package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzow extends zzoz {
    private final com.google.android.gms.ads.internal.zzae zzbwx;

    @Nullable
    private final String zzbwy;
    private final String zzbwz;

    public zzow(com.google.android.gms.ads.internal.zzae zzaeVar, @Nullable String str, String str2) {
        this.zzbwx = zzaeVar;
        this.zzbwy = str;
        this.zzbwz = str2;
    }

    @Override // com.google.android.gms.internal.zzoy
    public final String getContent() {
        return this.zzbwz;
    }

    @Override // com.google.android.gms.internal.zzoy
    public final void recordClick() {
        this.zzbwx.zzcr();
    }

    @Override // com.google.android.gms.internal.zzoy
    public final void recordImpression() {
        this.zzbwx.zzcs();
    }

    @Override // com.google.android.gms.internal.zzoy
    public final void zze(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.zzbwx.zzh((View) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzoy
    public final String zzjs() {
        return this.zzbwy;
    }
}
