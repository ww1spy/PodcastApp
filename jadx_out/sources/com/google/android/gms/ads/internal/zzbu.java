package com.google.android.gms.ads.internal;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzafc;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahf;
import com.google.android.gms.internal.zzahp;
import com.google.android.gms.internal.zzahs;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzajb;
import com.google.android.gms.internal.zzake;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzcr;
import com.google.android.gms.internal.zzcv;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzms;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzrs;
import com.google.android.gms.internal.zzrv;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.internal.zzsh;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzbu implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    public final Context zzaiq;
    boolean zzaqp;
    final String zzatw;
    public String zzatx;
    final zzcv zzaty;
    public final zzala zzatz;

    @Nullable
    zzbv zzaua;

    @Nullable
    public zzahs zzaub;

    @Nullable
    public zzajb zzauc;
    public zzko zzaud;

    @Nullable
    public zzahd zzaue;
    public zzahe zzauf;

    @Nullable
    public zzahf zzaug;

    @Nullable
    zzlf zzauh;

    @Nullable
    zzli zzaui;

    @Nullable
    zzly zzauj;

    @Nullable
    zzme zzauk;

    @Nullable
    zzrs zzaul;

    @Nullable
    zzrv zzaum;

    @Nullable
    zzsh zzaun;
    SimpleArrayMap<String, zzry> zzauo;
    SimpleArrayMap<String, zzsb> zzaup;
    zzqh zzauq;

    @Nullable
    zzns zzaur;

    @Nullable
    zzms zzaus;

    @Nullable
    zzse zzaut;

    @Nullable
    List<Integer> zzauu;

    @Nullable
    zzpb zzauv;

    @Nullable
    zzafc zzauw;

    @Nullable
    public String zzaux;

    @Nullable
    List<String> zzauy;

    @Nullable
    public zzahp zzauz;

    @Nullable
    View zzava;
    public int zzavb;
    private HashSet<zzahf> zzavc;
    private int zzavd;
    private int zzave;
    private zzake zzavf;
    private boolean zzavg;
    private boolean zzavh;
    private boolean zzavi;

    public zzbu(Context context, zzko zzkoVar, String str, zzala zzalaVar) {
        this(context, zzkoVar, str, zzalaVar, null);
    }

    private zzbu(Context context, zzko zzkoVar, String str, zzala zzalaVar, zzcv zzcvVar) {
        this.zzauz = null;
        this.zzava = null;
        this.zzavb = 0;
        this.zzaqp = false;
        this.zzavc = null;
        this.zzavd = -1;
        this.zzave = -1;
        this.zzavg = true;
        this.zzavh = true;
        this.zzavi = false;
        zzoi.initialize(context);
        if (zzbt.zzep().zzpv() != null) {
            List<String> zzjg = zzoi.zzjg();
            if (zzalaVar.zzdiz != 0) {
                zzjg.add(Integer.toString(zzalaVar.zzdiz));
            }
            zzbt.zzep().zzpv().zzg(zzjg);
        }
        this.zzatw = UUID.randomUUID().toString();
        if (zzkoVar.zzbib || zzkoVar.zzbid) {
            this.zzaua = null;
        } else {
            this.zzaua = new zzbv(context, str, zzalaVar.zzcu, this, this);
            this.zzaua.setMinimumWidth(zzkoVar.widthPixels);
            this.zzaua.setMinimumHeight(zzkoVar.heightPixels);
            this.zzaua.setVisibility(4);
        }
        this.zzaud = zzkoVar;
        this.zzatx = str;
        this.zzaiq = context;
        this.zzatz = zzalaVar;
        this.zzaty = new zzcv(new zzaf(this));
        this.zzavf = new zzake(200L);
        this.zzaup = new SimpleArrayMap<>();
    }

    private final void zzf(boolean z) {
        View findViewById;
        if (this.zzaua == null || this.zzaue == null || this.zzaue.zzcnm == null || this.zzaue.zzcnm.zzua() == null) {
            return;
        }
        if (!z || this.zzavf.tryAcquire()) {
            if (this.zzaue.zzcnm.zzua().zzfz()) {
                int[] iArr = new int[2];
                this.zzaua.getLocationOnScreen(iArr);
                zzlc.zzij();
                int zzb = zzako.zzb(this.zzaiq, iArr[0]);
                zzlc.zzij();
                int zzb2 = zzako.zzb(this.zzaiq, iArr[1]);
                if (zzb != this.zzavd || zzb2 != this.zzave) {
                    this.zzavd = zzb;
                    this.zzave = zzb2;
                    this.zzaue.zzcnm.zzua().zza(this.zzavd, this.zzave, !z);
                }
            }
            if (this.zzaua == null || (findViewById = this.zzaua.getRootView().findViewById(R.id.content)) == null) {
                return;
            }
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            this.zzaua.getGlobalVisibleRect(rect);
            findViewById.getGlobalVisibleRect(rect2);
            if (rect.top != rect2.top) {
                this.zzavg = false;
            }
            if (rect.bottom != rect2.bottom) {
                this.zzavh = false;
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzf(false);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzf(true);
        this.zzavi = true;
    }

    public final void zza(HashSet<zzahf> hashSet) {
        this.zzavc = hashSet;
    }

    public final HashSet<zzahf> zzfl() {
        return this.zzavc;
    }

    public final void zzfm() {
        if (this.zzaue == null || this.zzaue.zzcnm == null) {
            return;
        }
        this.zzaue.zzcnm.destroy();
    }

    public final void zzfn() {
        if (this.zzaue == null || this.zzaue.zzcjf == null) {
            return;
        }
        try {
            this.zzaue.zzcjf.destroy();
        } catch (RemoteException unused) {
            zzahw.zzcz("Could not destroy mediation adapter.");
        }
    }

    public final boolean zzfo() {
        return this.zzavb == 0;
    }

    public final boolean zzfp() {
        return this.zzavb == 1;
    }

    public final String zzfq() {
        return (this.zzavg && this.zzavh) ? "" : this.zzavg ? this.zzavi ? "top-scrollable" : "top-locked" : this.zzavh ? this.zzavi ? "bottom-scrollable" : "bottom-locked" : "";
    }

    public final void zzg(boolean z) {
        if (this.zzavb == 0 && this.zzaue != null && this.zzaue.zzcnm != null) {
            this.zzaue.zzcnm.stopLoading();
        }
        if (this.zzaub != null) {
            this.zzaub.cancel();
        }
        if (this.zzauc != null) {
            this.zzauc.cancel();
        }
        if (z) {
            this.zzaue = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(View view) {
        zzcr zzae;
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrm)).booleanValue() && (zzae = this.zzaty.zzae()) != null) {
            zzae.zzb(view);
        }
    }
}
