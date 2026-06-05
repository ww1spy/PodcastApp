package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzajm;
import com.google.android.gms.internal.zzaly;
import com.google.android.gms.internal.zzami;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzah implements zzami<zzc> {
    final /* synthetic */ zzae zzcgg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(zzae zzaeVar) {
        this.zzcgg = zzaeVar;
    }

    @Override // com.google.android.gms.internal.zzami
    public final /* synthetic */ void zze(zzc zzcVar) {
        final zzc zzcVar2 = zzcVar;
        zzaly.zzdjt.execute(new Runnable(this, zzcVar2) { // from class: com.google.android.gms.ads.internal.js.zzai
            private final zzah zzcgh;
            private final zzc zzcgi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcgh = this;
                this.zzcgi = zzcVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzajm zzajmVar;
                zzah zzahVar = this.zzcgh;
                zzc zzcVar3 = this.zzcgi;
                zzajmVar = zzahVar.zzcgg.zzcfj;
                zzajmVar.zze(zzcVar3);
                zzcVar3.destroy();
            }
        });
    }
}
