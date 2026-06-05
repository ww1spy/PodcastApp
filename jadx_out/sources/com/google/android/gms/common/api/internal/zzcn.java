package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public class zzcn extends zzo {
    private TaskCompletionSource<Void> zzejm;

    private zzcn(zzcf zzcfVar) {
        super(zzcfVar);
        this.zzejm = new TaskCompletionSource<>();
        this.zzgam.zza("GmsAvailabilityHelper", this);
    }

    public static zzcn zzq(Activity activity) {
        zzcf zzo = zzo(activity);
        zzcn zzcnVar = (zzcn) zzo.zza("GmsAvailabilityHelper", zzcn.class);
        if (zzcnVar == null) {
            return new zzcn(zzo);
        }
        if (zzcnVar.zzejm.getTask().isComplete()) {
            zzcnVar.zzejm = new TaskCompletionSource<>();
        }
        return zzcnVar;
    }

    public final Task<Void> getTask() {
        return this.zzejm.getTask();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onDestroy() {
        super.onDestroy();
        this.zzejm.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzo
    public final void zza(ConnectionResult connectionResult, int i) {
        this.zzejm.setException(com.google.android.gms.common.internal.zzb.zzy(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution())));
    }

    @Override // com.google.android.gms.common.api.internal.zzo
    protected final void zzaih() {
        int isGooglePlayServicesAvailable = this.zzftg.isGooglePlayServicesAvailable(this.zzgam.zzakw());
        if (isGooglePlayServicesAvailable == 0) {
            this.zzejm.setResult(null);
        } else {
            if (this.zzejm.getTask().isComplete()) {
                return;
            }
            zzb(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }
}
