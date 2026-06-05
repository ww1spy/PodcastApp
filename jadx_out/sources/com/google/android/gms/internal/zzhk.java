package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class zzhk implements Runnable {
    private /* synthetic */ zzhj zzazc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhk(zzhj zzhjVar) {
        this.zzazc = zzhjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List list;
        obj = this.zzazc.mLock;
        synchronized (obj) {
            z = this.zzazc.zzayw;
            if (z) {
                z2 = this.zzazc.zzayx;
                if (z2) {
                    zzhj.zza(this.zzazc, false);
                    zzahw.zzby("App went background");
                    list = this.zzazc.zzayy;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            ((zzhl) it.next()).zzh(false);
                        } catch (Exception e) {
                            zzahw.zzb("OnForegroundStateChangedListener threw exception.", e);
                        }
                    }
                }
            }
            zzahw.zzby("App is still foreground");
        }
    }
}
