package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahq implements zzhl {
    private final Object lock;
    private zzahm zzdem;
    private HashSet<zzahf> zzden;
    private HashSet<zzahp> zzdeo;

    public zzahq() {
        this(zzlc.zzil());
    }

    private zzahq(String str) {
        this.lock = new Object();
        this.zzden = new HashSet<>();
        this.zzdeo = new HashSet<>();
        this.zzdem = new zzahm(str);
    }

    public final Bundle zza(Context context, zzahn zzahnVar, String str) {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putBundle(SettingsJsonConstants.APP_KEY, this.zzdem.zzk(context, str));
            Bundle bundle2 = new Bundle();
            Iterator<zzahp> it = this.zzdeo.iterator();
            while (it.hasNext()) {
                zzahp next = it.next();
                bundle2.putBundle(next.zzqh(), next.toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzahf> it2 = this.zzden.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzahnVar.zza(this.zzden);
            this.zzden.clear();
        }
        return bundle;
    }

    public final void zza(zzahf zzahfVar) {
        synchronized (this.lock) {
            this.zzden.add(zzahfVar);
        }
    }

    public final void zza(zzahp zzahpVar) {
        synchronized (this.lock) {
            this.zzdeo.add(zzahpVar);
        }
    }

    public final void zzb(zzkk zzkkVar, long j) {
        synchronized (this.lock) {
            this.zzdem.zzb(zzkkVar, j);
        }
    }

    public final void zzb(HashSet<zzahf> hashSet) {
        synchronized (this.lock) {
            this.zzden.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.zzhl
    public final void zzh(boolean z) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
        if (!z) {
            com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzj(currentTimeMillis);
            com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzad(this.zzdem.zzdef);
            return;
        }
        if (currentTimeMillis - com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqw() > ((Long) zzlc.zzio().zzd(zzoi.zzbpc)).longValue()) {
            this.zzdem.zzdef = -1;
        } else {
            this.zzdem.zzdef = com.google.android.gms.ads.internal.zzbt.zzep().zzqe().zzqx();
        }
    }

    public final void zzpk() {
        synchronized (this.lock) {
            this.zzdem.zzpk();
        }
    }

    public final void zzpl() {
        synchronized (this.lock) {
            this.zzdem.zzpl();
        }
    }
}
