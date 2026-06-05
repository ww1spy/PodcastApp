package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzam extends zzbr {
    private final zzan zzkoi;
    private static final String ID = zzbh.FUNCTION_CALL.toString();
    private static final String zzkoh = zzbi.FUNCTION_CALL_NAME.toString();
    private static final String zzkmw = zzbi.ADDITIONAL_PARAMS.toString();

    public zzam(zzan zzanVar) {
        super(ID, zzkoh);
        this.zzkoi = zzanVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String sb;
        String zzd = zzgk.zzd(map.get(zzkoh));
        HashMap hashMap = new HashMap();
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkmw);
        if (zzbtVar != null) {
            Object zzi = zzgk.zzi(zzbtVar);
            if (!(zzi instanceof Map)) {
                sb = "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.";
                zzdj.zzcz(sb);
                return zzgk.zzbil();
            }
            for (Map.Entry entry : ((Map) zzi).entrySet()) {
                hashMap.put(entry.getKey().toString(), entry.getValue());
            }
        }
        try {
            return zzgk.zzam(this.zzkoi.zze(zzd, hashMap));
        } catch (Exception e) {
            String message = e.getMessage();
            StringBuilder sb2 = new StringBuilder(34 + String.valueOf(zzd).length() + String.valueOf(message).length());
            sb2.append("Custom macro/tag ");
            sb2.append(zzd);
            sb2.append(" threw exception ");
            sb2.append(message);
            sb = sb2.toString();
        }
    }
}
