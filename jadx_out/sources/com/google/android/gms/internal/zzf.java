package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public final class zzf implements zzt {
    private final Map<String, List<zzr<?>>> zzp = new HashMap();
    private final zzd zzq;

    public zzf(zzd zzdVar) {
        this.zzq = zzdVar;
    }

    public final synchronized boolean zzb(zzr<?> zzrVar) {
        String url = zzrVar.getUrl();
        if (!this.zzp.containsKey(url)) {
            this.zzp.put(url, null);
            zzrVar.zza((zzt) this);
            if (zzaf.DEBUG) {
                zzaf.zzb("new request, sending to network %s", url);
            }
            return false;
        }
        List<zzr<?>> list = this.zzp.get(url);
        if (list == null) {
            list = new ArrayList<>();
        }
        zzrVar.zzb("waiting-for-response");
        list.add(zzrVar);
        this.zzp.put(url, list);
        if (zzaf.DEBUG) {
            zzaf.zzb("Request for cacheKey=%s is in flight, putting on hold.", url);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.zzt
    public final synchronized void zza(zzr<?> zzrVar) {
        BlockingQueue blockingQueue;
        String url = zzrVar.getUrl();
        List<zzr<?>> remove = this.zzp.remove(url);
        if (remove != null && !remove.isEmpty()) {
            if (zzaf.DEBUG) {
                zzaf.zza("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), url);
            }
            zzr<?> remove2 = remove.remove(0);
            this.zzp.put(url, remove);
            remove2.zza((zzt) this);
            try {
                blockingQueue = this.zzq.zzi;
                blockingQueue.put(remove2);
            } catch (InterruptedException e) {
                zzaf.zzc("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.zzq.quit();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzt
    public final void zza(zzr<?> zzrVar, zzx<?> zzxVar) {
        List<zzr<?>> remove;
        zzaa zzaaVar;
        if (zzxVar.zzbg == null || zzxVar.zzbg.zza()) {
            zza(zzrVar);
            return;
        }
        String url = zzrVar.getUrl();
        synchronized (this) {
            remove = this.zzp.remove(url);
        }
        if (remove != null) {
            if (zzaf.DEBUG) {
                zzaf.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), url);
            }
            for (zzr<?> zzrVar2 : remove) {
                zzaaVar = this.zzq.zzk;
                zzaaVar.zzb(zzrVar2, zzxVar);
            }
        }
    }
}
