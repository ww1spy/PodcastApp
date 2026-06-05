package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzh extends zzbr {
    private static final String ID = zzbh.ADWORDS_CLICK_REFERRER.toString();
    private static final String zzkmu = zzbi.COMPONENT.toString();
    private static final String zzkmv = zzbi.CONVERSION_ID.toString();
    private final Context zzaiq;

    public zzh(Context context) {
        super(ID, zzkmv);
        this.zzaiq = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkmv);
        if (zzbtVar == null) {
            return zzgk.zzbil();
        }
        String zzd = zzgk.zzd(zzbtVar);
        com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkmu);
        String zzd2 = zzbtVar2 != null ? zzgk.zzd(zzbtVar2) : null;
        Context context = this.zzaiq;
        String str = zzcx.zzkqe.get(zzd);
        if (str == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            str = sharedPreferences != null ? sharedPreferences.getString(zzd, "") : "";
            zzcx.zzkqe.put(zzd, str);
        }
        String zzaw = zzcx.zzaw(str, zzd2);
        return zzaw != null ? zzgk.zzam(zzaw) : zzgk.zzbil();
    }
}
