package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzaer;
import com.google.android.gms.internal.zzafy;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaly;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzvp;
import com.google.android.gms.internal.zzvq;
import com.google.android.gms.internal.zzwi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzax extends zzmi {
    private static final Object sLock = new Object();

    @Nullable
    private static zzax zzare;
    private final Context mContext;
    private final Object mLock = new Object();
    private boolean zzarf = false;
    private zzala zzarg;

    private zzax(Context context, zzala zzalaVar) {
        this.mContext = context;
        this.zzarg = zzalaVar;
    }

    public static zzax zza(Context context, zzala zzalaVar) {
        zzax zzaxVar;
        synchronized (sLock) {
            if (zzare == null) {
                zzare = new zzax(context.getApplicationContext(), zzalaVar);
            }
            zzaxVar = zzare;
        }
        return zzaxVar;
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void initialize() {
        synchronized (sLock) {
            if (this.zzarf) {
                zzahw.zzcz("Mobile ads is initialized already.");
                return;
            }
            this.zzarf = true;
            zzoi.initialize(this.mContext);
            zzbt.zzep().zzd(this.mContext, this.zzarg);
            zzbt.zzer().initialize(this.mContext);
        }
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void setAppMuted(boolean z) {
        zzbt.zzfj().setAppMuted(z);
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void setAppVolume(float f) {
        zzbt.zzfj().setAppVolume(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zza(Runnable runnable) {
        Context context = this.mContext;
        com.google.android.gms.common.internal.zzbq.zzgn("Adapters must be initialized on the main thread.");
        Map<String, zzvq> zzpt = zzbt.zzep().zzqe().zzqv().zzpt();
        if (zzpt == null || zzpt.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzahw.zzc("Could not initialize rewarded ads.", th);
                return;
            }
        }
        zzaer zzou = zzaer.zzou();
        if (zzou != null) {
            Collection<zzvq> values = zzpt.values();
            HashMap hashMap = new HashMap();
            IObjectWrapper zzz = com.google.android.gms.dynamic.zzn.zzz(context);
            Iterator<zzvq> it = values.iterator();
            while (it.hasNext()) {
                for (zzvp zzvpVar : it.next().zzchv) {
                    String str = zzvpVar.zzchk;
                    for (String str2 : zzvpVar.zzchd) {
                        if (!hashMap.containsKey(str2)) {
                            hashMap.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((Collection) hashMap.get(str2)).add(str);
                        }
                    }
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzafy zzbq = zzou.zzbq(str3);
                    if (zzbq != null) {
                        zzwi zzpc = zzbq.zzpc();
                        if (!zzpc.isInitialized() && zzpc.zzmt()) {
                            zzpc.zza(zzz, zzbq.zzpd(), (List<String>) entry.getValue());
                            String valueOf = String.valueOf(str3);
                            zzahw.zzby(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                        }
                    }
                } catch (Throwable th2) {
                    StringBuilder sb = new StringBuilder(56 + String.valueOf(str3).length());
                    sb.append("Failed to initialize rewarded video mediation adapter \"");
                    sb.append(str3);
                    sb.append("\"");
                    zzahw.zzc(sb.toString(), th2);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void zza(String str, IObjectWrapper iObjectWrapper) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzoi.initialize(this.mContext);
        boolean booleanValue = ((Boolean) zzlc.zzio().zzd(zzoi.zzbti)).booleanValue() | ((Boolean) zzlc.zzio().zzd(zzoi.zzboy)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzboy)).booleanValue()) {
            booleanValue = true;
            final Runnable runnable2 = (Runnable) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
            runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.ads.internal.zzay
                private final Runnable zzaot;
                private final zzax zzarh;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzarh = this;
                    this.zzaot = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final zzax zzaxVar = this.zzarh;
                    final Runnable runnable3 = this.zzaot;
                    zzaly.zzdjt.execute(new Runnable(zzaxVar, runnable3) { // from class: com.google.android.gms.ads.internal.zzaz
                        private final Runnable zzaot;
                        private final zzax zzarh;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzarh = zzaxVar;
                            this.zzaot = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzarh.zza(this.zzaot);
                        }
                    });
                }
            };
        }
        if (booleanValue) {
            zzbt.zzet().zza(this.mContext, this.zzarg, str, runnable);
        }
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void zzb(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzahw.e("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper);
        if (context == null) {
            zzahw.e("Context is null. Failed to open debug menu.");
            return;
        }
        zzajc zzajcVar = new zzajc(context);
        zzajcVar.setAdUnitId(str);
        zzajcVar.zzcq(this.zzarg.zzcu);
        zzajcVar.showDialog();
    }

    @Override // com.google.android.gms.internal.zzmh
    public final float zzdp() {
        return zzbt.zzfj().zzdp();
    }

    @Override // com.google.android.gms.internal.zzmh
    public final boolean zzdq() {
        return zzbt.zzfj().zzdq();
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void zzu(String str) {
        zzoi.initialize(this.mContext);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbti)).booleanValue()) {
            zzbt.zzet().zza(this.mContext, this.zzarg, str, null);
        }
    }
}
