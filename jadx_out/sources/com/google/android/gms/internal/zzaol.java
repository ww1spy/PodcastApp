package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaol {
    public static zzalt<zzaof> zza(final Context context, final zzala zzalaVar, final String str, final zzcv zzcvVar, final com.google.android.gms.ads.internal.zzv zzvVar) {
        return zzali.zza(zzali.zzh(null), new zzald(context, zzcvVar, zzalaVar, zzvVar, str) { // from class: com.google.android.gms.internal.zzaom
            private final zzcv zzcfn;
            private final Context zzdpw;
            private final zzala zzdpx;
            private final com.google.android.gms.ads.internal.zzv zzdpy;
            private final String zzdpz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdpw = context;
                this.zzcfn = zzcvVar;
                this.zzdpx = zzalaVar;
                this.zzdpy = zzvVar;
                this.zzdpz = str;
            }

            @Override // com.google.android.gms.internal.zzald
            public final zzalt zzc(Object obj) {
                Context context2 = this.zzdpw;
                zzcv zzcvVar2 = this.zzcfn;
                zzala zzalaVar2 = this.zzdpx;
                com.google.android.gms.ads.internal.zzv zzvVar2 = this.zzdpy;
                String str2 = this.zzdpz;
                zzaof zza = com.google.android.gms.ads.internal.zzbt.zzem().zza(context2, zzaqa.zzvj(), "", false, false, zzcvVar2, zzalaVar2, null, null, zzvVar2, zziu.zzhp());
                final zzamc zzi = zzamc.zzi(zza);
                zza.zzua().zza(new zzapv(zzi) { // from class: com.google.android.gms.internal.zzaon
                    private final zzamc zzdqa;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzdqa = zzi;
                    }

                    @Override // com.google.android.gms.internal.zzapv
                    public final void zza(zzaof zzaofVar, boolean z) {
                        this.zzdqa.zzsg();
                    }
                });
                zza.loadUrl(str2);
                return zzi;
            }
        }, zzaly.zzdjt);
    }

    public final zzaof zza(Context context, zzaqa zzaqaVar, String str, boolean z, boolean z2, @Nullable zzcv zzcvVar, zzala zzalaVar, zzov zzovVar, com.google.android.gms.ads.internal.zzbm zzbmVar, com.google.android.gms.ads.internal.zzv zzvVar, zziu zziuVar) throws zzaop {
        zzoi.initialize(context);
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbov)).booleanValue()) {
            return zzaqc.zza(context, zzaqaVar, str, z2, z, zzcvVar, zzalaVar, zzovVar, zzbmVar, zzvVar, zziuVar);
        }
        try {
            return (zzaof) zzakg.zzb(context, new zzaoo(this, context, zzaqaVar, str, z, z2, zzcvVar, zzalaVar, zzovVar, zzbmVar, zzvVar, zziuVar));
        } catch (Throwable th) {
            throw new zzaop("Webview initialization failed.", th);
        }
    }
}
