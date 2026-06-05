package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfl extends com.google.android.gms.common.api.internal.zzm<Status, zzbfn> {
    private final com.google.android.gms.clearcut.zze zzfqh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbfl(com.google.android.gms.clearcut.zze zzeVar, GoogleApiClient googleApiClient) {
        super(ClearcutLogger.API, googleApiClient);
        this.zzfqh = zzeVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzm, com.google.android.gms.common.api.internal.zzn
    @Hide
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zzbfl) obj);
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzbfn zzbfnVar) throws RemoteException {
        zzbfn zzbfnVar2 = zzbfnVar;
        zzbfm zzbfmVar = new zzbfm(this);
        try {
            com.google.android.gms.clearcut.zze zzeVar = this.zzfqh;
            if (zzeVar.zzfpm != null && zzeVar.zzfpt.zzpzb.length == 0) {
                zzeVar.zzfpt.zzpzb = zzeVar.zzfpm.zzahc();
            }
            if (zzeVar.zzfqg != null && zzeVar.zzfpt.zzpzi.length == 0) {
                zzeVar.zzfpt.zzpzi = zzeVar.zzfqg.zzahc();
            }
            zzeVar.zzfqa = zzfls.zzc(zzeVar.zzfpt);
            ((zzbfr) zzbfnVar2.zzalw()).zza(zzbfmVar, this.zzfqh);
        } catch (RuntimeException e) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e);
            zzu(new Status(10, "MessageProducer"));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
