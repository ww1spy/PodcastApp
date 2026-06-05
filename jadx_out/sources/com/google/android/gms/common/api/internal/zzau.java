package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzau extends zzay {
    private /* synthetic */ zzao zzfxt;
    private final ArrayList<Api.zze> zzfxz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzau(zzao zzaoVar, ArrayList<Api.zze> arrayList) {
        super(zzaoVar, null);
        this.zzfxt = zzaoVar;
        this.zzfxz = arrayList;
    }

    @Override // com.google.android.gms.common.api.internal.zzay
    @WorkerThread
    public final void zzajj() {
        zzbi zzbiVar;
        Set<Scope> zzajp;
        com.google.android.gms.common.internal.zzan zzanVar;
        zzbi zzbiVar2;
        zzbiVar = this.zzfxt.zzfxd;
        zzba zzbaVar = zzbiVar.zzfvq;
        zzajp = this.zzfxt.zzajp();
        zzbaVar.zzfyk = zzajp;
        ArrayList<Api.zze> arrayList = this.zzfxz;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Api.zze zzeVar = arrayList.get(i);
            i++;
            zzanVar = this.zzfxt.zzfxp;
            zzbiVar2 = this.zzfxt.zzfxd;
            zzeVar.zza(zzanVar, zzbiVar2.zzfvq.zzfyk);
        }
    }
}
