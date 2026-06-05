package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzafv extends zzahs implements zzafu {
    private final Context mContext;
    private final Object mLock;
    private final zzahe zzcob;
    private final long zzdae;
    private final ArrayList<zzafl> zzdaq;
    private final List<zzafo> zzdar;
    private final HashSet<String> zzdas;
    private final zzaeo zzdat;

    public zzafv(Context context, zzahe zzaheVar, zzaeo zzaeoVar) {
        this(context, zzaheVar, zzaeoVar, ((Long) zzlc.zzio().zzd(zzoi.zzboz)).longValue());
    }

    private zzafv(Context context, zzahe zzaheVar, zzaeo zzaeoVar, long j) {
        this.zzdaq = new ArrayList<>();
        this.zzdar = new ArrayList();
        this.zzdas = new HashSet<>();
        this.mLock = new Object();
        this.mContext = context;
        this.zzcob = zzaheVar;
        this.zzdat = zzaeoVar;
        this.zzdae = j;
    }

    private final zzahd zza(int i, @Nullable String str, @Nullable zzvp zzvpVar) {
        return new zzahd(this.zzcob.zzcvm.zzcrv, null, this.zzcob.zzdcw.zzchw, i, this.zzcob.zzdcw.zzchx, this.zzcob.zzdcw.zzctq, this.zzcob.zzdcw.orientation, this.zzcob.zzdcw.zzcic, this.zzcob.zzcvm.zzcry, this.zzcob.zzdcw.zzcto, zzvpVar, null, str, this.zzcob.zzdcj, null, this.zzcob.zzdcw.zzctp, this.zzcob.zzaud, this.zzcob.zzdcw.zzctn, this.zzcob.zzdcn, this.zzcob.zzdcw.zzcts, this.zzcob.zzdcw.zzctt, this.zzcob.zzdch, null, this.zzcob.zzdcw.zzcuc, this.zzcob.zzdcw.zzcud, this.zzcob.zzdcw.zzcue, this.zzcob.zzdcw.zzcuf, this.zzcob.zzdcw.zzcug, zzpb(), this.zzcob.zzdcw.zzchz, this.zzcob.zzdcw.zzcuj, this.zzcob.zzdcu, this.zzcob.zzdcw.zzaqw, this.zzcob.zzdcv);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0032. Please report as an issue. */
    private final String zzpb() {
        StringBuilder sb = new StringBuilder("");
        if (this.zzdar == null) {
            return sb.toString();
        }
        Iterator<zzafo> it = this.zzdar.iterator();
        while (true) {
            int i = 1;
            if (!it.hasNext()) {
                return sb.substring(0, Math.max(0, sb.length() - 1));
            }
            zzafo next = it.next();
            if (next != null && !TextUtils.isEmpty(next.zzche)) {
                String str = next.zzche;
                switch (next.errorCode) {
                    case 3:
                        break;
                    case 4:
                        i = 2;
                        break;
                    case 5:
                        i = 4;
                        break;
                    case 6:
                        i = 0;
                        break;
                    case 7:
                        i = 3;
                        break;
                    default:
                        i = 6;
                        break;
                }
                long j = next.zzcjj;
                StringBuilder sb2 = new StringBuilder(33 + String.valueOf(str).length());
                sb2.append(str);
                sb2.append(".");
                sb2.append(i);
                sb2.append(".");
                sb2.append(j);
                sb.append(String.valueOf(sb2.toString()).concat(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzafu
    public final void zza(String str, int i) {
    }

    @Override // com.google.android.gms.internal.zzafu
    public final void zzbr(String str) {
        synchronized (this.mLock) {
            this.zzdas.add(str);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:? -> B:29:0x00b1). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        Iterator<zzvp> it;
        Object obj;
        Iterator<zzvp> it2 = this.zzcob.zzdcj.zzchv.iterator();
        while (it2.hasNext()) {
            zzvp next = it2.next();
            String str = next.zzchk;
            for (String str2 : next.zzchd) {
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str2) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str2)) {
                    try {
                        str2 = new JSONObject(str).getString("class_name");
                    } catch (JSONException e) {
                        it = it2;
                        zzahw.zzb("Unable to determine custom event class name, skipping...", e);
                    }
                }
                String str3 = str2;
                Object obj2 = this.mLock;
                synchronized (obj2) {
                    try {
                        zzafy zzbq = this.zzdat.zzbq(str3);
                        if (zzbq != null && zzbq.zzpd() != null && zzbq.zzpc() != null) {
                            obj = obj2;
                            it = it2;
                            try {
                                this.zzdaq.add(new zzafl(this.mContext, str3, str, next, this.zzcob, zzbq, this, this.zzdae));
                                it2 = it;
                            } catch (Throwable th) {
                                th = th;
                                Throwable th2 = th;
                                throw th2;
                            }
                        }
                        obj = obj2;
                        it = it2;
                        this.zzdar.add(new zzafq().zzbt(next.zzche).zzbs(str3).zzg(0L).zzab(7).zzpa());
                        it2 = it;
                    } catch (Throwable th3) {
                        th = th3;
                        obj = obj2;
                        Throwable th22 = th;
                        throw th22;
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList<zzafl> arrayList = this.zzdaq;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            zzafl zzaflVar = arrayList.get(i2);
            i2++;
            zzafl zzaflVar2 = zzaflVar;
            if (hashSet.add(zzaflVar2.zzcip)) {
                zzaflVar2.zzow();
            }
        }
        ArrayList<zzafl> arrayList2 = this.zzdaq;
        int size2 = arrayList2.size();
        while (i < size2) {
            zzafl zzaflVar3 = arrayList2.get(i);
            i++;
            zzafl zzaflVar4 = zzaflVar3;
            try {
                try {
                    zzaflVar4.zzow().get();
                    synchronized (this.mLock) {
                        if (!TextUtils.isEmpty(zzaflVar4.zzcip)) {
                            this.zzdar.add(zzaflVar4.zzox());
                        }
                    }
                    synchronized (this.mLock) {
                        if (this.zzdas.contains(zzaflVar4.zzcip)) {
                            final zzahd zza = zza(-2, zzaflVar4.zzcip, zzaflVar4.zzoy());
                            zzako.zzaju.post(new Runnable(this, zza) { // from class: com.google.android.gms.internal.zzafw
                                private final zzahd zzaov;
                                private final zzafv zzdau;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.zzdau = this;
                                    this.zzaov = zza;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zzdau.zzm(this.zzaov);
                                }
                            });
                            return;
                        }
                    }
                } catch (Throwable th4) {
                    synchronized (this.mLock) {
                        if (!TextUtils.isEmpty(zzaflVar4.zzcip)) {
                            this.zzdar.add(zzaflVar4.zzox());
                        }
                        throw th4;
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                synchronized (this.mLock) {
                    if (!TextUtils.isEmpty(zzaflVar4.zzcip)) {
                        this.zzdar.add(zzaflVar4.zzox());
                    }
                }
            } catch (Exception e2) {
                zzahw.zzc("Unable to resolve rewarded adapter.", e2);
                synchronized (this.mLock) {
                    if (!TextUtils.isEmpty(zzaflVar4.zzcip)) {
                        this.zzdar.add(zzaflVar4.zzox());
                    }
                }
            }
        }
        final zzahd zza2 = zza(3, null, null);
        zzako.zzaju.post(new Runnable(this, zza2) { // from class: com.google.android.gms.internal.zzafx
            private final zzahd zzaov;
            private final zzafv zzdau;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdau = this;
                this.zzaov = zza2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdau.zzl(this.zzaov);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(zzahd zzahdVar) {
        this.zzdat.zzoq().zzb(zzahdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm(zzahd zzahdVar) {
        this.zzdat.zzoq().zzb(zzahdVar);
    }
}
