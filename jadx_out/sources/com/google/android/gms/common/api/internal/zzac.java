package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzac implements OnCompleteListener<Map<zzh<?>, String>> {
    private /* synthetic */ zzaa zzfwu;

    private zzac(zzaa zzaaVar) {
        this.zzfwu = zzaaVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Map<zzh<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        zzaa zzaaVar;
        ConnectionResult connectionResult;
        boolean z2;
        Map map;
        Map map2;
        boolean zza;
        Map map3;
        Map map4;
        ConnectionResult connectionResult2;
        zzba zzbaVar;
        ConnectionResult connectionResult3;
        Condition condition;
        Map map5;
        Map map6;
        ConnectionResult zzajb;
        Map map7;
        Map map8;
        Map map9;
        lock = this.zzfwu.zzfwa;
        lock.lock();
        try {
            z = this.zzfwu.zzfwp;
            if (z) {
                if (task.isSuccessful()) {
                    zzaa zzaaVar2 = this.zzfwu;
                    map7 = this.zzfwu.zzfwg;
                    zzaaVar2.zzfwq = new ArrayMap(map7.size());
                    map8 = this.zzfwu.zzfwg;
                    for (zzz zzzVar : map8.values()) {
                        map9 = this.zzfwu.zzfwq;
                        map9.put(zzzVar.zzahv(), ConnectionResult.zzfqt);
                    }
                } else {
                    if (task.getException() instanceof AvailabilityException) {
                        AvailabilityException availabilityException = (AvailabilityException) task.getException();
                        z2 = this.zzfwu.zzfwn;
                        if (z2) {
                            zzaa zzaaVar3 = this.zzfwu;
                            map = this.zzfwu.zzfwg;
                            zzaaVar3.zzfwq = new ArrayMap(map.size());
                            map2 = this.zzfwu.zzfwg;
                            for (zzz zzzVar2 : map2.values()) {
                                Object zzahv = zzzVar2.zzahv();
                                ConnectionResult connectionResult4 = availabilityException.getConnectionResult(zzzVar2);
                                zza = this.zzfwu.zza((zzz<?>) zzzVar2, connectionResult4);
                                if (zza) {
                                    map3 = this.zzfwu.zzfwq;
                                    connectionResult4 = new ConnectionResult(16);
                                } else {
                                    map3 = this.zzfwu.zzfwq;
                                }
                                map3.put(zzahv, connectionResult4);
                            }
                        } else {
                            this.zzfwu.zzfwq = availabilityException.zzahr();
                        }
                        zzaaVar = this.zzfwu;
                        connectionResult = this.zzfwu.zzajb();
                    } else {
                        Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                        this.zzfwu.zzfwq = Collections.emptyMap();
                        zzaaVar = this.zzfwu;
                        connectionResult = new ConnectionResult(8);
                    }
                    zzaaVar.zzfwt = connectionResult;
                }
                map4 = this.zzfwu.zzfwr;
                if (map4 != null) {
                    map5 = this.zzfwu.zzfwq;
                    map6 = this.zzfwu.zzfwr;
                    map5.putAll(map6);
                    zzaa zzaaVar4 = this.zzfwu;
                    zzajb = this.zzfwu.zzajb();
                    zzaaVar4.zzfwt = zzajb;
                }
                connectionResult2 = this.zzfwu.zzfwt;
                if (connectionResult2 == null) {
                    this.zzfwu.zzaiz();
                    this.zzfwu.zzaja();
                } else {
                    zzaa.zza(this.zzfwu, false);
                    zzbaVar = this.zzfwu.zzfwj;
                    connectionResult3 = this.zzfwu.zzfwt;
                    zzbaVar.zzc(connectionResult3);
                }
                condition = this.zzfwu.zzfwl;
                condition.signalAll();
            }
        } finally {
            lock2 = this.zzfwu.zzfwa;
            lock2.unlock();
        }
    }
}
