package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zziw;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzabk extends zzahs implements zzabx {
    private final Context mContext;
    private zzvq zzcir;
    private zzacf zzcjk;
    private zzacj zzcoc;
    private Runnable zzcod;
    private final Object zzcoe = new Object();
    private final zzabj zzcre;
    private final zzacg zzcrf;
    private final zziu zzcrg;
    private final zziz zzcrh;
    zzajb zzcri;

    public zzabk(Context context, zzacg zzacgVar, zzabj zzabjVar, zziz zzizVar) {
        zziu zziuVar;
        zziv zzivVar;
        this.zzcre = zzabjVar;
        this.mContext = context;
        this.zzcrf = zzacgVar;
        this.zzcrh = zzizVar;
        this.zzcrg = new zziu(this.zzcrh);
        this.zzcrg.zza(new zziv(this) { // from class: com.google.android.gms.internal.zzabl
            private final zzabk zzcrj;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcrj = this;
            }

            @Override // com.google.android.gms.internal.zziv
            public final void zza(zzjk zzjkVar) {
                this.zzcrj.zzc(zzjkVar);
            }
        });
        final zzjv zzjvVar = new zzjv();
        zzjvVar.zzbfv = Integer.valueOf(this.zzcrf.zzatz.zzdiz);
        zzjvVar.zzbfw = Integer.valueOf(this.zzcrf.zzatz.zzdja);
        zzjvVar.zzbfx = Integer.valueOf(this.zzcrf.zzatz.zzdjb ? 0 : 2);
        this.zzcrg.zza(new zziv(zzjvVar) { // from class: com.google.android.gms.internal.zzabm
            private final zzjv zzcrk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcrk = zzjvVar;
            }

            @Override // com.google.android.gms.internal.zziv
            public final void zza(zzjk zzjkVar) {
                zzjkVar.zzbeo.zzbdz = this.zzcrk;
            }
        });
        if (this.zzcrf.zzcrw != null) {
            this.zzcrg.zza(new zziv(this) { // from class: com.google.android.gms.internal.zzabn
                private final zzabk zzcrj;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcrj = this;
                }

                @Override // com.google.android.gms.internal.zziv
                public final void zza(zzjk zzjkVar) {
                    this.zzcrj.zzb(zzjkVar);
                }
            });
        }
        zzko zzkoVar = this.zzcrf.zzaud;
        if (zzkoVar.zzbib && "interstitial_mb".equals(zzkoVar.zzbia)) {
            zziuVar = this.zzcrg;
            zzivVar = zzabo.zzcrl;
        } else if (zzkoVar.zzbib && "reward_mb".equals(zzkoVar.zzbia)) {
            zziuVar = this.zzcrg;
            zzivVar = zzabp.zzcrl;
        } else if (zzkoVar.zzbid || zzkoVar.zzbib) {
            zziuVar = this.zzcrg;
            zzivVar = zzabr.zzcrl;
        } else {
            zziuVar = this.zzcrg;
            zzivVar = zzabq.zzcrl;
        }
        zziuVar.zza(zzivVar);
        this.zzcrg.zza(zziw.zza.zzb.AD_REQUEST);
    }

    private final zzko zza(zzacf zzacfVar) throws zzabu {
        if (((this.zzcjk == null || this.zzcjk.zzauu == null || this.zzcjk.zzauu.size() <= 1) ? false : true) && this.zzcir != null && !this.zzcir.zzcim) {
            return null;
        }
        if (this.zzcoc.zzbie) {
            for (zzko zzkoVar : zzacfVar.zzaud.zzbic) {
                if (zzkoVar.zzbie) {
                    return new zzko(zzkoVar, zzacfVar.zzaud.zzbic);
                }
            }
        }
        if (this.zzcoc.zzctr == null) {
            throw new zzabu("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.zzcoc.zzctr.split("x");
        if (split.length != 2) {
            String valueOf = String.valueOf(this.zzcoc.zzctr);
            throw new zzabu(valueOf.length() != 0 ? "Invalid ad size format from the ad response: ".concat(valueOf) : new String("Invalid ad size format from the ad response: "), 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            for (zzko zzkoVar2 : zzacfVar.zzaud.zzbic) {
                float f = this.mContext.getResources().getDisplayMetrics().density;
                int i = zzkoVar2.width == -1 ? (int) (zzkoVar2.widthPixels / f) : zzkoVar2.width;
                int i2 = zzkoVar2.height == -2 ? (int) (zzkoVar2.heightPixels / f) : zzkoVar2.height;
                if (parseInt == i && parseInt2 == i2 && !zzkoVar2.zzbie) {
                    return new zzko(zzkoVar2, zzacfVar.zzaud.zzbic);
                }
            }
            String valueOf2 = String.valueOf(this.zzcoc.zzctr);
            throw new zzabu(valueOf2.length() != 0 ? "The ad size from the ad response was not one of the requested sizes: ".concat(valueOf2) : new String("The ad size from the ad response was not one of the requested sizes: "), 0);
        } catch (NumberFormatException unused) {
            String valueOf3 = String.valueOf(this.zzcoc.zzctr);
            throw new zzabu(valueOf3.length() != 0 ? "Invalid ad size number from the ad response: ".concat(valueOf3) : new String("Invalid ad size number from the ad response: "), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc(int i, String str) {
        if (i == 3 || i == -1) {
            zzahw.zzcy(str);
        } else {
            zzahw.zzcz(str);
        }
        this.zzcoc = this.zzcoc == null ? new zzacj(i) : new zzacj(i, this.zzcoc.zzcic);
        this.zzcre.zza(new zzahe(this.zzcjk != null ? this.zzcjk : new zzacf(this.zzcrf, -1L, null, null, null), this.zzcoc, this.zzcir, null, i, -1L, this.zzcoc.zzcts, null, this.zzcrg, null));
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
        synchronized (this.zzcoe) {
            if (this.zzcri != null) {
                this.zzcri.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzajb zza(zzala zzalaVar, zzamf<zzacf> zzamfVar) {
        Context context = this.mContext;
        if (new zzabw(context).zza(zzalaVar)) {
            zzahw.zzby("Fetching ad response from local ad request service.");
            zzacc zzaccVar = new zzacc(context, zzamfVar, this);
            zzaccVar.zzns();
            return zzaccVar;
        }
        zzahw.zzby("Fetching ad response from remote ad request service.");
        zzlc.zzij();
        if (zzako.zzbb(context)) {
            return new zzacd(context, zzalaVar, zzamfVar, this);
        }
        zzahw.zzcz("Failed to connect to remote ad request service.");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e9  */
    @Override // com.google.android.gms.internal.zzabx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(@android.support.annotation.NonNull com.google.android.gms.internal.zzacj r14) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabk.zza(com.google.android.gms.internal.zzacj):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzjk zzjkVar) {
        zzjkVar.zzbeo.zzbdw = this.zzcrf.zzcrw.packageName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzjk zzjkVar) {
        zzjkVar.zzbej = this.zzcrf.zzcsi;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        String string;
        zzahw.zzby("AdLoaderBackgroundTask started.");
        this.zzcod = new zzabs(this);
        zzaij.zzdfn.postDelayed(this.zzcod, ((Long) zzlc.zzio().zzd(zzoi.zzbrf)).longValue());
        long elapsedRealtime = com.google.android.gms.ads.internal.zzbt.zzes().elapsedRealtime();
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrd)).booleanValue() && this.zzcrf.zzcrv.extras != null && (string = this.zzcrf.zzcrv.extras.getString("_ad")) != null) {
            this.zzcjk = new zzacf(this.zzcrf, elapsedRealtime, null, null, null);
            zza(zzads.zza(this.mContext, this.zzcjk, string));
            return;
        }
        zzamj zzamjVar = new zzamj();
        zzaid.zzb(new zzabt(this, zzamjVar));
        String zzx = com.google.android.gms.ads.internal.zzbt.zzfh().zzx(this.mContext);
        String zzy = com.google.android.gms.ads.internal.zzbt.zzfh().zzy(this.mContext);
        String zzz = com.google.android.gms.ads.internal.zzbt.zzfh().zzz(this.mContext);
        com.google.android.gms.ads.internal.zzbt.zzfh().zzg(this.mContext, zzz);
        this.zzcjk = new zzacf(this.zzcrf, elapsedRealtime, zzx, zzy, zzz);
        zzamjVar.zzj(this.zzcjk);
    }
}
