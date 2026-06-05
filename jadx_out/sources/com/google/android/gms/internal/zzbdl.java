package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* loaded from: classes.dex */
final class zzbdl extends com.google.android.gms.common.api.internal.zzde<zzbdn, Void> {
    private /* synthetic */ List zzffw;
    private /* synthetic */ String[] zzflz;
    private /* synthetic */ String zzfma;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdl(zzbdj zzbdjVar, String[] strArr, String str, List list) {
        this.zzflz = strArr;
        this.zzfma = str;
        this.zzffw = list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzde
    public final /* synthetic */ void zza(zzbdn zzbdnVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        ((zzbef) zzbdnVar.zzalw()).zza(new zzbdm(this, taskCompletionSource), this.zzflz, this.zzfma, this.zzffw);
    }
}
