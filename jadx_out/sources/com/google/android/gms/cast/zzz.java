package com.google.android.gms.cast;

import android.content.Context;
import android.content.ServiceConnection;
import android.support.annotation.NonNull;
import android.view.Display;
import com.google.android.gms.internal.zzbei;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzz implements OnCompleteListener<Display> {
    private /* synthetic */ CastRemoteDisplayLocalService zzevk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzz(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzevk = castRemoteDisplayLocalService;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Display> task) {
        zzbei zzbeiVar;
        Object obj;
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        zzbei zzbeiVar2;
        AtomicBoolean atomicBoolean;
        Context context;
        ServiceConnection serviceConnection;
        zzbei zzbeiVar3;
        Context context2;
        ServiceConnection serviceConnection2;
        zzbei zzbeiVar4;
        zzbei zzbeiVar5;
        if (!task.isSuccessful()) {
            zzbeiVar5 = CastRemoteDisplayLocalService.zzeus;
            zzbeiVar5.zzc("Connection was not successful", new Object[0]);
            this.zzevk.zzadp();
            return;
        }
        zzbeiVar = CastRemoteDisplayLocalService.zzeus;
        zzbeiVar.zzb("startRemoteDisplay successful", new Object[0]);
        obj = CastRemoteDisplayLocalService.zzeuu;
        synchronized (obj) {
            castRemoteDisplayLocalService = CastRemoteDisplayLocalService.zzevi;
            if (castRemoteDisplayLocalService == null) {
                zzbeiVar4 = CastRemoteDisplayLocalService.zzeus;
                zzbeiVar4.zzb("Remote Display started but session already cancelled", new Object[0]);
                this.zzevk.zzadp();
                return;
            }
            Display result = task.getResult();
            if (result != null) {
                this.zzevk.zza(result);
            } else {
                zzbeiVar2 = CastRemoteDisplayLocalService.zzeus;
                zzbeiVar2.zzc("Cast Remote Display session created without display", new Object[0]);
            }
            atomicBoolean = CastRemoteDisplayLocalService.zzeuv;
            atomicBoolean.set(false);
            context = this.zzevk.zzevc;
            if (context != null) {
                serviceConnection = this.zzevk.zzevd;
                if (serviceConnection != null) {
                    try {
                        context2 = this.zzevk.zzevc;
                        serviceConnection2 = this.zzevk.zzevd;
                        context2.unbindService(serviceConnection2);
                    } catch (IllegalArgumentException unused) {
                        zzbeiVar3 = CastRemoteDisplayLocalService.zzeus;
                        zzbeiVar3.zzb("No need to unbind service, already unbound", new Object[0]);
                    }
                    CastRemoteDisplayLocalService.zza(this.zzevk, (ServiceConnection) null);
                    CastRemoteDisplayLocalService.zza(this.zzevk, (Context) null);
                }
            }
        }
    }
}
