package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzajw extends zzav {
    private /* synthetic */ byte[] zzdhf;
    private /* synthetic */ Map zzdhg;
    private /* synthetic */ zzaks zzdhh;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzajw(zzajr zzajrVar, int i, String str, zzz zzzVar, zzy zzyVar, byte[] bArr, Map map, zzaks zzaksVar) {
        super(i, str, zzzVar, zzyVar);
        this.zzdhf = bArr;
        this.zzdhg = map;
        this.zzdhh = zzaksVar;
    }

    @Override // com.google.android.gms.internal.zzr
    public final Map<String, String> getHeaders() throws zza {
        return this.zzdhg == null ? super.getHeaders() : this.zzdhg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzav, com.google.android.gms.internal.zzr
    public final /* synthetic */ void zza(String str) {
        zza(str);
    }

    @Override // com.google.android.gms.internal.zzr
    public final byte[] zzf() throws zza {
        return this.zzdhf == null ? super.zzf() : this.zzdhf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzav
    /* renamed from: zzh */
    public final void zza(String str) {
        this.zzdhh.zzcw(str);
        super.zza(str);
    }
}
