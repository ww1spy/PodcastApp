package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Future;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzafl extends zzahs implements zzafr, zzafu {
    private final Context mContext;
    public final String zzcip;
    private final zzahe zzcob;
    private final zzafy zzdaa;
    private final zzafu zzdab;
    private final String zzdac;
    private final zzvp zzdad;
    private final long zzdae;
    private zzafo zzdag;
    private Future zzdah;
    private int zzdaf = 0;
    private int mErrorCode = 3;
    private final Object mLock = new Object();

    public zzafl(Context context, String str, String str2, zzvp zzvpVar, zzahe zzaheVar, zzafy zzafyVar, zzafu zzafuVar, long j) {
        this.mContext = context;
        this.zzcip = str;
        this.zzdac = str2;
        this.zzdad = zzvpVar;
        this.zzcob = zzaheVar;
        this.zzdaa = zzafyVar;
        this.zzdab = zzafuVar;
        this.zzdae = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzkk zzkkVar, zzwi zzwiVar) {
        this.zzdaa.zzpd().zza((zzafu) this);
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzcip)) {
                zzwiVar.zza(zzkkVar, this.zzdac, this.zzdad.zzchb);
            } else {
                zzwiVar.zzc(zzkkVar, this.zzdac);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Fail to load ad from adapter.", e);
            zza(this.zzcip, 0);
        }
    }

    private final boolean zzf(long j) {
        int i;
        long elapsedRealtime = this.zzdae - (com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            i = 4;
        } else {
            try {
                this.mLock.wait(elapsedRealtime);
                return true;
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                i = 5;
            }
        }
        this.mErrorCode = i;
        return false;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzafu
    public final void zza(String str, int i) {
        synchronized (this.mLock) {
            this.zzdaf = 2;
            this.mErrorCode = i;
            this.mLock.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzafr
    public final void zzaa(int i) {
        zza(this.zzcip, 0);
    }

    @Override // com.google.android.gms.internal.zzafu
    public final void zzbr(String str) {
        synchronized (this.mLock) {
            this.zzdaf = 1;
            this.mLock.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        Handler handler;
        Runnable zzafnVar;
        if (this.zzdaa == null || this.zzdaa.zzpd() == null || this.zzdaa.zzpc() == null) {
            return;
        }
        zzaft zzpd = this.zzdaa.zzpd();
        zzpd.zza((zzafu) null);
        zzpd.zza((zzafr) this);
        zzkk zzkkVar = this.zzcob.zzcvm.zzcrv;
        zzwi zzpc = this.zzdaa.zzpc();
        try {
            if (zzpc.isInitialized()) {
                handler = zzako.zzaju;
                zzafnVar = new zzafm(this, zzkkVar, zzpc);
            } else {
                handler = zzako.zzaju;
                zzafnVar = new zzafn(this, zzpc, zzkkVar, zzpd);
            }
            handler.post(zzafnVar);
        } catch (RemoteException e) {
            zzahw.zzc("Fail to check if adapter is initialized.", e);
            zza(this.zzcip, 0);
        }
        long elapsedRealtime = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime();
        while (true) {
            synchronized (this.mLock) {
                if (this.zzdaf == 0) {
                    if (!zzf(elapsedRealtime)) {
                        this.zzdag = new zzafq().zzab(this.mErrorCode).zzg(com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime() - elapsedRealtime).zzbs(this.zzcip).zzbt(this.zzdad.zzche).zzpa();
                        break;
                    }
                } else {
                    this.zzdag = new zzafq().zzg(com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime() - elapsedRealtime).zzab(1 == this.zzdaf ? 6 : this.mErrorCode).zzbs(this.zzcip).zzbt(this.zzdad.zzche).zzpa();
                }
            }
        }
        zzpd.zza((zzafu) null);
        zzpd.zza((zzafr) null);
        if (this.zzdaf == 1) {
            this.zzdab.zzbr(this.zzcip);
        } else {
            this.zzdab.zza(this.zzcip, this.mErrorCode);
        }
    }

    public final Future zzow() {
        if (this.zzdah != null) {
            return this.zzdah;
        }
        zzalt zzaltVar = (zzalt) zzns();
        this.zzdah = zzaltVar;
        return zzaltVar;
    }

    public final zzafo zzox() {
        zzafo zzafoVar;
        synchronized (this.mLock) {
            zzafoVar = this.zzdag;
        }
        return zzafoVar;
    }

    public final zzvp zzoy() {
        return this.zzdad;
    }

    @Override // com.google.android.gms.internal.zzafr
    public final void zzoz() {
        zza(this.zzcob.zzcvm.zzcrv, this.zzdaa.zzpc());
    }
}
