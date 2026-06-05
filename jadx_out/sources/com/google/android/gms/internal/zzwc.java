package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzwc implements zzvo {
    private final Context mContext;
    private final long mStartTime;
    private final zzov zzanh;
    private final zzwf zzanu;
    private final boolean zzavr;
    private final zzvq zzcir;
    private final boolean zzciv;
    private final boolean zzciw;
    private final zzacf zzcjk;
    private final long zzcjl;
    private final String zzcjp;
    private zzvt zzcju;
    private final Object mLock = new Object();
    private boolean zzcjn = false;
    private List<zzvw> zzcjq = new ArrayList();

    public zzwc(Context context, zzacf zzacfVar, zzwf zzwfVar, zzvq zzvqVar, boolean z, boolean z2, String str, long j, long j2, zzov zzovVar, boolean z3) {
        this.mContext = context;
        this.zzcjk = zzacfVar;
        this.zzanu = zzwfVar;
        this.zzcir = zzvqVar;
        this.zzavr = z;
        this.zzciv = z2;
        this.zzcjp = str;
        this.mStartTime = j;
        this.zzcjl = j2;
        this.zzanh = zzovVar;
        this.zzciw = z3;
    }

    @Override // com.google.android.gms.internal.zzvo
    public final void cancel() {
        synchronized (this.mLock) {
            this.zzcjn = true;
            if (this.zzcju != null) {
                this.zzcju.cancel();
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:? -> B:44:0x017c). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.zzvo
    public final zzvw zzh(List<zzvp> list) {
        Object obj;
        Throwable th;
        zzvw zzvwVar;
        zzahw.zzby("Starting mediation.");
        ArrayList arrayList = new ArrayList();
        zzot zzjo = this.zzanh.zzjo();
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
            Iterator<String> it2 = next.zzchd.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                zzot zzjo2 = this.zzanh.zzjo();
                Object obj2 = this.mLock;
                synchronized (obj2) {
                    try {
                        if (this.zzcjn) {
                            try {
                                zzvwVar = new zzvw(-1);
                            } catch (Throwable th2) {
                                th = th2;
                                obj = obj2;
                                throw th;
                            }
                        } else {
                            Iterator<zzvp> it3 = it;
                            Iterator<String> it4 = it2;
                            zzot zzotVar = zzjo;
                            ArrayList arrayList2 = arrayList;
                            obj = obj2;
                            try {
                                this.zzcju = new zzvt(this.mContext, next2, this.zzanu, this.zzcir, next, this.zzcjk.zzcrv, zzkoVar, this.zzcjk.zzatz, this.zzavr, this.zzciv, this.zzcjk.zzauq, this.zzcjk.zzauy, this.zzcjk.zzcsk, this.zzcjk.zzctf, this.zzciw);
                                zzvw zza = this.zzcju.zza(this.mStartTime, this.zzcjl);
                                this.zzcjq.add(zza);
                                if (zza.zzcjd == 0) {
                                    zzahw.zzby("Adapter succeeded.");
                                    this.zzanh.zzf("mediation_network_succeed", next2);
                                    if (!arrayList2.isEmpty()) {
                                        this.zzanh.zzf("mediation_networks_fail", TextUtils.join(",", arrayList2));
                                    }
                                    this.zzanh.zza(zzjo2, "mls");
                                    this.zzanh.zza(zzotVar, "ttm");
                                    return zza;
                                }
                                arrayList2.add(next2);
                                this.zzanh.zza(zzjo2, "mlf");
                                if (zza.zzcjf != null) {
                                    zzaij.zzdfn.post(new zzwd(this, zza));
                                }
                                arrayList = arrayList2;
                                zzjo = zzotVar;
                                it = it3;
                                it2 = it4;
                            } catch (Throwable th3) {
                                th = th3;
                                th = th;
                                throw th;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        obj = obj2;
                        th = th;
                        throw th;
                    }
                }
                return zzvwVar;
            }
        }
        ArrayList arrayList3 = arrayList;
        if (!arrayList3.isEmpty()) {
            this.zzanh.zzf("mediation_networks_fail", TextUtils.join(",", arrayList3));
        }
        return new zzvw(1);
    }

    @Override // com.google.android.gms.internal.zzvo
    public final List<zzvw> zzmf() {
        return this.zzcjq;
    }
}
