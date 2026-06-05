package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaeo {
    private static final zzwe zzczl = new zzwe();
    private final zzwf zzczm;
    private final com.google.android.gms.ads.internal.zzbu zzczn;
    private final Map<String, zzafy> zzczo = new HashMap();
    private final zzafs zzczp;
    private final zzzn zzczq;

    public zzaeo(com.google.android.gms.ads.internal.zzbu zzbuVar, zzwf zzwfVar, zzafs zzafsVar, zzzn zzznVar) {
        this.zzczn = zzbuVar;
        this.zzczm = zzwfVar;
        this.zzczp = zzafsVar;
        this.zzczq = zzznVar;
    }

    public static boolean zza(zzahd zzahdVar, zzahd zzahdVar2) {
        return true;
    }

    public final void destroy() {
        com.google.android.gms.common.internal.zzbq.zzgn("destroy must be called on the main UI thread.");
        for (String str : this.zzczo.keySet()) {
            try {
                zzafy zzafyVar = this.zzczo.get(str);
                if (zzafyVar != null && zzafyVar.zzpc() != null) {
                    zzafyVar.zzpc().destroy();
                }
            } catch (RemoteException unused) {
                String valueOf = String.valueOf(str);
                zzahw.zzcz(valueOf.length() != 0 ? "Fail to destroy adapter: ".concat(valueOf) : new String("Fail to destroy adapter: "));
            }
        }
    }

    public final void onContextChanged(@NonNull Context context) {
        Iterator<zzafy> it = this.zzczo.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().zzpc().zzg(com.google.android.gms.dynamic.zzn.zzz(context));
            } catch (RemoteException e) {
                zzahw.zzb("Unable to call Adapter.onContextChanged.", e);
            }
        }
    }

    public final void pause() {
        com.google.android.gms.common.internal.zzbq.zzgn("pause must be called on the main UI thread.");
        for (String str : this.zzczo.keySet()) {
            try {
                zzafy zzafyVar = this.zzczo.get(str);
                if (zzafyVar != null && zzafyVar.zzpc() != null) {
                    zzafyVar.zzpc().pause();
                }
            } catch (RemoteException unused) {
                String valueOf = String.valueOf(str);
                zzahw.zzcz(valueOf.length() != 0 ? "Fail to pause adapter: ".concat(valueOf) : new String("Fail to pause adapter: "));
            }
        }
    }

    public final void resume() {
        com.google.android.gms.common.internal.zzbq.zzgn("resume must be called on the main UI thread.");
        for (String str : this.zzczo.keySet()) {
            try {
                zzafy zzafyVar = this.zzczo.get(str);
                if (zzafyVar != null && zzafyVar.zzpc() != null) {
                    zzafyVar.zzpc().resume();
                }
            } catch (RemoteException unused) {
                String valueOf = String.valueOf(str);
                zzahw.zzcz(valueOf.length() != 0 ? "Fail to resume adapter: ".concat(valueOf) : new String("Fail to resume adapter: "));
            }
        }
    }

    @Nullable
    public final zzafy zzbq(String str) {
        zzafy zzafyVar;
        zzafy zzafyVar2 = this.zzczo.get(str);
        if (zzafyVar2 == null) {
            try {
                zzwf zzwfVar = this.zzczm;
                if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                    zzwfVar = zzczl;
                }
                zzafyVar = new zzafy(zzwfVar.zzbg(str), this.zzczp);
            } catch (Exception e) {
                e = e;
            }
            try {
                this.zzczo.put(str, zzafyVar);
                return zzafyVar;
            } catch (Exception e2) {
                e = e2;
                zzafyVar2 = zzafyVar;
                String valueOf = String.valueOf(str);
                zzahw.zzc(valueOf.length() != 0 ? "Fail to instantiate adapter ".concat(valueOf) : new String("Fail to instantiate adapter "), e);
                return zzafyVar2;
            }
        }
        return zzafyVar2;
    }

    public final zzagd zzd(zzagd zzagdVar) {
        if (this.zzczn.zzaue != null && this.zzczn.zzaue.zzdcj != null && !TextUtils.isEmpty(this.zzczn.zzaue.zzdcj.zzcid)) {
            zzagdVar = new zzagd(this.zzczn.zzaue.zzdcj.zzcid, this.zzczn.zzaue.zzdcj.zzcie);
        }
        if (this.zzczn.zzaue != null && this.zzczn.zzaue.zzcje != null) {
            com.google.android.gms.ads.internal.zzbt.zzfd();
            zzvy.zza(this.zzczn.zzaiq, this.zzczn.zzatz.zzcu, this.zzczn.zzaue.zzcje.zzchm, this.zzczn.zzaux, zzagdVar);
        }
        return zzagdVar;
    }

    public final zzzn zzoq() {
        return this.zzczq;
    }

    public final void zzor() {
        this.zzczn.zzavb = 0;
        com.google.android.gms.ads.internal.zzbu zzbuVar = this.zzczn;
        com.google.android.gms.ads.internal.zzbt.zzek();
        zzafv zzafvVar = new zzafv(this.zzczn.zzaiq, this.zzczn.zzauf, this);
        String valueOf = String.valueOf(zzafvVar.getClass().getName());
        zzahw.zzby(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
        zzafvVar.zzns();
        zzbuVar.zzauc = zzafvVar;
    }

    public final void zzos() {
        if (this.zzczn.zzaue == null || this.zzczn.zzaue.zzcje == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzfd();
        zzvy.zza(this.zzczn.zzaiq, this.zzczn.zzatz.zzcu, this.zzczn.zzaue, this.zzczn.zzatx, false, this.zzczn.zzaue.zzcje.zzchl);
    }

    public final void zzot() {
        if (this.zzczn.zzaue == null || this.zzczn.zzaue.zzcje == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzbt.zzfd();
        zzvy.zza(this.zzczn.zzaiq, this.zzczn.zzatz.zzcu, this.zzczn.zzaue, this.zzczn.zzatx, false, this.zzczn.zzaue.zzcje.zzchn);
    }

    public final void zzv(boolean z) {
        zzafy zzbq = zzbq(this.zzczn.zzaue.zzcjg);
        if (zzbq == null || zzbq.zzpc() == null) {
            return;
        }
        try {
            zzbq.zzpc().setImmersiveMode(z);
            zzbq.zzpc().showVideo();
        } catch (RemoteException e) {
            zzahw.zzc("Could not call showVideo.", e);
        }
    }
}
