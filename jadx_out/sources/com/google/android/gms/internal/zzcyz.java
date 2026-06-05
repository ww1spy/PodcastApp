package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

@Hide
/* loaded from: classes.dex */
public final class zzcyz {
    private static boolean DEBUG = false;
    private static String TAG = "WakeLock";
    private static ScheduledExecutorService zzimq = null;
    private static String zzkma = "*gcore*:";
    private final Context mContext;
    private final String zzgjx;
    private final String zzgjz;
    private final PowerManager.WakeLock zzkmb;
    private WorkSource zzkmc;
    private final int zzkmd;
    private final String zzkme;
    private boolean zzkmf;
    private final Map<String, Integer[]> zzkmg;
    private int zzkmh;
    private AtomicInteger zzkmi;

    public zzcyz(Context context, int i, String str) {
        this(context, 1, str, null, context == null ? null : context.getPackageName());
    }

    @Hide
    @SuppressLint({"UnwrappedWakeLock"})
    private zzcyz(Context context, int i, String str, String str2, String str3) {
        this(context, 1, str, null, str3, null);
    }

    @Hide
    @SuppressLint({"UnwrappedWakeLock"})
    private zzcyz(Context context, int i, String str, String str2, String str3, String str4) {
        this.zzkmf = true;
        this.zzkmg = new HashMap();
        this.zzkmi = new AtomicInteger(0);
        com.google.android.gms.common.internal.zzbq.zzh(str, "Wake lock name can NOT be empty");
        this.zzkmd = i;
        this.zzkme = null;
        this.zzgjz = null;
        this.mContext = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.zzgjx = str;
        } else {
            String valueOf = String.valueOf(zzkma);
            String valueOf2 = String.valueOf(str);
            this.zzgjx = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        this.zzkmb = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (com.google.android.gms.common.util.zzaa.zzda(this.mContext)) {
            this.zzkmc = com.google.android.gms.common.util.zzaa.zzw(context, com.google.android.gms.common.util.zzw.zzhb(str3) ? context.getPackageName() : str3);
            WorkSource workSource = this.zzkmc;
            if (workSource != null && com.google.android.gms.common.util.zzaa.zzda(this.mContext)) {
                if (this.zzkmc != null) {
                    this.zzkmc.add(workSource);
                } else {
                    this.zzkmc = workSource;
                }
                try {
                    this.zzkmb.setWorkSource(this.zzkmc);
                } catch (IllegalArgumentException e) {
                    Log.wtf(TAG, e.toString());
                }
            }
        }
        if (zzimq == null) {
            zzimq = zzbhg.zzanc().newSingleThreadScheduledExecutor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzew(int i) {
        if (this.zzkmb.isHeld()) {
            try {
                this.zzkmb.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e(TAG, String.valueOf(this.zzgjx).concat("was already released!"), new IllegalStateException());
            }
        }
    }

    private final String zzlf(String str) {
        return (!this.zzkmf || TextUtils.isEmpty(str)) ? this.zzkme : str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
    
        if (r13 == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
    
        com.google.android.gms.common.stats.zze.zzanp();
        com.google.android.gms.common.stats.zze.zza(r11.mContext, com.google.android.gms.common.stats.zzc.zza(r11.zzkmb, r4), 7, r11.zzgjx, r4, null, r11.zzkmd, com.google.android.gms.common.util.zzaa.zzb(r11.zzkmc), 1000);
        r11.zzkmh++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005a, code lost:
    
        if (r11.zzkmh == 0) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void acquire(long r12) {
        /*
            r11 = this;
            java.util.concurrent.atomic.AtomicInteger r12 = r11.zzkmi
            r12.incrementAndGet()
            r12 = 0
            java.lang.String r4 = r11.zzlf(r12)
            monitor-enter(r11)
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.zzkmg     // Catch: java.lang.Throwable -> L92
            boolean r12 = r12.isEmpty()     // Catch: java.lang.Throwable -> L92
            r13 = 0
            if (r12 == 0) goto L18
            int r12 = r11.zzkmh     // Catch: java.lang.Throwable -> L92
            if (r12 <= 0) goto L27
        L18:
            android.os.PowerManager$WakeLock r12 = r11.zzkmb     // Catch: java.lang.Throwable -> L92
            boolean r12 = r12.isHeld()     // Catch: java.lang.Throwable -> L92
            if (r12 != 0) goto L27
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.zzkmg     // Catch: java.lang.Throwable -> L92
            r12.clear()     // Catch: java.lang.Throwable -> L92
            r11.zzkmh = r13     // Catch: java.lang.Throwable -> L92
        L27:
            boolean r12 = r11.zzkmf     // Catch: java.lang.Throwable -> L92
            r10 = 1
            if (r12 == 0) goto L54
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.zzkmg     // Catch: java.lang.Throwable -> L92
            java.lang.Object r12 = r12.get(r4)     // Catch: java.lang.Throwable -> L92
            java.lang.Integer[] r12 = (java.lang.Integer[]) r12     // Catch: java.lang.Throwable -> L92
            if (r12 != 0) goto L45
            java.util.Map<java.lang.String, java.lang.Integer[]> r12 = r11.zzkmg     // Catch: java.lang.Throwable -> L92
            java.lang.Integer[] r0 = new java.lang.Integer[r10]     // Catch: java.lang.Throwable -> L92
            java.lang.Integer r1 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L92
            r0[r13] = r1     // Catch: java.lang.Throwable -> L92
            r12.put(r4, r0)     // Catch: java.lang.Throwable -> L92
            r13 = r10
            goto L52
        L45:
            r0 = r12[r13]     // Catch: java.lang.Throwable -> L92
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L92
            int r0 = r0 + r10
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L92
            r12[r13] = r0     // Catch: java.lang.Throwable -> L92
        L52:
            if (r13 != 0) goto L5c
        L54:
            boolean r12 = r11.zzkmf     // Catch: java.lang.Throwable -> L92
            if (r12 != 0) goto L7d
            int r12 = r11.zzkmh     // Catch: java.lang.Throwable -> L92
            if (r12 != 0) goto L7d
        L5c:
            com.google.android.gms.common.stats.zze.zzanp()     // Catch: java.lang.Throwable -> L92
            android.content.Context r0 = r11.mContext     // Catch: java.lang.Throwable -> L92
            android.os.PowerManager$WakeLock r12 = r11.zzkmb     // Catch: java.lang.Throwable -> L92
            java.lang.String r1 = com.google.android.gms.common.stats.zzc.zza(r12, r4)     // Catch: java.lang.Throwable -> L92
            r2 = 7
            java.lang.String r3 = r11.zzgjx     // Catch: java.lang.Throwable -> L92
            r5 = 0
            int r6 = r11.zzkmd     // Catch: java.lang.Throwable -> L92
            android.os.WorkSource r12 = r11.zzkmc     // Catch: java.lang.Throwable -> L92
            java.util.List r7 = com.google.android.gms.common.util.zzaa.zzb(r12)     // Catch: java.lang.Throwable -> L92
            r8 = 1000(0x3e8, double:4.94E-321)
            com.google.android.gms.common.stats.zze.zza(r0, r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L92
            int r12 = r11.zzkmh     // Catch: java.lang.Throwable -> L92
            int r12 = r12 + r10
            r11.zzkmh = r12     // Catch: java.lang.Throwable -> L92
        L7d:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L92
            android.os.PowerManager$WakeLock r12 = r11.zzkmb
            r12.acquire()
            java.util.concurrent.ScheduledExecutorService r12 = com.google.android.gms.internal.zzcyz.zzimq
            com.google.android.gms.internal.zzcza r13 = new com.google.android.gms.internal.zzcza
            r13.<init>(r11)
            r0 = 1000(0x3e8, double:4.94E-321)
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS
            r12.schedule(r13, r0, r2)
            return
        L92:
            r12 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L92
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcyz.acquire(long):void");
    }

    public final boolean isHeld() {
        return this.zzkmb.isHeld();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0044, code lost:
    
        if (r0 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        com.google.android.gms.common.stats.zze.zzanp();
        com.google.android.gms.common.stats.zze.zza(r11.mContext, com.google.android.gms.common.stats.zzc.zza(r11.zzkmb, r5), 8, r11.zzgjx, r5, null, r11.zzkmd, com.google.android.gms.common.util.zzaa.zzb(r11.zzkmc));
        r11.zzkmh--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004c, code lost:
    
        if (r11.zzkmh == 1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void release() {
        /*
            r11 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = r11.zzkmi
            int r0 = r0.decrementAndGet()
            if (r0 >= 0) goto Lf
            java.lang.String r0 = com.google.android.gms.internal.zzcyz.TAG
            java.lang.String r1 = "release without a matched acquire!"
            android.util.Log.e(r0, r1)
        Lf:
            r0 = 0
            java.lang.String r5 = r11.zzlf(r0)
            monitor-enter(r11)
            boolean r0 = r11.zzkmf     // Catch: java.lang.Throwable -> L73
            r9 = 1
            r10 = 0
            if (r0 == 0) goto L46
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r11.zzkmg     // Catch: java.lang.Throwable -> L73
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L73
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0     // Catch: java.lang.Throwable -> L73
            if (r0 != 0) goto L27
        L25:
            r0 = r10
            goto L44
        L27:
            r1 = r0[r10]     // Catch: java.lang.Throwable -> L73
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L73
            if (r1 != r9) goto L36
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r11.zzkmg     // Catch: java.lang.Throwable -> L73
            r0.remove(r5)     // Catch: java.lang.Throwable -> L73
            r0 = r9
            goto L44
        L36:
            r1 = r0[r10]     // Catch: java.lang.Throwable -> L73
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L73
            int r1 = r1 - r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L73
            r0[r10] = r1     // Catch: java.lang.Throwable -> L73
            goto L25
        L44:
            if (r0 != 0) goto L4e
        L46:
            boolean r0 = r11.zzkmf     // Catch: java.lang.Throwable -> L73
            if (r0 != 0) goto L6e
            int r0 = r11.zzkmh     // Catch: java.lang.Throwable -> L73
            if (r0 != r9) goto L6e
        L4e:
            com.google.android.gms.common.stats.zze.zzanp()     // Catch: java.lang.Throwable -> L73
            android.content.Context r1 = r11.mContext     // Catch: java.lang.Throwable -> L73
            android.os.PowerManager$WakeLock r0 = r11.zzkmb     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = com.google.android.gms.common.stats.zzc.zza(r0, r5)     // Catch: java.lang.Throwable -> L73
            r3 = 8
            java.lang.String r4 = r11.zzgjx     // Catch: java.lang.Throwable -> L73
            r6 = 0
            int r7 = r11.zzkmd     // Catch: java.lang.Throwable -> L73
            android.os.WorkSource r0 = r11.zzkmc     // Catch: java.lang.Throwable -> L73
            java.util.List r8 = com.google.android.gms.common.util.zzaa.zzb(r0)     // Catch: java.lang.Throwable -> L73
            com.google.android.gms.common.stats.zze.zza(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L73
            int r0 = r11.zzkmh     // Catch: java.lang.Throwable -> L73
            int r0 = r0 - r9
            r11.zzkmh = r0     // Catch: java.lang.Throwable -> L73
        L6e:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L73
            r11.zzew(r10)
            return
        L73:
            r0 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L73
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcyz.release():void");
    }

    public final void setReferenceCounted(boolean z) {
        this.zzkmb.setReferenceCounted(false);
        this.zzkmf = false;
    }
}
