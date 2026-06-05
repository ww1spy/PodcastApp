package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzwu;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaw implements com.google.android.gms.ads.internal.gmsg.zzt<zzaof> {
    private /* synthetic */ zzwr zzarb;
    private /* synthetic */ zzab zzarc;
    private /* synthetic */ zzwu zzard;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaw(zzwr zzwrVar, zzab zzabVar, zzwu zzwuVar) {
        this.zzarb = zzwrVar;
        this.zzarc = zzabVar;
        this.zzard = zzwuVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        View view = zzaofVar2.getView();
        if (view != null) {
            try {
                if (this.zzarb != null) {
                    if (this.zzarb.getOverrideClickHandling()) {
                        zzar.zzc(zzaofVar2);
                        return;
                    } else {
                        this.zzarb.zzh(com.google.android.gms.dynamic.zzn.zzz(view));
                        this.zzarc.zzaow.onAdClicked();
                        return;
                    }
                }
                if (this.zzard != null) {
                    if (this.zzard.getOverrideClickHandling()) {
                        zzar.zzc(zzaofVar2);
                    } else {
                        this.zzard.zzh(com.google.android.gms.dynamic.zzn.zzz(view));
                        this.zzarc.zzaow.onAdClicked();
                    }
                }
            } catch (RemoteException e) {
                zzahw.zzc("Unable to call handleClick on mapper", e);
            }
        }
    }
}
