package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzft {
    private final String zzavm;
    private final JSONObject zzavn;
    private final String zzavo;
    private final String zzavp;
    private final boolean zzavq;
    private final boolean zzavr;

    public zzft(String str, zzala zzalaVar, String str2, JSONObject jSONObject, boolean z, boolean z2) {
        this.zzavp = zzalaVar.zzcu;
        this.zzavn = jSONObject;
        this.zzavo = str;
        this.zzavm = str2;
        this.zzavq = z;
        this.zzavr = z2;
    }

    public final String zzfv() {
        return this.zzavm;
    }

    public final String zzfw() {
        return this.zzavp;
    }

    public final JSONObject zzfx() {
        return this.zzavn;
    }

    public final String zzfy() {
        return this.zzavo;
    }

    public final boolean zzfz() {
        return this.zzavq;
    }

    public final boolean zzga() {
        return this.zzavr;
    }
}
