package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzvz implements zzvo {
    private final Context mContext;
    private final long mStartTime;
    private final zzwf zzanu;
    private final boolean zzavr;
    private final zzvq zzcir;
    private final boolean zzciv;
    private final boolean zzciw;
    private final zzacf zzcjk;
    private final long zzcjl;
    private final String zzcjp;
    private final Object mLock = new Object();
    private boolean zzcjn = false;
    private final Map<zzalt<zzvw>, zzvt> zzcjo = new HashMap();
    private List<zzvw> zzcjq = new ArrayList();
    private final int zzcjm = 2;

    public zzvz(Context context, zzacf zzacfVar, zzwf zzwfVar, zzvq zzvqVar, boolean z, boolean z2, String str, long j, long j2, int i, boolean z3) {
        this.mContext = context;
        this.zzcjk = zzacfVar;
        this.zzanu = zzwfVar;
        this.zzcir = zzvqVar;
        this.zzavr = z;
        this.zzciv = z2;
        this.zzcjp = str;
        this.mStartTime = j;
        this.zzcjl = j2;
        this.zzciw = z3;
    }

    private final void zza(zzalt<zzvw> zzaltVar) {
        zzaij.zzdfn.post(new zzwb(this, zzaltVar));
    }

    private final zzvw zzi(List<zzalt<zzvw>> list) {
        synchronized (this.mLock) {
            if (this.zzcjn) {
                return new zzvw(-1);
            }
            for (zzalt<zzvw> zzaltVar : list) {
                try {
                    zzvw zzvwVar = zzaltVar.get();
                    this.zzcjq.add(zzvwVar);
                    if (zzvwVar != null && zzvwVar.zzcjd == 0) {
                        zza(zzaltVar);
                        return zzvwVar;
                    }
                } catch (InterruptedException | ExecutionException e) {
                    zzahw.zzc("Exception while processing an adapter; continuing with other adapters", e);
                }
            }
            zza((zzalt<zzvw>) null);
            return new zzvw(1);
        }
    }

    private final zzvw zzj(List<zzalt<zzvw>> list) {
        zzvw zzvwVar;
        zzvw zzvwVar2;
        zzwo zzwoVar;
        synchronized (this.mLock) {
            if (this.zzcjn) {
                return new zzvw(-1);
            }
            long j = this.zzcir.zzcig != -1 ? this.zzcir.zzcig : 10000L;
            zzalt<zzvw> zzaltVar = null;
            int i = -1;
            long j2 = j;
            zzvw zzvwVar3 = null;
            for (zzalt<zzvw> zzaltVar2 : list) {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
                if (j2 == 0) {
                    try {
                        try {
                        } catch (RemoteException | InterruptedException | ExecutionException | TimeoutException e) {
                            zzahw.zzc("Exception while processing an adapter; continuing with other adapters", e);
                        }
                        if (zzaltVar2.isDone()) {
                            zzvwVar = zzaltVar2.get();
                            zzvwVar2 = zzvwVar;
                            this.zzcjq.add(zzvwVar2);
                            if (zzvwVar2 != null && zzvwVar2.zzcjd == 0 && (zzwoVar = zzvwVar2.zzcji) != null && zzwoVar.zzmn() > i) {
                                zzaltVar = zzaltVar2;
                                zzvwVar3 = zzvwVar2;
                                i = zzwoVar.zzmn();
                            }
                            j2 = Math.max(j2 - (com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis() - currentTimeMillis), 0L);
                        }
                    } catch (Throwable th) {
                        Math.max(j2 - (com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis() - currentTimeMillis), 0L);
                        throw th;
                    }
                }
                zzvwVar = zzaltVar2.get(j2, TimeUnit.MILLISECONDS);
                zzvwVar2 = zzvwVar;
                this.zzcjq.add(zzvwVar2);
                if (zzvwVar2 != null) {
                    zzaltVar = zzaltVar2;
                    zzvwVar3 = zzvwVar2;
                    i = zzwoVar.zzmn();
                }
                j2 = Math.max(j2 - (com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis() - currentTimeMillis), 0L);
            }
            zza(zzaltVar);
            return zzvwVar3 == null ? new zzvw(1) : zzvwVar3;
        }
    }

    @Override // com.google.android.gms.internal.zzvo
    public final void cancel() {
        synchronized (this.mLock) {
            this.zzcjn = true;
            Iterator<zzvt> it = this.zzcjo.values().iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzvo
    public final zzvw zzh(List<zzvp> list) {
        zzahw.zzby("Starting mediation.");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = new ArrayList();
        zzko zzkoVar = this.zzcjk.zzaud;
        int[] iArr = new int[2];
        if (zzkoVar.zzbic != null) {
            com.google.android.gms.ads.internal.zzbt.zzfd();
            if (zzvy.zza(this.zzcjp, iArr)) {
                int i = 0;
                int i2 = iArr[0];
                int i3 = iArr[1];
                zzko[] zzkoVarArr = zzkoVar.zzbic;
                int length = zzkoVarArr.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    zzko zzkoVar2 = zzkoVarArr[i];
                    if (i2 == zzkoVar2.width && i3 == zzkoVar2.height) {
                        zzkoVar = zzkoVar2;
                        break;
                    }
                    i++;
                }
            }
        }
        Iterator<zzvp> it = list.iterator();
        while (it.hasNext()) {
            zzvp next = it.next();
            String valueOf = String.valueOf(next.zzchc);
            zzahw.zzcy(valueOf.length() != 0 ? "Trying mediation network: ".concat(valueOf) : new String("Trying mediation network: "));
            for (Iterator<String> it2 = next.zzchd.iterator(); it2.hasNext(); it2 = it2) {
                ArrayList arrayList2 = arrayList;
                zzvt zzvtVar = new zzvt(this.mContext, it2.next(), this.zzanu, this.zzcir, next, this.zzcjk.zzcrv, zzkoVar, this.zzcjk.zzatz, this.zzavr, this.zzciv, this.zzcjk.zzauq, this.zzcjk.zzauy, this.zzcjk.zzcsk, this.zzcjk.zzctf, this.zzciw);
                zzalt<zzvw> zza = zzaid.zza(newCachedThreadPool, new zzwa(this, zzvtVar));
                this.zzcjo.put(zza, zzvtVar);
                arrayList2.add(zza);
                arrayList = arrayList2;
                it = it;
            }
        }
        ArrayList arrayList3 = arrayList;
        return this.zzcjm != 2 ? zzi(arrayList3) : zzj(arrayList3);
    }

    @Override // com.google.android.gms.internal.zzvo
    public final List<zzvw> zzmf() {
        return this.zzcjq;
    }
}
