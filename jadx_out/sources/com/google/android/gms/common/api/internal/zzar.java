package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.zzcyj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzar extends zzay {
    final /* synthetic */ zzao zzfxt;
    private final Map<Api.zze, zzaq> zzfxv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzar(zzao zzaoVar, Map<Api.zze, zzaq> map) {
        super(zzaoVar, null);
        this.zzfxt = zzaoVar;
        this.zzfxv = map;
    }

    private final int zza(@NonNull Api.zze zzeVar, @NonNull Map<Api.zze, Integer> map) {
        int i;
        Context context;
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzeVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(map);
        if (!zzeVar.zzahn()) {
            return 0;
        }
        if (map.containsKey(zzeVar)) {
            return map.get(zzeVar).intValue();
        }
        Iterator<Api.zze> it = map.keySet().iterator();
        if (it.hasNext()) {
            Api.zze next = it.next();
            next.zzahq();
            zzeVar.zzahq();
            i = map.get(next).intValue();
        } else {
            i = -1;
        }
        if (i == -1) {
            context = this.zzfxt.mContext;
            i = com.google.android.gms.common.zzf.zzc(context, zzeVar.zzahq());
        }
        map.put(zzeVar, Integer.valueOf(i));
        return i;
    }

    @Override // com.google.android.gms.common.api.internal.zzay
    @WorkerThread
    public final void zzajj() {
        boolean z;
        zzbi zzbiVar;
        zzcyj zzcyjVar;
        zzbi zzbiVar2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Api.zze zzeVar : this.zzfxv.keySet()) {
            if (zzeVar.zzahn()) {
                z2 = this.zzfxv.get(zzeVar).zzfvo;
                if (!z2) {
                    arrayList.add(zzeVar);
                }
            }
            arrayList2.add(zzeVar);
        }
        HashMap hashMap = new HashMap(this.zzfxv.size());
        int i = -1;
        int i2 = 0;
        if (!arrayList.isEmpty()) {
            ArrayList arrayList3 = arrayList;
            int size = arrayList3.size();
            while (i2 < size) {
                Object obj = arrayList3.get(i2);
                i2++;
                i = zza((Api.zze) obj, hashMap);
                if (i != 0) {
                    break;
                }
            }
        } else {
            ArrayList arrayList4 = arrayList2;
            int size2 = arrayList4.size();
            while (i2 < size2) {
                Object obj2 = arrayList4.get(i2);
                i2++;
                i = zza((Api.zze) obj2, hashMap);
                if (i == 0) {
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            zzbiVar2 = this.zzfxt.zzfxd;
            zzbiVar2.zza(new zzas(this, this.zzfxt, connectionResult));
            return;
        }
        z = this.zzfxt.zzfxn;
        if (z) {
            zzcyjVar = this.zzfxt.zzfxl;
            zzcyjVar.connect();
        }
        for (Api.zze zzeVar2 : this.zzfxv.keySet()) {
            zzaq zzaqVar = this.zzfxv.get(zzeVar2);
            if (!zzeVar2.zzahn() || zza(zzeVar2, hashMap) == 0) {
                zzeVar2.zza(zzaqVar);
            } else {
                zzbiVar = this.zzfxt.zzfxd;
                zzbiVar.zza(new zzat(this, this.zzfxt, zzaqVar));
            }
        }
    }
}
