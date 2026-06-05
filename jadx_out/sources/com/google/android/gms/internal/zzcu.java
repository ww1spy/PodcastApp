package com.google.android.gms.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzcu extends zzct {
    private zzcu(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzcu zza(String str, Context context, boolean z) {
        zza(context, z);
        return new zzcu(context, str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzct
    public final List<Callable<Void>> zza(zzdm zzdmVar, zzba zzbaVar, zzax zzaxVar) {
        if (zzdmVar.getExecutorService() == null || !this.zzahq) {
            return super.zza(zzdmVar, zzbaVar, zzaxVar);
        }
        int zzab = zzdmVar.zzab();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zza(zzdmVar, zzbaVar, zzaxVar));
        arrayList.add(new zzee(zzdmVar, "b0nS9elqzY5/VJmQt0NlC62dB7yCaB6LeKUB+YXUuuDDycP369v3LvQySmqqDQ6y", "vfxPDbj+Gh4UJloJgP7FDEw0pUJBChFkLoiSG9W3S+I=", zzbaVar, zzab, 24));
        return arrayList;
    }
}
