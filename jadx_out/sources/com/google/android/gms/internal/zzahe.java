package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public final class zzahe {
    public final int errorCode;

    @Nullable
    public final zzko zzaud;
    public final zzacf zzcvm;

    @Nullable
    public final JSONObject zzdch;
    public final zzvq zzdcj;
    public final long zzdcn;
    public final long zzdco;
    public final zziu zzdcu;
    public final boolean zzdcv;
    public final zzacj zzdcw;

    public zzahe(zzacf zzacfVar, zzacj zzacjVar, zzvq zzvqVar, zzko zzkoVar, int i, long j, long j2, JSONObject jSONObject, zziu zziuVar, @Nullable Boolean bool) {
        this.zzcvm = zzacfVar;
        this.zzdcw = zzacjVar;
        this.zzdcj = zzvqVar;
        this.zzaud = zzkoVar;
        this.errorCode = i;
        this.zzdcn = j;
        this.zzdco = j2;
        this.zzdch = jSONObject;
        this.zzdcu = zziuVar;
        this.zzdcv = bool != null ? bool.booleanValue() : zzakh.zzo(zzacfVar.zzcrv);
    }

    public zzahe(zzacf zzacfVar, zzacj zzacjVar, zzvq zzvqVar, zzko zzkoVar, int i, long j, long j2, JSONObject jSONObject, zziz zzizVar) {
        this.zzcvm = zzacfVar;
        this.zzdcw = zzacjVar;
        this.zzdcj = null;
        this.zzaud = null;
        this.errorCode = i;
        this.zzdcn = j;
        this.zzdco = j2;
        this.zzdch = null;
        this.zzdcu = new zziu(zzizVar);
        this.zzdcv = false;
    }
}
