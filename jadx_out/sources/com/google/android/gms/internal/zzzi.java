package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzzi extends zzahs {
    protected final Context mContext;
    protected final Object mLock;
    protected final zzzn zzcoa;
    protected final zzahe zzcob;
    protected zzacj zzcoc;
    protected final Object zzcoe;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzzi(Context context, zzahe zzaheVar, zzzn zzznVar) {
        super(true);
        this.mLock = new Object();
        this.zzcoe = new Object();
        this.mContext = context;
        this.zzcob = zzaheVar;
        this.zzcoc = zzaheVar.zzdcw;
        this.zzcoa = zzznVar;
    }

    @Override // com.google.android.gms.internal.zzahs
    public void onStop() {
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0033 A[Catch: all -> 0x0060, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000c, B:7:0x0050, B:8:0x005e, B:14:0x0015, B:19:0x0020, B:20:0x002f, B:22:0x0033, B:23:0x0038, B:24:0x0045, B:25:0x003b, B:26:0x0028), top: B:3:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003b A[Catch: all -> 0x0060, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000c, B:7:0x0050, B:8:0x005e, B:14:0x0015, B:19:0x0020, B:20:0x002f, B:22:0x0033, B:23:0x0038, B:24:0x0045, B:25:0x003b, B:26:0x0028), top: B:3:0x0003, inners: #0 }] */
    @Override // com.google.android.gms.internal.zzahs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzdo() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.mLock
            monitor-enter(r0)
            java.lang.String r1 = "AdRendererBackgroundTask started."
            com.google.android.gms.internal.zzahw.zzby(r1)     // Catch: java.lang.Throwable -> L60
            com.google.android.gms.internal.zzahe r1 = r5.zzcob     // Catch: java.lang.Throwable -> L60
            int r1 = r1.errorCode     // Catch: java.lang.Throwable -> L60
            long r2 = android.os.SystemClock.elapsedRealtime()     // Catch: com.google.android.gms.internal.zzzl -> L14 java.lang.Throwable -> L60
            r5.zze(r2)     // Catch: com.google.android.gms.internal.zzzl -> L14 java.lang.Throwable -> L60
            goto L50
        L14:
            r1 = move-exception
            int r2 = r1.getErrorCode()     // Catch: java.lang.Throwable -> L60
            r3 = 3
            if (r2 == r3) goto L28
            r3 = -1
            if (r2 != r3) goto L20
            goto L28
        L20:
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L60
            com.google.android.gms.internal.zzahw.zzcz(r1)     // Catch: java.lang.Throwable -> L60
            goto L2f
        L28:
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L60
            com.google.android.gms.internal.zzahw.zzcy(r1)     // Catch: java.lang.Throwable -> L60
        L2f:
            com.google.android.gms.internal.zzacj r1 = r5.zzcoc     // Catch: java.lang.Throwable -> L60
            if (r1 != 0) goto L3b
            com.google.android.gms.internal.zzacj r1 = new com.google.android.gms.internal.zzacj     // Catch: java.lang.Throwable -> L60
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L60
        L38:
            r5.zzcoc = r1     // Catch: java.lang.Throwable -> L60
            goto L45
        L3b:
            com.google.android.gms.internal.zzacj r1 = new com.google.android.gms.internal.zzacj     // Catch: java.lang.Throwable -> L60
            com.google.android.gms.internal.zzacj r3 = r5.zzcoc     // Catch: java.lang.Throwable -> L60
            long r3 = r3.zzcic     // Catch: java.lang.Throwable -> L60
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L60
            goto L38
        L45:
            android.os.Handler r1 = com.google.android.gms.internal.zzaij.zzdfn     // Catch: java.lang.Throwable -> L60
            com.google.android.gms.internal.zzzj r3 = new com.google.android.gms.internal.zzzj     // Catch: java.lang.Throwable -> L60
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L60
            r1.post(r3)     // Catch: java.lang.Throwable -> L60
            r1 = r2
        L50:
            com.google.android.gms.internal.zzahd r1 = r5.zzy(r1)     // Catch: java.lang.Throwable -> L60
            android.os.Handler r2 = com.google.android.gms.internal.zzaij.zzdfn     // Catch: java.lang.Throwable -> L60
            com.google.android.gms.internal.zzzk r3 = new com.google.android.gms.internal.zzzk     // Catch: java.lang.Throwable -> L60
            r3.<init>(r5, r1)     // Catch: java.lang.Throwable -> L60
            r2.post(r3)     // Catch: java.lang.Throwable -> L60
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L60
            return
        L60:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L60
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzzi.zzdo():void");
    }

    protected abstract void zze(long j) throws zzzl;

    protected abstract zzahd zzy(int i);
}
