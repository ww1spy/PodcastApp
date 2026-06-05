package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbcs implements zzben {
    private /* synthetic */ zzbcl zzfkz;
    private /* synthetic */ zzbcr zzfla;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcs(zzbcr zzbcrVar, zzbcl zzbclVar) {
        this.zzfla = zzbcrVar;
        this.zzfkz = zzbclVar;
    }

    @Override // com.google.android.gms.internal.zzben
    public final void zza(long j, int i, Object obj) {
        try {
            if (obj == null) {
                this.zzfla.setResult((zzbcr) new zzbcx(new Status(i, null, null), null, j, null));
                return;
            }
            zzbcz zzbczVar = (zzbcz) obj;
            String str = zzbczVar.zzfld;
            if (i == 0 && str != null) {
                this.zzfla.zzfkt.zzfks = str;
            }
            this.zzfla.setResult((zzbcr) new zzbcx(new Status(i, zzbczVar.zzflk, null), str, zzbczVar.zzfle, zzbczVar.zzflf));
        } catch (ClassCastException unused) {
            this.zzfla.setResult((zzbcr) zzbcr.zzl(new Status(13)));
        }
    }

    @Override // com.google.android.gms.internal.zzben
    public final void zzx(long j) {
        this.zzfla.setResult((zzbcr) zzbcr.zzl(new Status(2103)));
    }
}
