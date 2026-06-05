package com.google.android.gms.ads.internal.js;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzaqa;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zziu;
import com.google.android.gms.internal.zzlc;
import java.util.Map;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zze implements zzc {
    private final Context mContext;
    private final zzaof zzcct;

    public zze(Context context, zzala zzalaVar, @Nullable zzcv zzcvVar, com.google.android.gms.ads.internal.zzv zzvVar) throws zzaop {
        this.mContext = context;
        this.zzcct = zzbt.zzem().zza(context, zzaqa.zzvj(), "", false, false, zzcvVar, zzalaVar, null, null, null, zziu.zzhp());
        this.zzcct.getView().setWillNotDraw(true);
    }

    private static void runOnUiThread(Runnable runnable) {
        zzlc.zzij();
        if (zzako.zzsa()) {
            runnable.run();
        } else {
            zzaij.zzdfn.post(runnable);
        }
    }

    @Override // com.google.android.gms.ads.internal.js.zzc
    public final void destroy() {
        this.zzcct.destroy();
    }

    @Override // com.google.android.gms.ads.internal.js.zzc
    public final void zza(zzd zzdVar) {
        this.zzcct.zzua().zza(new zzk(this, zzdVar));
    }

    @Override // com.google.android.gms.ads.internal.js.zzaj
    public final void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj> zztVar) {
        this.zzcct.zzua().zza(str, new zzl(this, zztVar));
    }

    @Override // com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, Map<String, ?> map) {
        this.zzcct.zza(str, map);
    }

    @Override // com.google.android.gms.ads.internal.js.zza
    public final void zza(String str, JSONObject jSONObject) {
        this.zzcct.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.ads.internal.js.zzaj
    public final void zzb(String str, final com.google.android.gms.ads.internal.gmsg.zzt<? super zzaj> zztVar) {
        this.zzcct.zzua().zza(str, new com.google.android.gms.common.util.zzt(zztVar) { // from class: com.google.android.gms.ads.internal.js.zzf
            private final com.google.android.gms.ads.internal.gmsg.zzt zzcez;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcez = zztVar;
            }

            @Override // com.google.android.gms.common.util.zzt
            public final boolean apply(Object obj) {
                com.google.android.gms.ads.internal.gmsg.zzt zztVar2;
                com.google.android.gms.ads.internal.gmsg.zzt zztVar3 = this.zzcez;
                com.google.android.gms.ads.internal.gmsg.zzt zztVar4 = (com.google.android.gms.ads.internal.gmsg.zzt) obj;
                if (!(zztVar4 instanceof zzl)) {
                    return false;
                }
                zztVar2 = ((zzl) zztVar4).zzcfg;
                return zztVar2.equals(zztVar3);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.js.zzm
    public final void zzb(String str, JSONObject jSONObject) {
        runOnUiThread(new zzg(this, str, jSONObject));
    }

    @Override // com.google.android.gms.ads.internal.js.zzc
    public final void zzbb(String str) {
        runOnUiThread(new zzh(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.ads.internal.js.zzc
    public final void zzbc(String str) {
        runOnUiThread(new zzj(this, str));
    }

    @Override // com.google.android.gms.ads.internal.js.zzc
    public final void zzbd(String str) {
        runOnUiThread(new zzi(this, str));
    }

    @Override // com.google.android.gms.ads.internal.js.zzc
    public final zzak zzly() {
        return new zzal(this);
    }
}
