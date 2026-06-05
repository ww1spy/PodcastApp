package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzzs extends zzzi {
    private final zzov zzanh;
    private zzwf zzanu;
    private final zzaof zzcct;
    private zzvq zzcir;
    private zzvo zzcon;
    protected zzvw zzcoo;
    private boolean zzcop;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzs(Context context, zzahe zzaheVar, zzwf zzwfVar, zzzn zzznVar, zzov zzovVar, zzaof zzaofVar) {
        super(context, zzaheVar, zzznVar);
        this.zzanu = zzwfVar;
        this.zzcir = zzaheVar.zzdcj;
        this.zzanh = zzovVar;
        this.zzcct = zzaofVar;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x0035. Please report as an issue. */
    private static String zzk(List<zzvw> list) {
        String str = "";
        if (list == null) {
            return "".toString();
        }
        Iterator<zzvw> it = list.iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                return str.substring(0, Math.max(0, str.length() - 1));
            }
            zzvw next = it.next();
            if (next != null && next.zzcje != null && !TextUtils.isEmpty(next.zzcje.zzche)) {
                String valueOf = String.valueOf(str);
                String str2 = next.zzcje.zzche;
                switch (next.zzcjd) {
                    case -1:
                        i = 4;
                        break;
                    case 0:
                        break;
                    case 1:
                        i = 1;
                        break;
                    case 2:
                    default:
                        i = 6;
                        break;
                    case 3:
                        i = 2;
                        break;
                    case 4:
                        i = 3;
                        break;
                    case 5:
                        i = 5;
                        break;
                }
                long j = next.zzcjj;
                StringBuilder sb = new StringBuilder(33 + String.valueOf(str2).length());
                sb.append(str2);
                sb.append(".");
                sb.append(i);
                sb.append(".");
                sb.append(j);
                String sb2 = sb.toString();
                StringBuilder sb3 = new StringBuilder(1 + String.valueOf(valueOf).length() + String.valueOf(sb2).length());
                sb3.append(valueOf);
                sb3.append(sb2);
                sb3.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                str = sb3.toString();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzzi, com.google.android.gms.internal.zzahs
    public final void onStop() {
        synchronized (this.zzcoe) {
            super.onStop();
            if (this.zzcon != null) {
                this.zzcon.cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzzi
    protected final void zze(long j) throws zzzl {
        Bundle bundle;
        synchronized (this.zzcoe) {
            this.zzcon = this.zzcir.zzcif != -1 ? new zzvz(this.mContext, this.zzcob.zzcvm, this.zzanu, this.zzcir, this.zzcoc.zzbid, this.zzcoc.zzbif, this.zzcoc.zzcuh, j, ((Long) zzlc.zzio().zzd(zzoi.zzbrg)).longValue(), 2, this.zzcob.zzdcv) : new zzwc(this.mContext, this.zzcob.zzcvm, this.zzanu, this.zzcir, this.zzcoc.zzbid, this.zzcoc.zzbif, this.zzcoc.zzcuh, j, ((Long) zzlc.zzio().zzd(zzoi.zzbrg)).longValue(), this.zzanh, this.zzcob.zzdcv);
        }
        ArrayList arrayList = new ArrayList(this.zzcir.zzchv);
        Bundle bundle2 = this.zzcob.zzcvm.zzcrv.zzbhf;
        if ((bundle2 == null || (bundle = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter")) == null) ? false : bundle.getBoolean("_skipMediation")) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (!((zzvp) listIterator.next()).zzchd.contains("com.google.ads.mediation.admob.AdMobAdapter")) {
                    listIterator.remove();
                }
            }
        }
        this.zzcoo = this.zzcon.zzh(arrayList);
        switch (this.zzcoo.zzcjd) {
            case 0:
                if (this.zzcoo.zzcje == null || this.zzcoo.zzcje.zzcho == null) {
                    return;
                }
                CountDownLatch countDownLatch = new CountDownLatch(1);
                zzaij.zzdfn.post(new zzzt(this, countDownLatch));
                try {
                    countDownLatch.await(10L, TimeUnit.SECONDS);
                    synchronized (this.zzcoe) {
                        if (!this.zzcop) {
                            throw new zzzl("View could not be prepared", 0);
                        }
                        if (this.zzcct.isDestroyed()) {
                            throw new zzzl("Assets not loaded, web view is destroyed", 0);
                        }
                    }
                    return;
                } catch (InterruptedException e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(38 + String.valueOf(valueOf).length());
                    sb.append("Interrupted while waiting for latch : ");
                    sb.append(valueOf);
                    throw new zzzl(sb.toString(), 0);
                }
            case 1:
                throw new zzzl("No fill from any mediation ad networks.", 3);
            default:
                int i = this.zzcoo.zzcjd;
                StringBuilder sb2 = new StringBuilder(40);
                sb2.append("Unexpected mediation result: ");
                sb2.append(i);
                throw new zzzl(sb2.toString(), 0);
        }
    }

    @Override // com.google.android.gms.internal.zzzi
    protected final zzahd zzy(int i) {
        zzacf zzacfVar = this.zzcob.zzcvm;
        return new zzahd(zzacfVar.zzcrv, this.zzcct, this.zzcoc.zzchw, i, this.zzcoc.zzchx, this.zzcoc.zzctq, this.zzcoc.orientation, this.zzcoc.zzcic, zzacfVar.zzcry, this.zzcoc.zzcto, this.zzcoo != null ? this.zzcoo.zzcje : null, this.zzcoo != null ? this.zzcoo.zzcjf : null, this.zzcoo != null ? this.zzcoo.zzcjg : AdMobAdapter.class.getName(), this.zzcir, this.zzcoo != null ? this.zzcoo.zzcjh : null, this.zzcoc.zzctp, this.zzcob.zzaud, this.zzcoc.zzctn, this.zzcob.zzdcn, this.zzcoc.zzcts, this.zzcoc.zzctt, this.zzcob.zzdch, null, this.zzcoc.zzcuc, this.zzcoc.zzcud, this.zzcoc.zzcue, this.zzcir != null ? this.zzcir.zzcih : false, this.zzcoc.zzcug, this.zzcon != null ? zzk(this.zzcon.zzmf()) : null, this.zzcoc.zzchz, this.zzcoc.zzcuj, this.zzcob.zzdcu, this.zzcoc.zzaqw, this.zzcob.zzdcv);
    }
}
