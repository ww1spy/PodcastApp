package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.hardware.display.VirtualDisplay;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.cast.CastRemoteDisplayApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.Hide;

@Hide
@Deprecated
/* loaded from: classes.dex */
public final class zzbeq implements CastRemoteDisplayApi {
    private static final zzbei zzeus = new zzbei("CastRemoteDisplayApiImpl");
    private VirtualDisplay zzeuj;
    private Api<?> zzfop;
    private final zzbfg zzfoq = new zzber(this);

    public zzbeq(Api api) {
        this.zzfop = api;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    public final void zzadn() {
        if (this.zzeuj != null) {
            if (this.zzeuj.getDisplay() != null) {
                zzbei zzbeiVar = zzeus;
                int displayId = this.zzeuj.getDisplay().getDisplayId();
                StringBuilder sb = new StringBuilder(38);
                sb.append("releasing virtual display: ");
                sb.append(displayId);
                zzbeiVar.zzb(sb.toString(), new Object[0]);
            }
            this.zzeuj.release();
            this.zzeuj = null;
        }
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayApi
    public final PendingResult<CastRemoteDisplay.CastRemoteDisplaySessionResult> startRemoteDisplay(GoogleApiClient googleApiClient, String str) {
        zzeus.zzb("startRemoteDisplay", new Object[0]);
        return googleApiClient.zze(new zzbes(this, googleApiClient, str));
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayApi
    public final PendingResult<CastRemoteDisplay.CastRemoteDisplaySessionResult> stopRemoteDisplay(GoogleApiClient googleApiClient) {
        zzeus.zzb("stopRemoteDisplay", new Object[0]);
        return googleApiClient.zze(new zzbet(this, googleApiClient));
    }
}
