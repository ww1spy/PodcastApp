package com.google.android.gms.cast;

import android.support.annotation.NonNull;
import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaa implements OnCompleteListener<Void> {
    private /* synthetic */ CastRemoteDisplayLocalService zzevk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzevk = castRemoteDisplayLocalService;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Void> task) {
        WeakReference weakReference;
        WeakReference weakReference2;
        if (task.isSuccessful()) {
            this.zzevk.zzeb("remote display stopped");
        } else {
            this.zzevk.zzeb("Unable to stop the remote display, result unsuccessful");
            weakReference = this.zzevk.zzeuw;
            if (weakReference.get() != null) {
                weakReference2 = this.zzevk.zzeuw;
                ((CastRemoteDisplayLocalService.Callbacks) weakReference2.get()).onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_STOPPING_SERVICE_FAILED));
            }
        }
        CastRemoteDisplayLocalService.zzb(this.zzevk, (Display) null);
    }
}
