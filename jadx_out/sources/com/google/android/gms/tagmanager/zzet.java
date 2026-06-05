package com.google.android.gms.tagmanager;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzet implements zzag {
    private boolean mClosed;
    private final Context mContext;
    private final String zzknc;
    private String zzkoa;
    private zzdi<com.google.android.gms.internal.zzbs> zzksb;
    private zzal zzksc;
    private final ScheduledExecutorService zzkse;
    private final zzew zzksf;
    private ScheduledFuture<?> zzksg;

    public zzet(Context context, String str, zzal zzalVar) {
        this(context, str, zzalVar, null, null);
    }

    private zzet(Context context, String str, zzal zzalVar, zzex zzexVar, zzew zzewVar) {
        this.zzksc = zzalVar;
        this.mContext = context;
        this.zzknc = str;
        this.zzkse = new zzeu(this).zzbhl();
        this.zzksf = new zzev(this);
    }

    private final synchronized void zzbhk() {
        if (this.mClosed) {
            throw new IllegalStateException("called method after closed");
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final synchronized void release() {
        zzbhk();
        if (this.zzksg != null) {
            this.zzksg.cancel(false);
        }
        this.zzkse.shutdown();
        this.mClosed = true;
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final synchronized void zza(long j, String str) {
        String str2 = this.zzknc;
        StringBuilder sb = new StringBuilder(55 + String.valueOf(str2).length());
        sb.append("loadAfterDelay: containerId=");
        sb.append(str2);
        sb.append(" delay=");
        sb.append(j);
        zzdj.v(sb.toString());
        zzbhk();
        if (this.zzksb == null) {
            throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
        }
        if (this.zzksg != null) {
            this.zzksg.cancel(false);
        }
        ScheduledExecutorService scheduledExecutorService = this.zzkse;
        zzes zza = this.zzksf.zza(this.zzksc);
        zza.zza(this.zzksb);
        zza.zzll(this.zzkoa);
        zza.zzmb(str);
        this.zzksg = scheduledExecutorService.schedule(zza, j, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final synchronized void zza(zzdi<com.google.android.gms.internal.zzbs> zzdiVar) {
        zzbhk();
        this.zzksb = zzdiVar;
    }

    @Override // com.google.android.gms.tagmanager.zzag
    public final synchronized void zzll(String str) {
        zzbhk();
        this.zzkoa = str;
    }
}
