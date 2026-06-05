package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzagt implements zzgv {
    private final Object mLock;
    private String zzapp;
    private final Context zzbky;
    private boolean zzdbu;

    public zzagt(Context context, String str) {
        this.zzbky = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzapp = str;
        this.zzdbu = false;
        this.mLock = new Object();
    }

    public final void setAdUnitId(String str) {
        this.zzapp = str;
    }

    @Override // com.google.android.gms.internal.zzgv
    public final void zza(zzgu zzguVar) {
        zzw(zzguVar.zzakc);
    }

    public final void zzw(boolean z) {
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzq(this.zzbky)) {
            synchronized (this.mLock) {
                if (this.zzdbu == z) {
                    return;
                }
                this.zzdbu = z;
                if (TextUtils.isEmpty(this.zzapp)) {
                    return;
                }
                if (this.zzdbu) {
                    com.google.android.gms.ads.internal.zzbt.zzfh().zzb(this.zzbky, this.zzapp);
                } else {
                    com.google.android.gms.ads.internal.zzbt.zzfh().zzc(this.zzbky, this.zzapp);
                }
            }
        }
    }
}
