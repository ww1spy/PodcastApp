package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@zzabh
/* loaded from: classes.dex */
public final class zzpu extends zzpz {
    private Object mLock;

    @Nullable
    private zzwr zzbys;

    @Nullable
    private zzwu zzbyt;
    private final zzpw zzbyu;

    @Nullable
    private zzpv zzbyv;
    private boolean zzbyw;

    private zzpu(Context context, zzpw zzpwVar, zzcv zzcvVar, zzpx zzpxVar) {
        super(context, zzpwVar, null, zzcvVar, null, zzpxVar, null, null);
        this.zzbyw = false;
        this.mLock = new Object();
        this.zzbyu = zzpwVar;
    }

    public zzpu(Context context, zzpw zzpwVar, zzcv zzcvVar, zzwr zzwrVar, zzpx zzpxVar) {
        this(context, zzpwVar, zzcvVar, zzpxVar);
        this.zzbys = zzwrVar;
    }

    public zzpu(Context context, zzpw zzpwVar, zzcv zzcvVar, zzwu zzwuVar, zzpx zzpxVar) {
        this(context, zzpwVar, zzcvVar, zzpxVar);
        this.zzbyt = zzwuVar;
    }

    private static HashMap<String, View> zzd(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x002d, code lost:
    
        r4 = null;
     */
    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View zza(android.view.View.OnClickListener r3, boolean r4) {
        /*
            r2 = this;
            java.lang.Object r0 = r2.mLock
            monitor-enter(r0)
            com.google.android.gms.internal.zzpv r1 = r2.zzbyv     // Catch: java.lang.Throwable -> L39
            if (r1 == 0) goto Lf
            com.google.android.gms.internal.zzpv r1 = r2.zzbyv     // Catch: java.lang.Throwable -> L39
            android.view.View r3 = r1.zza(r3, r4)     // Catch: java.lang.Throwable -> L39
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            return r3
        Lf:
            r3 = 0
            com.google.android.gms.internal.zzwr r4 = r2.zzbys     // Catch: android.os.RemoteException -> L26 java.lang.Throwable -> L39
            if (r4 == 0) goto L1b
            com.google.android.gms.internal.zzwr r4 = r2.zzbys     // Catch: android.os.RemoteException -> L26 java.lang.Throwable -> L39
            com.google.android.gms.dynamic.IObjectWrapper r4 = r4.zzmw()     // Catch: android.os.RemoteException -> L26 java.lang.Throwable -> L39
            goto L2d
        L1b:
            com.google.android.gms.internal.zzwu r4 = r2.zzbyt     // Catch: android.os.RemoteException -> L26 java.lang.Throwable -> L39
            if (r4 == 0) goto L2c
            com.google.android.gms.internal.zzwu r4 = r2.zzbyt     // Catch: android.os.RemoteException -> L26 java.lang.Throwable -> L39
            com.google.android.gms.dynamic.IObjectWrapper r4 = r4.zzmw()     // Catch: android.os.RemoteException -> L26 java.lang.Throwable -> L39
            goto L2d
        L26:
            r4 = move-exception
            java.lang.String r1 = "Failed to call getAdChoicesContent"
            com.google.android.gms.internal.zzahw.zzc(r1, r4)     // Catch: java.lang.Throwable -> L39
        L2c:
            r4 = r3
        L2d:
            if (r4 == 0) goto L37
            java.lang.Object r3 = com.google.android.gms.dynamic.zzn.zzy(r4)     // Catch: java.lang.Throwable -> L39
            android.view.View r3 = (android.view.View) r3     // Catch: java.lang.Throwable -> L39
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            return r3
        L37:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            return r3
        L39:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L39
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpu.zza(android.view.View$OnClickListener, boolean):android.view.View");
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        zzpw zzpwVar;
        com.google.android.gms.common.internal.zzbq.zzgn("recordImpression must be called on the main UI thread.");
        synchronized (this.mLock) {
            this.zzbza = true;
            if (this.zzbyv != null) {
                this.zzbyv.zza(view, map);
                this.zzbyu.recordImpression();
            } else {
                try {
                    if (this.zzbys != null && !this.zzbys.getOverrideImpressionRecording()) {
                        this.zzbys.recordImpression();
                        zzpwVar = this.zzbyu;
                    } else if (this.zzbyt != null && !this.zzbyt.getOverrideImpressionRecording()) {
                        this.zzbyt.recordImpression();
                        zzpwVar = this.zzbyu;
                    }
                    zzpwVar.recordImpression();
                } catch (RemoteException e) {
                    zzahw.zzc("Failed to call recordImpression", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final void zza(View view, Map<String, WeakReference<View>> map, Bundle bundle, View view2) {
        com.google.android.gms.common.internal.zzbq.zzgn("performClick must be called on the main UI thread.");
        synchronized (this.mLock) {
            if (this.zzbyv != null) {
                this.zzbyv.zza(view, map, bundle, view2);
                this.zzbyu.onAdClicked();
            } else {
                try {
                    if (this.zzbys != null && !this.zzbys.getOverrideClickHandling()) {
                        this.zzbys.zzh(com.google.android.gms.dynamic.zzn.zzz(view));
                        this.zzbyu.onAdClicked();
                    }
                    if (this.zzbyt != null && !this.zzbyt.getOverrideClickHandling()) {
                        this.zzbyt.zzh(com.google.android.gms.dynamic.zzn.zzz(view));
                        this.zzbyu.onAdClicked();
                    }
                } catch (RemoteException e) {
                    zzahw.zzc("Failed to call performClick", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpz
    public final void zza(View view, @Nullable Map<String, WeakReference<View>> map, @Nullable Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        synchronized (this.mLock) {
            this.zzbyw = true;
            HashMap<String, View> zzd = zzd(map);
            HashMap<String, View> zzd2 = zzd(map2);
            try {
                if (this.zzbys != null) {
                    this.zzbys.zzb(com.google.android.gms.dynamic.zzn.zzz(view), com.google.android.gms.dynamic.zzn.zzz(zzd), com.google.android.gms.dynamic.zzn.zzz(zzd2));
                    this.zzbys.zzi(com.google.android.gms.dynamic.zzn.zzz(view));
                } else if (this.zzbyt != null) {
                    this.zzbyt.zzb(com.google.android.gms.dynamic.zzn.zzz(view), com.google.android.gms.dynamic.zzn.zzz(zzd), com.google.android.gms.dynamic.zzn.zzz(zzd2));
                    this.zzbyt.zzi(com.google.android.gms.dynamic.zzn.zzz(view));
                }
            } catch (RemoteException e) {
                zzahw.zzc("Failed to call prepareAd", e);
            }
            this.zzbyw = false;
        }
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final void zzb(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.mLock) {
            try {
                if (this.zzbys != null) {
                    this.zzbys.zzj(com.google.android.gms.dynamic.zzn.zzz(view));
                } else if (this.zzbyt != null) {
                    this.zzbyt.zzj(com.google.android.gms.dynamic.zzn.zzz(view));
                }
            } catch (RemoteException e) {
                zzahw.zzc("Failed to call untrackView", e);
            }
        }
    }

    public final void zzc(@Nullable zzpv zzpvVar) {
        synchronized (this.mLock) {
            this.zzbyv = zzpvVar;
        }
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final boolean zzkm() {
        synchronized (this.mLock) {
            if (this.zzbyv != null) {
                return this.zzbyv.zzkm();
            }
            return this.zzbyu.zzcv();
        }
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final boolean zzkn() {
        synchronized (this.mLock) {
            if (this.zzbyv != null) {
                return this.zzbyv.zzkn();
            }
            return this.zzbyu.zzcw();
        }
    }

    public final boolean zzko() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzbyw;
        }
        return z;
    }

    public final zzpv zzkp() {
        zzpv zzpvVar;
        synchronized (this.mLock) {
            zzpvVar = this.zzbyv;
        }
        return zzpvVar;
    }

    @Override // com.google.android.gms.internal.zzpz
    @Nullable
    public final zzaof zzkq() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final void zzkr() {
    }

    @Override // com.google.android.gms.internal.zzpz, com.google.android.gms.internal.zzpv
    public final void zzks() {
    }
}
