package com.google.android.gms.internal;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzajz extends zzr<zzp> {
    private final zzamd<zzp> zzdhi;
    private final Map<String, String> zzdhj;
    private final zzaks zzdhk;

    public zzajz(String str, zzamd<zzp> zzamdVar) {
        this(str, null, zzamdVar);
    }

    private zzajz(String str, Map<String, String> map, zzamd<zzp> zzamdVar) {
        super(0, str, new zzaka(zzamdVar));
        this.zzdhj = null;
        this.zzdhi = zzamdVar;
        this.zzdhk = new zzaks();
        this.zzdhk.zza(str, HttpRequest.METHOD_GET, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.zzr
    public final zzx<zzp> zza(zzp zzpVar) {
        return zzx.zza(zzpVar, zzap.zzb(zzpVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzr
    public final /* synthetic */ void zza(zzp zzpVar) {
        zzp zzpVar2 = zzpVar;
        this.zzdhk.zza(zzpVar2.zzab, zzpVar2.statusCode);
        zzaks zzaksVar = this.zzdhk;
        byte[] bArr = zzpVar2.data;
        if (zzaks.isEnabled() && bArr != null) {
            zzaksVar.zzf(bArr);
        }
        this.zzdhi.set(zzpVar2);
    }
}
