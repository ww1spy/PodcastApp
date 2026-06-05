package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Status;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbcv implements zzben {
    private /* synthetic */ zzbcl zzfkz;
    private /* synthetic */ zzbcu zzflc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcv(zzbcu zzbcuVar, zzbcl zzbclVar) {
        this.zzflc = zzbcuVar;
        this.zzfkz = zzbclVar;
    }

    @Override // com.google.android.gms.internal.zzben
    public final void zza(long j, int i, Object obj) {
        GameManagerClient gameManagerClient;
        GameManagerClient gameManagerClient2;
        try {
            if (obj == null) {
                zzbcu zzbcuVar = this.zzflc;
                Status status = new Status(i, null, null);
                gameManagerClient2 = this.zzflc.zzflb;
                zzbcuVar.setResult((zzbcu) new zzbcw(status, gameManagerClient2));
                return;
            }
            zzbcz zzbczVar = (zzbcz) obj;
            zzbcy zzbcyVar = zzbczVar.zzfkk;
            if (zzbcyVar != null && !zzbdw.zza("1.0.0", zzbcyVar.getVersion())) {
                zzbcl.zza(this.zzflc.zzfkt, (zzbcy) null);
                this.zzflc.setResult((zzbcu) zzbcu.zzm(new Status(GameManagerClient.STATUS_INCORRECT_VERSION, String.format(Locale.ROOT, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s", zzbcyVar.getVersion(), "1.0.0"))));
            } else {
                zzbcu zzbcuVar2 = this.zzflc;
                Status status2 = new Status(i, zzbczVar.zzflk, null);
                gameManagerClient = this.zzflc.zzflb;
                zzbcuVar2.setResult((zzbcu) new zzbcw(status2, gameManagerClient));
            }
        } catch (ClassCastException unused) {
            this.zzflc.setResult((zzbcu) zzbcu.zzm(new Status(13)));
        }
    }

    @Override // com.google.android.gms.internal.zzben
    public final void zzx(long j) {
        this.zzflc.setResult((zzbcu) zzbcu.zzm(new Status(2103)));
    }
}
