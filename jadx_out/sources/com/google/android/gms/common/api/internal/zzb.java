package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzb<T> extends zza {
    protected final TaskCompletionSource<T> zzejm;

    public zzb(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.zzejm = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zza
    public void zza(@NonNull zzae zzaeVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zza
    public final void zza(zzbo<?> zzboVar) throws DeadObjectException {
        Status zza;
        Status zza2;
        try {
            zzb(zzboVar);
        } catch (DeadObjectException e) {
            zza2 = zza.zza(e);
            zzs(zza2);
            throw e;
        } catch (RemoteException e2) {
            zza = zza.zza(e2);
            zzs(zza);
        } catch (RuntimeException e3) {
            zza(e3);
        }
    }

    public void zza(@NonNull RuntimeException runtimeException) {
        this.zzejm.trySetException(runtimeException);
    }

    protected abstract void zzb(zzbo<?> zzboVar) throws RemoteException;

    @Override // com.google.android.gms.common.api.internal.zza
    public void zzs(@NonNull Status status) {
        this.zzejm.trySetException(new ApiException(status));
    }
}
