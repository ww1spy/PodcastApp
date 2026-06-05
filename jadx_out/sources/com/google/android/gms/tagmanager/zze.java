package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zze extends zzbr {
    private static final String ID = zzbh.ADVERTISER_ID.toString();
    private final zza zzkmt;

    public zze(Context context) {
        this(zza.zzeg(context));
    }

    private zze(zza zzaVar) {
        super(ID, new String[0]);
        this.zzkmt = zzaVar;
        this.zzkmt.zzbfb();
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String zzbfb = this.zzkmt.zzbfb();
        return zzbfb == null ? zzgk.zzbil() : zzgk.zzam(zzbfb);
    }
}
