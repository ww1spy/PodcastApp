package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Status;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbdr extends zzbee {
    private final Handler mHandler;
    private final AtomicReference<zzbdp> zzfmy;

    public zzbdr(zzbdp zzbdpVar) {
        this.zzfmy = new AtomicReference<>(zzbdpVar);
        this.mHandler = new Handler(zzbdpVar.getLooper());
    }

    private static void zza(zzbdp zzbdpVar, long j, int i) {
        Map map;
        Map map2;
        com.google.android.gms.common.api.internal.zzn zznVar;
        map = zzbdpVar.zzfmq;
        synchronized (map) {
            map2 = zzbdpVar.zzfmq;
            zznVar = (com.google.android.gms.common.api.internal.zzn) map2.remove(Long.valueOf(j));
        }
        if (zznVar != null) {
            zznVar.setResult(new Status(i));
        }
    }

    private static boolean zza(zzbdp zzbdpVar, int i) {
        Object obj;
        com.google.android.gms.common.api.internal.zzn zznVar;
        com.google.android.gms.common.api.internal.zzn zznVar2;
        obj = zzbdp.zzfmu;
        synchronized (obj) {
            zznVar = zzbdpVar.zzfms;
            if (zznVar == null) {
                return false;
            }
            zznVar2 = zzbdpVar.zzfms;
            zznVar2.setResult(new Status(i));
            zzbdp.zzb(zzbdpVar, (com.google.android.gms.common.api.internal.zzn) null);
            return true;
        }
    }

    public final boolean isDisposed() {
        return this.zzfmy.get() == null;
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void onApplicationDisconnected(int i) {
        Cast.Listener listener;
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zzbdpVar.zzfmn = null;
        zzbdpVar.zzfmo = null;
        zza(zzbdpVar, i);
        listener = zzbdpVar.zzetn;
        if (listener != null) {
            this.mHandler.post(new zzbds(this, zzbdpVar, i));
        }
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        Object obj;
        com.google.android.gms.common.api.internal.zzn zznVar;
        com.google.android.gms.common.api.internal.zzn zznVar2;
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zzbdpVar.zzfmc = applicationMetadata;
        zzbdpVar.zzfmn = applicationMetadata.getApplicationId();
        zzbdpVar.zzfmo = str2;
        zzbdpVar.zzfmg = str;
        obj = zzbdp.zzfmt;
        synchronized (obj) {
            zznVar = zzbdpVar.zzfmr;
            if (zznVar != null) {
                zznVar2 = zzbdpVar.zzfmr;
                zznVar2.setResult(new zzbdq(new Status(0), applicationMetadata, str, str2, z));
                zzbdp.zza(zzbdpVar, (com.google.android.gms.common.api.internal.zzn) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zza(String str, double d, boolean z) {
        zzbei zzbeiVar;
        zzbeiVar = zzbdp.zzeus;
        zzbeiVar.zzb("Deprecated callback: \"onStatusreceived\"", new Object[0]);
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zza(String str, long j, int i) {
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zza(zzbdpVar, j, i);
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zza(String str, byte[] bArr) {
        zzbei zzbeiVar;
        if (this.zzfmy.get() == null) {
            return;
        }
        zzbeiVar = zzbdp.zzeus;
        zzbeiVar.zzb("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", str, Integer.valueOf(bArr.length));
    }

    public final zzbdp zzagv() {
        zzbdp andSet = this.zzfmy.getAndSet(null);
        if (andSet == null) {
            return null;
        }
        andSet.zzago();
        return andSet;
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzb(zzbdd zzbddVar) {
        zzbei zzbeiVar;
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zzbeiVar = zzbdp.zzeus;
        zzbeiVar.zzb("onApplicationStatusChanged", new Object[0]);
        this.mHandler.post(new zzbdu(this, zzbdpVar, zzbddVar));
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzb(zzbdx zzbdxVar) {
        zzbei zzbeiVar;
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zzbeiVar = zzbdp.zzeus;
        zzbeiVar.zzb("onDeviceStatusChanged", new Object[0]);
        this.mHandler.post(new zzbdt(this, zzbdpVar, zzbdxVar));
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzb(String str, long j) {
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zza(zzbdpVar, j, 0);
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzbf(int i) {
        Object obj;
        com.google.android.gms.common.api.internal.zzn zznVar;
        com.google.android.gms.common.api.internal.zzn zznVar2;
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        obj = zzbdp.zzfmt;
        synchronized (obj) {
            zznVar = zzbdpVar.zzfmr;
            if (zznVar != null) {
                zznVar2 = zzbdpVar.zzfmr;
                zznVar2.setResult(new zzbdq(new Status(i)));
                zzbdp.zza(zzbdpVar, (com.google.android.gms.common.api.internal.zzn) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzbk(int i) {
        zzbei zzbeiVar;
        zzbdp zzagv = zzagv();
        if (zzagv == null) {
            return;
        }
        zzbeiVar = zzbdp.zzeus;
        zzbeiVar.zzb("ICastDeviceControllerListener.onDisconnected: %d", Integer.valueOf(i));
        if (i != 0) {
            zzagv.zzcd(2);
        }
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzbl(int i) {
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zza(zzbdpVar, i);
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzbm(int i) {
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zza(zzbdpVar, i);
    }

    @Override // com.google.android.gms.internal.zzbed
    public final void zzr(String str, String str2) {
        zzbei zzbeiVar;
        zzbdp zzbdpVar = this.zzfmy.get();
        if (zzbdpVar == null) {
            return;
        }
        zzbeiVar = zzbdp.zzeus;
        zzbeiVar.zzb("Receive (type=text, ns=%s) %s", str, str2);
        this.mHandler.post(new zzbdv(this, zzbdpVar, str, str2));
    }
}
