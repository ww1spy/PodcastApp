package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzadt {
    private final Context mContext;
    private String zzcwj;
    private String zzcwk;
    private final Object mLock = new Object();
    private zzamd<zzadz> zzcwl = new zzamd<>();
    private com.google.android.gms.ads.internal.gmsg.zzt<Object> zzcwm = new zzadu(this);
    private com.google.android.gms.ads.internal.gmsg.zzt<Object> zzcwn = new zzadv(this);
    private com.google.android.gms.ads.internal.gmsg.zzt<Object> zzcwo = new zzadw(this);

    public zzadt(Context context, String str, String str2) {
        this.mContext = context;
        this.zzcwk = str2;
        this.zzcwj = str;
    }
}
