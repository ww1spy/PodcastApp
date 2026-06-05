package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzgd implements zzgq {
    private final zzfv zzawv;
    private final zzaof zzaww;
    private final com.google.android.gms.ads.internal.gmsg.zzt<zzaof> zzawx = new zzge(this);
    private final com.google.android.gms.ads.internal.gmsg.zzt<zzaof> zzawy = new zzgf(this);
    private final com.google.android.gms.ads.internal.gmsg.zzt<zzaof> zzawz = new zzgg(this);

    public zzgd(zzfv zzfvVar, zzaof zzaofVar) {
        this.zzawv = zzfvVar;
        this.zzaww = zzaofVar;
        zzaof zzaofVar2 = this.zzaww;
        zzaofVar2.zza("/updateActiveView", this.zzawx);
        zzaofVar2.zza("/untrackActiveViewUnit", this.zzawy);
        zzaofVar2.zza("/visibilityChanged", this.zzawz);
        String valueOf = String.valueOf(this.zzawv.zzavy.zzfy());
        zzahw.zzby(valueOf.length() != 0 ? "Custom JS tracking ad unit: ".concat(valueOf) : new String("Custom JS tracking ad unit: "));
    }

    @Override // com.google.android.gms.internal.zzgq
    public final void zzb(JSONObject jSONObject, boolean z) {
        if (z) {
            this.zzawv.zzb(this);
        } else {
            this.zzaww.zzb("AFMA_updateActiveView", jSONObject);
        }
    }

    @Override // com.google.android.gms.internal.zzgq
    public final boolean zzgk() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzgq
    public final void zzgl() {
        zzaof zzaofVar = this.zzaww;
        zzaofVar.zzb("/visibilityChanged", this.zzawz);
        zzaofVar.zzb("/untrackActiveViewUnit", this.zzawy);
        zzaofVar.zzb("/updateActiveView", this.zzawx);
    }
}
