package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public abstract class zzbdg extends zzbdo {
    private Handler mHandler;
    protected final com.google.android.gms.common.util.zze zzata;
    private long zzflv;
    private Runnable zzflw;
    protected boolean zzflx;

    private zzbdg(String str, com.google.android.gms.common.util.zze zzeVar, String str2, String str3) {
        this(str, zzeVar, str2, null, 1000L);
    }

    public zzbdg(String str, com.google.android.gms.common.util.zze zzeVar, String str2, String str3, long j) {
        super(str, str2, str3);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.zzata = zzeVar;
        this.zzflw = new zzbdi(this);
        this.zzflv = 1000L;
        zzbg(false);
    }

    public zzbdg(String str, String str2, String str3) {
        this(str, com.google.android.gms.common.util.zzi.zzanq(), str2, null);
    }

    @Override // com.google.android.gms.internal.zzbdo
    public void zzagm() {
        zzbg(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzbg(boolean z) {
        if (this.zzflx != z) {
            this.zzflx = z;
            if (z) {
                this.mHandler.postDelayed(this.zzflw, this.zzflv);
            } else {
                this.mHandler.removeCallbacks(this.zzflw);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean zzz(long j);
}
