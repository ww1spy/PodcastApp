package com.google.android.gms.internal;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzee extends zzeu {
    public zzee(zzdm zzdmVar, String str, String str2, zzba zzbaVar, int i, int i2) {
        super(zzdmVar, str, str2, zzbaVar, i, 24);
    }

    private final void zzaz() {
        AdvertisingIdClient zzaq = this.zzagq.zzaq();
        if (zzaq == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info info = zzaq.getInfo();
            String zzn = zzds.zzn(info.getId());
            if (zzn != null) {
                synchronized (this.zzakm) {
                    this.zzakm.zzfc = zzn;
                    this.zzakm.zzfe = Boolean.valueOf(info.isLimitAdTrackingEnabled());
                    this.zzakm.zzfd = 5;
                }
            }
        } catch (IOException unused) {
        }
    }

    @Override // com.google.android.gms.internal.zzeu, java.util.concurrent.Callable
    public final /* synthetic */ Object call() throws Exception {
        return call();
    }

    @Override // com.google.android.gms.internal.zzeu
    protected final void zzaw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzagq.zzai()) {
            zzaz();
            return;
        }
        synchronized (this.zzakm) {
            this.zzakm.zzfc = (String) this.zzaku.invoke(null, this.zzagq.getContext());
        }
    }

    @Override // com.google.android.gms.internal.zzeu
    /* renamed from: zzay */
    public final Void call() throws Exception {
        if (this.zzagq.isInitialized()) {
            return super.call();
        }
        if (!this.zzagq.zzai()) {
            return null;
        }
        zzaz();
        return null;
    }
}
