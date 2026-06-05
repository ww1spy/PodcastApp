package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzuq {
    private final String zzapp;
    private final LinkedList<zzur> zzcec;
    private zzkk zzced;
    private final int zzcee;
    private boolean zzcef;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzuq(zzkk zzkkVar, String str, int i) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzkkVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(str);
        this.zzcec = new LinkedList<>();
        this.zzced = zzkkVar;
        this.zzapp = str;
        this.zzcee = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getAdUnitId() {
        return this.zzapp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getNetworkType() {
        return this.zzcee;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int size() {
        return this.zzcec.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zztk zztkVar, zzkk zzkkVar) {
        this.zzcec.add(new zzur(this, zztkVar, zzkkVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(zztk zztkVar) {
        zzur zzurVar = new zzur(this, zztkVar);
        this.zzcec.add(zzurVar);
        return zzurVar.load();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzur zzl(@Nullable zzkk zzkkVar) {
        if (zzkkVar != null) {
            this.zzced = zzkkVar;
        }
        return this.zzcec.remove();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzkk zzli() {
        return this.zzced;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzlj() {
        Iterator<zzur> it = this.zzcec.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().zzcek) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzlk() {
        Iterator<zzur> it = this.zzcec.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().load()) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzll() {
        this.zzcef = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzlm() {
        return this.zzcef;
    }
}
