package com.google.android.gms.ads.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzkk;
import java.lang.ref.WeakReference;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzbj {
    private final zzbl zzarw;

    @Nullable
    private zzkk zzarx;
    private boolean zzary;
    private boolean zzarz;
    private long zzasa;
    private final Runnable zzy;

    public zzbj(zza zzaVar) {
        this(zzaVar, new zzbl(zzaij.zzdfn));
    }

    private zzbj(zza zzaVar, zzbl zzblVar) {
        this.zzary = false;
        this.zzarz = false;
        this.zzasa = 0L;
        this.zzarw = zzblVar;
        this.zzy = new zzbk(this, new WeakReference(zzaVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(zzbj zzbjVar, boolean z) {
        zzbjVar.zzary = false;
        return false;
    }

    public final void cancel() {
        this.zzary = false;
        this.zzarw.removeCallbacks(this.zzy);
    }

    public final void pause() {
        this.zzarz = true;
        if (this.zzary) {
            this.zzarw.removeCallbacks(this.zzy);
        }
    }

    public final void resume() {
        this.zzarz = false;
        if (this.zzary) {
            this.zzary = false;
            zza(this.zzarx, this.zzasa);
        }
    }

    public final void zza(zzkk zzkkVar, long j) {
        if (this.zzary) {
            zzahw.zzcz("An ad refresh is already scheduled.");
            return;
        }
        this.zzarx = zzkkVar;
        this.zzary = true;
        this.zzasa = j;
        if (this.zzarz) {
            return;
        }
        StringBuilder sb = new StringBuilder(65);
        sb.append("Scheduling ad refresh ");
        sb.append(j);
        sb.append(" milliseconds from now.");
        zzahw.zzcy(sb.toString());
        this.zzarw.postDelayed(this.zzy, j);
    }

    public final void zzdz() {
        this.zzarz = false;
        this.zzary = false;
        if (this.zzarx != null && this.zzarx.extras != null) {
            this.zzarx.extras.remove("_ad");
        }
        zza(this.zzarx, 0L);
    }

    public final boolean zzea() {
        return this.zzary;
    }

    public final void zzf(zzkk zzkkVar) {
        this.zzarx = zzkkVar;
    }

    public final void zzg(zzkk zzkkVar) {
        zza(zzkkVar, 60000L);
    }
}
