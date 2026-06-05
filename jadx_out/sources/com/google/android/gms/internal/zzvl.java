package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzvl implements com.google.android.gms.ads.internal.gmsg.zzae {
    private /* synthetic */ zzvi zzcgy;
    private final com.google.android.gms.ads.internal.js.zzaa zzcgz;
    private final zzamd zzcha;

    public zzvl(zzvi zzviVar, com.google.android.gms.ads.internal.js.zzaa zzaaVar, zzamd zzamdVar) {
        this.zzcgy = zzviVar;
        this.zzcgz = zzaaVar;
        this.zzcha = zzamdVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzae
    public final void zzau(String str) {
        try {
            if (str == null) {
                this.zzcha.setException(new zzuw());
            } else {
                this.zzcha.setException(new zzuw(str));
            }
        } catch (IllegalStateException unused) {
        } catch (Throwable th) {
            this.zzcgz.release();
            throw th;
        }
        this.zzcgz.release();
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzae
    public final void zzd(JSONObject jSONObject) {
        zzuz zzuzVar;
        try {
            try {
                zzamd zzamdVar = this.zzcha;
                zzuzVar = this.zzcgy.zzcgs;
                zzamdVar.set(zzuzVar.zze(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e) {
                this.zzcha.set(e);
            }
        } finally {
            this.zzcgz.release();
        }
    }
}
