package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Callable;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaqc {
    public static zzaof zza(final Context context, final zzaqa zzaqaVar, final String str, final boolean z, final boolean z2, @Nullable final zzcv zzcvVar, final zzala zzalaVar, final zzov zzovVar, final com.google.android.gms.ads.internal.zzbm zzbmVar, final com.google.android.gms.ads.internal.zzv zzvVar, final zziu zziuVar) throws zzaop {
        try {
            return (zzaof) zzakg.zzb(null, new Callable(context, zzaqaVar, str, z, z2, zzcvVar, zzalaVar, zzovVar, zzbmVar, zzvVar, zziuVar) { // from class: com.google.android.gms.internal.zzaqd
                private final Context zzdpw;
                private final boolean zzdry;
                private final boolean zzdrz;
                private final zzaqa zzdsj;
                private final String zzdsk;
                private final zzcv zzdsl;
                private final zzala zzdsm;
                private final zzov zzdsn;
                private final com.google.android.gms.ads.internal.zzbm zzdso;
                private final com.google.android.gms.ads.internal.zzv zzdsp;
                private final zziu zzdsq;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdpw = context;
                    this.zzdsj = zzaqaVar;
                    this.zzdsk = str;
                    this.zzdry = z;
                    this.zzdrz = z2;
                    this.zzdsl = zzcvVar;
                    this.zzdsm = zzalaVar;
                    this.zzdsn = zzovVar;
                    this.zzdso = zzbmVar;
                    this.zzdsp = zzvVar;
                    this.zzdsq = zziuVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context2 = this.zzdpw;
                    zzaqa zzaqaVar2 = this.zzdsj;
                    String str2 = this.zzdsk;
                    boolean z3 = this.zzdry;
                    boolean z4 = this.zzdrz;
                    zzaqe zzc = zzaqe.zzc(context2, zzaqaVar2, str2, z3, z4, this.zzdsl, this.zzdsm, this.zzdsn, this.zzdso, this.zzdsp, this.zzdsq);
                    zzc.setWebViewClient(com.google.android.gms.ads.internal.zzbt.zzen().zzc(zzc, z4));
                    zzc.setWebChromeClient(com.google.android.gms.ads.internal.zzbt.zzen().zzj(zzc));
                    return new zzaoq(zzc);
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(th, "AdWebViewFactory.newAdWebView2");
            throw new zzaop("Webview initialization failed.", th);
        }
    }
}
