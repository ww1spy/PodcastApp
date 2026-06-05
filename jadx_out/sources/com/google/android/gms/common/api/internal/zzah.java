package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.support.v4.util.ArraySet;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public class zzah extends zzo {
    private zzbm zzfsq;
    private final ArraySet<zzh<?>> zzfxa;

    private zzah(zzcf zzcfVar) {
        super(zzcfVar);
        this.zzfxa = new ArraySet<>();
        this.zzgam.zza("ConnectionlessLifecycleHelper", this);
    }

    public static void zza(Activity activity, zzbm zzbmVar, zzh<?> zzhVar) {
        zzcf zzo = zzo(activity);
        zzah zzahVar = (zzah) zzo.zza("ConnectionlessLifecycleHelper", zzah.class);
        if (zzahVar == null) {
            zzahVar = new zzah(zzo);
        }
        zzahVar.zzfsq = zzbmVar;
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzhVar, "ApiKey cannot be null");
        zzahVar.zzfxa.add(zzhVar);
        zzbmVar.zza(zzahVar);
    }

    private final void zzajg() {
        if (this.zzfxa.isEmpty()) {
            return;
        }
        this.zzfsq.zza(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onResume() {
        super.onResume();
        zzajg();
    }

    @Override // com.google.android.gms.common.api.internal.zzo, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        zzajg();
    }

    @Override // com.google.android.gms.common.api.internal.zzo, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        this.zzfsq.zzb(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzo
    public final void zza(ConnectionResult connectionResult, int i) {
        this.zzfsq.zza(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zzo
    protected final void zzaih() {
        this.zzfsq.zzaih();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArraySet<zzh<?>> zzajf() {
        return this.zzfxa;
    }
}
