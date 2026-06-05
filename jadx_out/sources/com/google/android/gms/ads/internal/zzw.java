package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzacl;
import com.google.android.gms.internal.zzagq;
import com.google.android.gms.internal.zzaij;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzw {
    private final Context mContext;
    private boolean zzaoo;
    private zzagq zzaop;
    private zzacl zzaoq;

    public zzw(Context context, zzagq zzagqVar, zzacl zzaclVar) {
        this.mContext = context;
        this.zzaop = zzagqVar;
        this.zzaoq = zzaclVar;
        if (this.zzaoq == null) {
            this.zzaoq = new zzacl();
        }
    }

    private final boolean zzcy() {
        return (this.zzaop != null && this.zzaop.zzpe().zzdbs) || this.zzaoq.zzcun;
    }

    public final void recordClick() {
        this.zzaoo = true;
    }

    public final boolean zzcz() {
        return !zzcy() || this.zzaoo;
    }

    public final void zzt(@Nullable String str) {
        if (zzcy()) {
            if (str == null) {
                str = "";
            }
            if (this.zzaop != null) {
                this.zzaop.zza(str, null, 3);
                return;
            }
            if (!this.zzaoq.zzcun || this.zzaoq.zzcuo == null) {
                return;
            }
            for (String str2 : this.zzaoq.zzcuo) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzbt.zzel();
                    zzaij.zze(this.mContext, "", replace);
                }
            }
        }
    }
}
