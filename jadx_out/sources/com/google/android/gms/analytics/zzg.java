package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.os.Build;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzg {
    private final com.google.android.gms.common.util.zze zzata;
    private final zzj zzdux;
    private boolean zzduy;
    private long zzduz;
    private long zzdva;
    private long zzdvb;
    private long zzdvc;
    private long zzdvd;
    private boolean zzdve;
    private final Map<Class<? extends zzi>, zzi> zzdvf;
    private final List<zzo> zzdvg;

    private zzg(zzg zzgVar) {
        this.zzdux = zzgVar.zzdux;
        this.zzata = zzgVar.zzata;
        this.zzduz = zzgVar.zzduz;
        this.zzdva = zzgVar.zzdva;
        this.zzdvb = zzgVar.zzdvb;
        this.zzdvc = zzgVar.zzdvc;
        this.zzdvd = zzgVar.zzdvd;
        this.zzdvg = new ArrayList(zzgVar.zzdvg);
        this.zzdvf = new HashMap(zzgVar.zzdvf.size());
        for (Map.Entry<Class<? extends zzi>, zzi> entry : zzgVar.zzdvf.entrySet()) {
            zzi zzc = zzc(entry.getKey());
            entry.getValue().zzb(zzc);
            this.zzdvf.put(entry.getKey(), zzc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzj zzjVar, com.google.android.gms.common.util.zze zzeVar) {
        zzbq.checkNotNull(zzjVar);
        zzbq.checkNotNull(zzeVar);
        this.zzdux = zzjVar;
        this.zzata = zzeVar;
        this.zzdvc = 1800000L;
        this.zzdvd = 3024000000L;
        this.zzdvf = new HashMap();
        this.zzdvg = new ArrayList();
    }

    @Hide
    @TargetApi(19)
    private static <T extends zzi> T zzc(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            if (e instanceof InstantiationException) {
                throw new IllegalArgumentException("dataType doesn't have default constructor", e);
            }
            if (e instanceof IllegalAccessException) {
                throw new IllegalArgumentException("dataType default constructor is not accessible", e);
            }
            if (Build.VERSION.SDK_INT < 19 || !(e instanceof ReflectiveOperationException)) {
                throw new RuntimeException(e);
            }
            throw new IllegalArgumentException("Linkage exception", e);
        }
    }

    public final List<zzo> getTransports() {
        return this.zzdvg;
    }

    @Hide
    public final <T extends zzi> T zza(Class<T> cls) {
        return (T) this.zzdvf.get(cls);
    }

    @Hide
    public final void zza(zzi zziVar) {
        zzbq.checkNotNull(zziVar);
        Class<?> cls = zziVar.getClass();
        if (cls.getSuperclass() != zzi.class) {
            throw new IllegalArgumentException();
        }
        zziVar.zzb(zzb(cls));
    }

    @Hide
    public final <T extends zzi> T zzb(Class<T> cls) {
        T t = (T) this.zzdvf.get(cls);
        if (t != null) {
            return t;
        }
        T t2 = (T) zzc(cls);
        this.zzdvf.put(cls, t2);
        return t2;
    }

    @Hide
    public final void zzl(long j) {
        this.zzdva = j;
    }

    public final zzg zzvx() {
        return new zzg(this);
    }

    @Hide
    public final Collection<zzi> zzvy() {
        return this.zzdvf.values();
    }

    public final long zzvz() {
        return this.zzduz;
    }

    public final void zzwa() {
        this.zzdux.zzwg().zze(this);
    }

    public final boolean zzwb() {
        return this.zzduy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzwc() {
        this.zzdvb = this.zzata.elapsedRealtime();
        this.zzduz = this.zzdva != 0 ? this.zzdva : this.zzata.currentTimeMillis();
        this.zzduy = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzj zzwd() {
        return this.zzdux;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzwe() {
        return this.zzdve;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzwf() {
        this.zzdve = true;
    }
}
