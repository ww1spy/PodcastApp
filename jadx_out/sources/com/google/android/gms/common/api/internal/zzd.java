package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zzd extends zzb<Void> {
    private zzcq<Api.zzb, ?> zzfty;
    private zzdo<Api.zzb, ?> zzftz;

    public zzd(zzcr zzcrVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.zzfty = zzcrVar.zzfty;
        this.zzftz = zzcrVar.zzftz;
    }

    @Override // com.google.android.gms.common.api.internal.zzb, com.google.android.gms.common.api.internal.zza
    public final /* bridge */ /* synthetic */ void zza(@NonNull zzae zzaeVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zzb
    public final /* bridge */ /* synthetic */ void zza(@NonNull RuntimeException runtimeException) {
        super.zza(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zzb
    public final void zzb(zzbo<?> zzboVar) throws RemoteException {
        this.zzfty.zzb(zzboVar.zzaix(), this.zzejm);
        if (this.zzfty.zzakx() != null) {
            zzboVar.zzakh().put(this.zzfty.zzakx(), new zzcr(this.zzfty, this.zzftz));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzb, com.google.android.gms.common.api.internal.zza
    public final /* bridge */ /* synthetic */ void zzs(@NonNull Status status) {
        super.zzs(status);
    }
}
