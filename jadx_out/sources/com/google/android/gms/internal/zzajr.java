package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzajr {
    private static zzv zzdha;
    private static final Object zzdhb = new Object();

    @Deprecated
    private static zzajx<Void> zzdhc = new zzajs();

    public zzajr(Context context) {
        zzay(context);
    }

    private static zzv zzay(Context context) {
        zzv zzvVar;
        zzv zzvVar2;
        synchronized (zzdhb) {
            if (zzdha == null) {
                Context applicationContext = context.getApplicationContext();
                zzoi.initialize(applicationContext);
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbul)).booleanValue()) {
                    zzvVar2 = zzajl.zzax(applicationContext);
                } else {
                    zzvVar2 = new zzv(new zzam(new File(applicationContext.getCacheDir(), "volley")), new zzaj((zzai) new zzas()));
                    zzvVar2.start();
                }
                zzdha = zzvVar2;
            }
            zzvVar = zzdha;
        }
        return zzvVar;
    }

    public final zzalt<String> zza(int i, String str, @Nullable Map<String, String> map, @Nullable byte[] bArr) {
        zzajy zzajyVar = new zzajy(null);
        zzajv zzajvVar = new zzajv(this, str, zzajyVar);
        zzaks zzaksVar = new zzaks(null);
        zzajw zzajwVar = new zzajw(this, i, str, zzajyVar, zzajvVar, bArr, map, zzaksVar);
        if (zzaks.isEnabled()) {
            try {
                zzaksVar.zza(str, HttpRequest.METHOD_GET, zzajwVar.getHeaders(), zzajwVar.zzf());
            } catch (zza e) {
                zzahw.zzcz(e.getMessage());
            }
        }
        zzdha.zze(zzajwVar);
        return zzajyVar;
    }

    @Deprecated
    public final <T> zzalt<T> zza(String str, zzajx<T> zzajxVar) {
        zzamd zzamdVar = new zzamd();
        zzdha.zze(new zzajz(str, zzamdVar));
        return zzali.zza(zzali.zza(zzamdVar, new zzaju(this, zzajxVar), zzaly.zzdju), Throwable.class, new zzajt(this, zzajxVar), zzaly.zzdju);
    }

    public final zzalt<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
