package com.google.android.gms.tagmanager;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgo {
    private static zzea<com.google.android.gms.internal.zzbt> zza(zzea<com.google.android.gms.internal.zzbt> zzeaVar) {
        try {
            return new zzea<>(zzgk.zzam(zzmm(zzgk.zzd(zzeaVar.getObject()))), zzeaVar.zzbhd());
        } catch (UnsupportedEncodingException e) {
            zzdj.zzb("Escape URI: unsupported encoding", e);
            return zzeaVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzea<com.google.android.gms.internal.zzbt> zza(zzea<com.google.android.gms.internal.zzbt> zzeaVar, int... iArr) {
        String sb;
        for (int i : iArr) {
            if (!(zzgk.zzi(zzeaVar.getObject()) instanceof String)) {
                sb = "Escaping can only be applied to strings.";
            } else if (i != 12) {
                StringBuilder sb2 = new StringBuilder(39);
                sb2.append("Unsupported Value Escaping: ");
                sb2.append(i);
                sb = sb2.toString();
            } else {
                zzeaVar = zza(zzeaVar);
            }
            zzdj.e(sb);
        }
        return zzeaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzmm(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, HttpRequest.CHARSET_UTF8).replaceAll("\\+", "%20");
    }
}
