package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzel extends zzbr {
    private static final String ID = zzbh.REGEX_GROUP.toString();
    private static final String zzkrv = zzbi.ARG0.toString();
    private static final String zzkrw = zzbi.ARG1.toString();
    private static final String zzkrx = zzbi.IGNORE_CASE.toString();
    private static final String zzkry = zzbi.GROUP.toString();

    public zzel() {
        super(ID, zzkrv, zzkrw);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        Long zzf;
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkrv);
        com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkrw);
        if (zzbtVar == null || zzbtVar == zzgk.zzbil() || zzbtVar2 == null || zzbtVar2 == zzgk.zzbil()) {
            return zzgk.zzbil();
        }
        int i = zzgk.zzh(map.get(zzkrx)).booleanValue() ? 66 : 64;
        int i2 = 1;
        com.google.android.gms.internal.zzbt zzbtVar3 = map.get(zzkry);
        if (zzbtVar3 == null || ((zzf = zzgk.zzf(zzbtVar3)) != zzgk.zzbig() && (i2 = zzf.intValue()) >= 0)) {
            try {
                String zzd = zzgk.zzd(zzbtVar);
                String zzd2 = zzgk.zzd(zzbtVar2);
                String str = null;
                Matcher matcher = Pattern.compile(zzd2, i).matcher(zzd);
                if (matcher.find() && matcher.groupCount() >= i2) {
                    str = matcher.group(i2);
                }
                return str == null ? zzgk.zzbil() : zzgk.zzam(str);
            } catch (PatternSyntaxException unused) {
                return zzgk.zzbil();
            }
        }
        return zzgk.zzbil();
    }
}
