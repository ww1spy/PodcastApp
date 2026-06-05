package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzfu implements zzgc {
    private final Context mApplicationContext;
    private final zzala zzapq;
    private final com.google.android.gms.ads.internal.js.zzn zzavu;
    private final Object mLock = new Object();
    private final WeakHashMap<zzahd, zzfv> zzavs = new WeakHashMap<>();
    private final ArrayList<zzfv> zzavt = new ArrayList<>();

    public zzfu(Context context, zzala zzalaVar) {
        this.mApplicationContext = context.getApplicationContext();
        this.zzapq = zzalaVar;
        this.zzavu = new com.google.android.gms.ads.internal.js.zzn(context.getApplicationContext(), zzalaVar, (String) zzlc.zzio().zzd(zzoi.zzblc));
    }

    private final boolean zzg(zzahd zzahdVar) {
        boolean z;
        synchronized (this.mLock) {
            zzfv zzfvVar = this.zzavs.get(zzahdVar);
            z = zzfvVar != null && zzfvVar.zzge();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzgc
    public final void zza(zzfv zzfvVar) {
        synchronized (this.mLock) {
            if (!zzfvVar.zzge()) {
                this.zzavt.remove(zzfvVar);
                Iterator<Map.Entry<zzahd, zzfv>> it = this.zzavs.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue() == zzfvVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public final void zza(zzko zzkoVar, zzahd zzahdVar) {
        zza(zzkoVar, zzahdVar, zzahdVar.zzcnm.getView());
    }

    public final void zza(zzko zzkoVar, zzahd zzahdVar, View view) {
        zza(zzkoVar, zzahdVar, new zzgb(view, zzahdVar), (zzaof) null);
    }

    public final void zza(zzko zzkoVar, zzahd zzahdVar, View view, zzaof zzaofVar) {
        zza(zzkoVar, zzahdVar, new zzgb(view, zzahdVar), zzaofVar);
    }

    public final void zza(zzko zzkoVar, zzahd zzahdVar, zzhf zzhfVar, @Nullable zzaof zzaofVar) {
        zzfv zzfvVar;
        synchronized (this.mLock) {
            if (zzg(zzahdVar)) {
                zzfvVar = this.zzavs.get(zzahdVar);
            } else {
                zzfv zzfvVar2 = new zzfv(this.mApplicationContext, zzkoVar, zzahdVar, this.zzapq, zzhfVar);
                zzfvVar2.zza(this);
                this.zzavs.put(zzahdVar, zzfvVar2);
                this.zzavt.add(zzfvVar2);
                zzfvVar = zzfvVar2;
            }
            zzfvVar.zza(zzaofVar != null ? new zzgd(zzfvVar, zzaofVar) : new zzgh(zzfvVar, this.zzavu, this.mApplicationContext));
        }
    }

    public final void zzh(zzahd zzahdVar) {
        synchronized (this.mLock) {
            zzfv zzfvVar = this.zzavs.get(zzahdVar);
            if (zzfvVar != null) {
                zzfvVar.zzgc();
            }
        }
    }

    public final void zzi(zzahd zzahdVar) {
        synchronized (this.mLock) {
            zzfv zzfvVar = this.zzavs.get(zzahdVar);
            if (zzfvVar != null) {
                zzfvVar.stop();
            }
        }
    }

    public final void zzj(zzahd zzahdVar) {
        synchronized (this.mLock) {
            zzfv zzfvVar = this.zzavs.get(zzahdVar);
            if (zzfvVar != null) {
                zzfvVar.pause();
            }
        }
    }

    public final void zzk(zzahd zzahdVar) {
        synchronized (this.mLock) {
            zzfv zzfvVar = this.zzavs.get(zzahdVar);
            if (zzfvVar != null) {
                zzfvVar.resume();
            }
        }
    }
}
