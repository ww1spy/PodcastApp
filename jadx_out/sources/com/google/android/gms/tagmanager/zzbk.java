package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbk extends zzbr {
    private static final String ID = zzbh.ENCODE.toString();
    private static final String zzkpn = zzbi.ARG0.toString();
    private static final String zzkpo = zzbi.NO_PADDING.toString();
    private static final String zzkpp = zzbi.INPUT_FORMAT.toString();
    private static final String zzkpq = zzbi.OUTPUT_FORMAT.toString();

    public zzbk() {
        super(ID, zzkpn);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String str;
        byte[] decode;
        String encodeToString;
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkpn);
        if (zzbtVar == null || zzbtVar == zzgk.zzbil()) {
            return zzgk.zzbil();
        }
        String zzd = zzgk.zzd(zzbtVar);
        com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkpp);
        String zzd2 = zzbtVar2 == null ? "text" : zzgk.zzd(zzbtVar2);
        com.google.android.gms.internal.zzbt zzbtVar3 = map.get(zzkpq);
        String zzd3 = zzbtVar3 == null ? "base16" : zzgk.zzd(zzbtVar3);
        int i = 2;
        com.google.android.gms.internal.zzbt zzbtVar4 = map.get(zzkpo);
        if (zzbtVar4 != null && zzgk.zzh(zzbtVar4).booleanValue()) {
            i = 3;
        }
        try {
            if ("text".equals(zzd2)) {
                decode = zzd.getBytes();
            } else if ("base16".equals(zzd2)) {
                decode = zzo.decode(zzd);
            } else if ("base64".equals(zzd2)) {
                decode = Base64.decode(zzd, i);
            } else {
                if (!"base64url".equals(zzd2)) {
                    String valueOf = String.valueOf(zzd2);
                    zzdj.e(valueOf.length() != 0 ? "Encode: unknown input format: ".concat(valueOf) : new String("Encode: unknown input format: "));
                    return zzgk.zzbil();
                }
                decode = Base64.decode(zzd, i | 8);
            }
        } catch (IllegalArgumentException unused) {
            str = "Encode: invalid input:";
        }
        if ("base16".equals(zzd3)) {
            encodeToString = zzo.zzj(decode);
        } else if ("base64".equals(zzd3)) {
            encodeToString = Base64.encodeToString(decode, i);
        } else {
            if (!"base64url".equals(zzd3)) {
                String valueOf2 = String.valueOf(zzd3);
                str = valueOf2.length() != 0 ? "Encode: unknown output format: ".concat(valueOf2) : new String("Encode: unknown output format: ");
                zzdj.e(str);
                return zzgk.zzbil();
            }
            encodeToString = Base64.encodeToString(decode, i | 8);
        }
        return zzgk.zzam(encodeToString);
    }
}
