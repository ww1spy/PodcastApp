package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.atomic.AtomicBoolean;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzzg implements zzajb<Void>, zzapv {
    protected final Context mContext;
    protected final zzaof zzcct;
    private zzzn zzcoa;
    private zzahe zzcob;
    protected zzacj zzcoc;
    private Runnable zzcod;
    private Object zzcoe = new Object();
    private AtomicBoolean zzcof = new AtomicBoolean(true);

    /* JADX INFO: Access modifiers changed from: protected */
    public zzzg(Context context, zzahe zzaheVar, zzaof zzaofVar, zzzn zzznVar) {
        this.mContext = context;
        this.zzcob = zzaheVar;
        this.zzcoc = this.zzcob.zzdcw;
        this.zzcct = zzaofVar;
        this.zzcoa = zzznVar;
    }

    @Override // com.google.android.gms.internal.zzajb
    public void cancel() {
        if (this.zzcof.getAndSet(false)) {
            this.zzcct.stopLoading();
            com.google.android.gms.ads.internal.zzbt.zzen();
            zzaip.zzh(this.zzcct);
            zzx(-1);
            zzaij.zzdfn.removeCallbacks(this.zzcod);
        }
    }

    @Override // com.google.android.gms.internal.zzapv
    public final void zza(zzaof zzaofVar, boolean z) {
        zzahw.zzby("WebView finished loading.");
        if (this.zzcof.getAndSet(false)) {
            zzx(z ? -2 : 0);
            zzaij.zzdfn.removeCallbacks(this.zzcod);
        }
    }

    protected abstract void zznr();

    @Override // com.google.android.gms.internal.zzajb
    public final /* synthetic */ Void zzns() {
        com.google.android.gms.common.internal.zzbq.zzgn("Webview render task needs to be called on UI thread.");
        this.zzcod = new zzzh(this);
        zzaij.zzdfn.postDelayed(this.zzcod, ((Long) zzlc.zzio().zzd(zzoi.zzbrg)).longValue());
        zznr();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzx(int i) {
        if (i != -2) {
            this.zzcoc = new zzacj(i, this.zzcoc.zzcic);
        }
        this.zzcct.zztu();
        zzzn zzznVar = this.zzcoa;
        zzacf zzacfVar = this.zzcob.zzcvm;
        zzznVar.zzb(new zzahd(zzacfVar.zzcrv, this.zzcct, this.zzcoc.zzchw, i, this.zzcoc.zzchx, this.zzcoc.zzctq, this.zzcoc.orientation, this.zzcoc.zzcic, zzacfVar.zzcry, this.zzcoc.zzcto, null, null, null, null, null, this.zzcoc.zzctp, this.zzcob.zzaud, this.zzcoc.zzctn, this.zzcob.zzdcn, this.zzcoc.zzcts, this.zzcoc.zzctt, this.zzcob.zzdch, null, this.zzcoc.zzcuc, this.zzcoc.zzcud, this.zzcoc.zzcue, this.zzcoc.zzcuf, this.zzcoc.zzcug, null, this.zzcoc.zzchz, this.zzcoc.zzcuj, this.zzcob.zzdcu, this.zzcob.zzdcw.zzaqw, this.zzcob.zzdcv));
    }
}
