package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.IOException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbcm extends zzbcu {
    final /* synthetic */ zzbcl zzfkt;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbcm(zzbcl zzbclVar, GameManagerClient gameManagerClient) {
        super(zzbclVar, gameManagerClient);
        this.zzfkt = zzbclVar;
    }

    @Override // com.google.android.gms.internal.zzbct
    public final void execute() {
        Cast.CastApi castApi;
        GoogleApiClient googleApiClient;
        try {
            castApi = this.zzfkt.zzfam;
            googleApiClient = this.zzfkt.zzffo;
            castApi.setMessageReceivedCallbacks(googleApiClient, this.zzfkt.getNamespace(), new zzbcn(this));
            this.zzfkt.zzagi();
            this.zzfkt.zzagh();
            this.zzfkt.zza((String) null, 1100, (JSONObject) null, this.zzezb);
        } catch (IOException | IllegalStateException unused) {
            this.zzezb.zza(-1L, 8, null);
        }
    }
}
