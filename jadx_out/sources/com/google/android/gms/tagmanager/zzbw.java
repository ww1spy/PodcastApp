package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbw extends zzbr {
    private static final String ID = zzbh.HASH.toString();
    private static final String zzkpn = zzbi.ARG0.toString();
    private static final String zzkpt = zzbi.ALGORITHM.toString();
    private static final String zzkpp = zzbi.INPUT_FORMAT.toString();

    public zzbw() {
        super(ID, zzkpn);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        String concat;
        byte[] decode;
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkpn);
        if (zzbtVar == null || zzbtVar == zzgk.zzbil()) {
            return zzgk.zzbil();
        }
        String zzd = zzgk.zzd(zzbtVar);
        com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkpt);
        String zzd2 = zzbtVar2 == null ? "MD5" : zzgk.zzd(zzbtVar2);
        com.google.android.gms.internal.zzbt zzbtVar3 = map.get(zzkpp);
        String zzd3 = zzbtVar3 == null ? "text" : zzgk.zzd(zzbtVar3);
        if ("text".equals(zzd3)) {
            decode = zzd.getBytes();
        } else {
            if (!"base16".equals(zzd3)) {
                String valueOf = String.valueOf(zzd3);
                concat = valueOf.length() != 0 ? "Hash: unknown input format: ".concat(valueOf) : new String("Hash: unknown input format: ");
                zzdj.e(concat);
                return zzgk.zzbil();
            }
            decode = zzo.decode(zzd);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(zzd2);
            messageDigest.update(decode);
            return zzgk.zzam(zzo.zzj(messageDigest.digest()));
        } catch (NoSuchAlgorithmException unused) {
            String valueOf2 = String.valueOf(zzd2);
            concat = valueOf2.length() != 0 ? "Hash: unknown algorithm: ".concat(valueOf2) : new String("Hash: unknown algorithm: ");
        }
    }
}
