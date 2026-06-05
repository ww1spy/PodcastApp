package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzte implements zzm {
    private final Context mContext;
    private final Object mLock = new Object();

    @Nullable
    private zzsx zzcdb;
    private boolean zzcdc;

    public zzte(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.mLock) {
            if (this.zzcdb == null) {
                return;
            }
            this.zzcdb.disconnect();
            this.zzcdb = null;
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(zzte zzteVar, boolean z) {
        zzteVar.zzcdc = true;
        return true;
    }

    private final Future<ParcelFileDescriptor> zzb(zzsy zzsyVar) {
        zztf zztfVar = new zztf(this);
        zztg zztgVar = new zztg(this, zztfVar, zzsyVar);
        zztj zztjVar = new zztj(this, zztfVar);
        synchronized (this.mLock) {
            this.zzcdb = new zzsx(this.mContext, com.google.android.gms.ads.internal.zzbt.zzfa().zzrt(), zztgVar, zztjVar);
            this.zzcdb.zzals();
        }
        return zztfVar;
    }

    @Override // com.google.android.gms.internal.zzm
    public final zzp zzc(zzr<?> zzrVar) throws zzae {
        zzp zzpVar;
        zzsy zzh = zzsy.zzh(zzrVar);
        long intValue = ((Integer) zzlc.zzio().zzd(zzoi.zzbun)).intValue();
        long elapsedRealtime = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime();
        try {
            zzta zztaVar = (zzta) new zzacv(zzb(zzh).get(intValue, TimeUnit.MILLISECONDS)).zza(zzta.CREATOR);
            if (zztaVar.zzccz) {
                throw new zzae(zztaVar.zzcda);
            }
            if (zztaVar.zzccx.length != zztaVar.zzccy.length) {
                zzpVar = null;
            } else {
                HashMap hashMap = new HashMap();
                for (int i = 0; i < zztaVar.zzccx.length; i++) {
                    hashMap.put(zztaVar.zzccx[i], zztaVar.zzccy[i]);
                }
                zzpVar = new zzp(zztaVar.statusCode, zztaVar.data, hashMap, zztaVar.zzac, zztaVar.zzad);
            }
            return zzpVar;
        } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            return null;
        } finally {
            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime() - elapsedRealtime;
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(elapsedRealtime2);
            sb.append("ms");
            zzahw.v(sb.toString());
        }
    }
}
