package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzvi<I, O> implements zzux<I, O> {
    private final com.google.android.gms.ads.internal.js.zzn zzcgr;
    private final zzuz<O> zzcgs;
    private final zzva<I> zzcgt;
    private final String zzcgu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvi(com.google.android.gms.ads.internal.js.zzn zznVar, String str, zzva<I> zzvaVar, zzuz<O> zzuzVar) {
        this.zzcgr = zznVar;
        this.zzcgu = str;
        this.zzcgt = zzvaVar;
        this.zzcgs = zzuzVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(com.google.android.gms.ads.internal.js.zzaa zzaaVar, com.google.android.gms.ads.internal.js.zzaj zzajVar, I i, zzamd<O> zzamdVar) {
        try {
            com.google.android.gms.ads.internal.zzbt.zzel();
            String zzrc = zzaij.zzrc();
            com.google.android.gms.ads.internal.gmsg.zzd.zzcbs.zza(zzrc, new zzvl(this, zzaaVar, zzamdVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", zzrc);
            jSONObject.put("args", this.zzcgt.zzg(i));
            zzajVar.zzb(this.zzcgu, jSONObject);
        } catch (Exception e) {
            try {
                zzamdVar.setException(e);
                zzahw.zzb("Unable to invokeJavaScript", e);
            } finally {
                zzaaVar.release();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzald
    public final zzalt<O> zzc(I i) throws Exception {
        return zzf(i);
    }

    @Override // com.google.android.gms.internal.zzux
    public final zzalt<O> zzf(I i) {
        zzamd zzamdVar = new zzamd();
        com.google.android.gms.ads.internal.js.zzaa zzb = this.zzcgr.zzb((zzcv) null);
        zzb.zza(new zzvj(this, zzb, i, zzamdVar), new zzvk(this, zzamdVar, zzb));
        return zzamdVar;
    }
}
