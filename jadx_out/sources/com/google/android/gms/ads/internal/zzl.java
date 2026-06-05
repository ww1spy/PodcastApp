package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzagq;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzow;
import com.google.android.gms.internal.zzzm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzl implements Runnable {
    final /* synthetic */ zzahe zzant;
    final /* synthetic */ zzi zzanz;
    final /* synthetic */ zzagq zzaoa;
    private /* synthetic */ zzov zzaob;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzi zziVar, zzahe zzaheVar, zzagq zzagqVar, zzov zzovVar) {
        this.zzanz = zziVar;
        this.zzant = zzaheVar;
        this.zzaoa = zzagqVar;
        this.zzaob = zzovVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzant.zzdcw.zzctx && this.zzanz.zzanm.zzauv != null) {
            String str = null;
            if (this.zzant.zzdcw.zzcno != null) {
                zzbt.zzel();
                str = zzaij.zzci(this.zzant.zzdcw.zzcno);
            }
            zzow zzowVar = new zzow(this.zzanz, str, this.zzant.zzdcw.body);
            this.zzanz.zzanm.zzavb = 1;
            try {
                this.zzanz.zzank = false;
                this.zzanz.zzanm.zzauv.zza(zzowVar);
                return;
            } catch (RemoteException e) {
                zzahw.zzc("Could not call the onCustomRenderedAdLoadedListener.", e);
                this.zzanz.zzank = true;
            }
        }
        zzw zzwVar = new zzw(this.zzanz.zzanm.zzaiq, this.zzaoa, this.zzant.zzdcw.zzcug);
        try {
            zzaof zza = this.zzanz.zza(this.zzant, zzwVar, this.zzaoa);
            zza.setOnTouchListener(new zzn(this, zzwVar));
            zza.setOnClickListener(new zzo(this, zzwVar));
            this.zzanz.zzanm.zzavb = 0;
            zzbu zzbuVar = this.zzanz.zzanm;
            zzbt.zzek();
            zzbuVar.zzauc = zzzm.zza(this.zzanz.zzanm.zzaiq, this.zzanz, this.zzant, this.zzanz.zzanm.zzaty, zza, this.zzanz.zzanu, this.zzanz, this.zzaob);
        } catch (zzaop e2) {
            zzahw.zzb("Could not obtain webview.", e2);
            zzaij.zzdfn.post(new zzm(this));
        }
    }
}
