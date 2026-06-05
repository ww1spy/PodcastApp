package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzdkf;
import com.google.android.gms.internal.zzdkg;
import com.google.android.gms.internal.zzdkl;
import com.google.android.gms.tagmanager.zzei;

@Hide
/* loaded from: classes.dex */
public final class zzy extends BasePendingResult<ContainerHolder> {
    private final Context mContext;
    private final Looper zzalj;
    private final com.google.android.gms.common.util.zze zzata;
    private final String zzknc;
    private long zzknh;
    private final TagManager zzkno;
    private final zzaf zzknr;
    private final zzek zzkns;
    private final int zzknt;
    private final zzai zzknu;
    private zzah zzknv;
    private zzdkg zzknw;
    private volatile zzv zzknx;
    private volatile boolean zzkny;
    private com.google.android.gms.internal.zzbs zzknz;
    private String zzkoa;
    private zzag zzkob;
    private zzac zzkoc;

    private zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzah zzahVar, zzag zzagVar, zzdkg zzdkgVar, com.google.android.gms.common.util.zze zzeVar, zzek zzekVar, zzai zzaiVar) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.mContext = context;
        this.zzkno = tagManager;
        this.zzalj = looper == null ? Looper.getMainLooper() : looper;
        this.zzknc = str;
        this.zzknt = i;
        this.zzknv = zzahVar;
        this.zzkob = zzagVar;
        this.zzknw = zzdkgVar;
        this.zzknr = new zzaf(this, null);
        this.zzknz = new com.google.android.gms.internal.zzbs();
        this.zzata = zzeVar;
        this.zzkns = zzekVar;
        this.zzknu = zzaiVar;
        if (zzbft()) {
            zzlk(zzei.zzbhh().zzbhj());
        }
    }

    public zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzalVar) {
        this(context, tagManager, looper, str, i, new zzey(context, str), new zzet(context, str, zzalVar), new zzdkg(context), com.google.android.gms.common.util.zzi.zzanq(), new zzdh(1, 5, 900000L, 5000L, "refreshing", com.google.android.gms.common.util.zzi.zzanq()), new zzai(context, str));
        this.zzknw.zznm(zzalVar.zzbgb());
    }

    public final synchronized void zza(com.google.android.gms.internal.zzbs zzbsVar) {
        if (this.zzknv != null) {
            zzdkf zzdkfVar = new zzdkf();
            zzdkfVar.zzldl = this.zzknh;
            zzdkfVar.zzyi = new com.google.android.gms.internal.zzbp();
            zzdkfVar.zzldm = zzbsVar;
            this.zzknv.zza(zzdkfVar);
        }
    }

    public final synchronized void zza(com.google.android.gms.internal.zzbs zzbsVar, long j, boolean z) {
        if (z) {
            try {
                boolean z2 = this.zzkny;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (isReady() && this.zzknx == null) {
            return;
        }
        this.zzknz = zzbsVar;
        this.zzknh = j;
        long zzbfw = this.zzknu.zzbfw();
        zzbg(Math.max(0L, Math.min(zzbfw, (this.zzknh + zzbfw) - this.zzata.currentTimeMillis())));
        Container container = new Container(this.mContext, this.zzkno.getDataLayer(), this.zzknc, j, zzbsVar);
        if (this.zzknx == null) {
            this.zzknx = new zzv(this.zzkno, this.zzalj, container, this.zzknr);
        } else {
            this.zzknx.zza(container);
        }
        if (!isReady() && this.zzkoc.zzb(container)) {
            setResult(this.zzknx);
        }
    }

    public final boolean zzbft() {
        zzei zzbhh = zzei.zzbhh();
        return (zzbhh.zzbhi() == zzei.zza.CONTAINER || zzbhh.zzbhi() == zzei.zza.CONTAINER_DEBUG) && this.zzknc.equals(zzbhh.getContainerId());
    }

    public final synchronized void zzbg(long j) {
        if (this.zzkob == null) {
            zzdj.zzcz("Refresh requested, but no network load scheduler.");
        } else {
            this.zzkob.zza(j, this.zzknz.zzyj);
        }
    }

    private final void zzby(boolean z) {
        zzz zzzVar = null;
        this.zzknv.zza(new zzad(this, zzzVar));
        this.zzkob.zza(new zzae(this, zzzVar));
        zzdkl zzey = this.zzknv.zzey(this.zzknt);
        if (zzey != null) {
            this.zzknx = new zzv(this.zzkno, this.zzalj, new Container(this.mContext, this.zzkno.getDataLayer(), this.zzknc, 0L, zzey), this.zzknr);
        }
        this.zzkoc = new zzab(this, z);
        if (zzbft()) {
            this.zzkob.zza(0L, "");
        } else {
            this.zzknv.zzbfv();
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: zzau */
    public final ContainerHolder zzb(Status status) {
        if (this.zzknx != null) {
            return this.zzknx;
        }
        if (status == Status.zzftt) {
            zzdj.e("timer expired: setting result to failure");
        }
        return new zzv(status);
    }

    public final synchronized String zzbfn() {
        return this.zzkoa;
    }

    public final void zzbfq() {
        zzdkl zzey = this.zzknv.zzey(this.zzknt);
        if (zzey != null) {
            setResult(new zzv(this.zzkno, this.zzalj, new Container(this.mContext, this.zzkno.getDataLayer(), this.zzknc, 0L, zzey), new zzaa(this)));
        } else {
            zzdj.e("Default was requested, but no default container was found");
            setResult(zzb(new Status(10, "Default was requested, but no default container was found", null)));
        }
        this.zzkob = null;
        this.zzknv = null;
    }

    public final void zzbfr() {
        zzby(false);
    }

    public final void zzbfs() {
        zzby(true);
    }

    public final synchronized void zzlk(String str) {
        this.zzkoa = str;
        if (this.zzkob != null) {
            this.zzkob.zzll(str);
        }
    }
}
