package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzzm {
    public static zzajb zza(Context context, com.google.android.gms.ads.internal.zza zzaVar, zzahe zzaheVar, zzcv zzcvVar, @Nullable zzaof zzaofVar, zzwf zzwfVar, zzzn zzznVar, zzov zzovVar) {
        zzajb zzzuVar;
        zzacj zzacjVar = zzaheVar.zzdcw;
        if (zzacjVar.zzcto) {
            zzzuVar = new zzzs(context, zzaheVar, zzwfVar, zzznVar, zzovVar, zzaofVar);
        } else if (zzacjVar.zzbid || (zzaVar instanceof com.google.android.gms.ads.internal.zzbb)) {
            zzzuVar = (zzacjVar.zzbid && (zzaVar instanceof com.google.android.gms.ads.internal.zzbb)) ? new zzzu(context, (com.google.android.gms.ads.internal.zzbb) zzaVar, zzaheVar, zzcvVar, zzznVar, zzovVar) : new zzzp(zzaheVar, zzznVar);
        } else {
            zzzuVar = (((Boolean) zzlc.zzio().zzd(zzoi.zzboa)).booleanValue() && com.google.android.gms.common.util.zzs.zzanv() && !com.google.android.gms.common.util.zzs.zzanx() && zzaofVar != null && zzaofVar.zzty().zzvl()) ? new zzzr(context, zzaheVar, zzaofVar, zzznVar) : new zzzo(context, zzaheVar, zzaofVar, zzznVar);
        }
        String valueOf = String.valueOf(zzzuVar.getClass().getName());
        zzahw.zzby(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
        zzzuVar.zzns();
        return zzzuVar;
    }
}
