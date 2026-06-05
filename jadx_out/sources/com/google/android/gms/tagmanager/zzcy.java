package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbh;
import com.google.android.gms.internal.zzbi;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcy extends zzbr {
    private static final String ID = zzbh.JOINER.toString();
    private static final String zzkpn = zzbi.ARG0.toString();
    private static final String zzkqf = zzbi.ITEM_SEPARATOR.toString();
    private static final String zzkqg = zzbi.KEY_VALUE_SEPARATOR.toString();
    private static final String zzkqh = zzbi.ESCAPE.toString();

    public zzcy() {
        super(ID, zzkpn);
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Character;>;)Ljava/lang/String; */
    private static String zza(String str, int i, Set set) {
        switch (zzcz.zzkqi[i - 1]) {
            case 1:
                try {
                    return zzgo.zzmm(str);
                } catch (UnsupportedEncodingException e) {
                    zzdj.zzb("Joiner: unsupported encoding", e);
                    return str;
                }
            case 2:
                String replace = str.replace("\\", "\\\\");
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    String ch = ((Character) it.next()).toString();
                    String valueOf = String.valueOf(ch);
                    replace = replace.replace(ch, valueOf.length() != 0 ? "\\".concat(valueOf) : new String("\\"));
                }
                return replace;
            default:
                return str;
        }
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Character;>;)V */
    private static void zza(StringBuilder sb, String str, int i, Set set) {
        sb.append(zza(str, i, set));
    }

    private static void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        com.google.android.gms.internal.zzbt zzbtVar = map.get(zzkpn);
        if (zzbtVar == null) {
            return zzgk.zzbil();
        }
        com.google.android.gms.internal.zzbt zzbtVar2 = map.get(zzkqf);
        String zzd = zzbtVar2 != null ? zzgk.zzd(zzbtVar2) : "";
        com.google.android.gms.internal.zzbt zzbtVar3 = map.get(zzkqg);
        String zzd2 = zzbtVar3 != null ? zzgk.zzd(zzbtVar3) : "=";
        int i = zzda.zzkqj;
        com.google.android.gms.internal.zzbt zzbtVar4 = map.get(zzkqh);
        HashSet hashSet = null;
        if (zzbtVar4 != null) {
            String zzd3 = zzgk.zzd(zzbtVar4);
            if ("url".equals(zzd3)) {
                i = zzda.zzkqk;
            } else {
                if (!"backslash".equals(zzd3)) {
                    String valueOf = String.valueOf(zzd3);
                    zzdj.e(valueOf.length() != 0 ? "Joiner: unsupported escape type: ".concat(valueOf) : new String("Joiner: unsupported escape type: "));
                    return zzgk.zzbil();
                }
                i = zzda.zzkql;
                hashSet = new HashSet();
                zza(hashSet, zzd);
                zza(hashSet, zzd2);
                hashSet.remove('\\');
            }
        }
        StringBuilder sb = new StringBuilder();
        switch (zzbtVar.type) {
            case 2:
                com.google.android.gms.internal.zzbt[] zzbtVarArr = zzbtVar.zzyl;
                int length = zzbtVarArr.length;
                boolean z = true;
                int i2 = 0;
                while (i2 < length) {
                    com.google.android.gms.internal.zzbt zzbtVar5 = zzbtVarArr[i2];
                    if (!z) {
                        sb.append(zzd);
                    }
                    zza(sb, zzgk.zzd(zzbtVar5), i, hashSet);
                    i2++;
                    z = false;
                }
                break;
            case 3:
                for (int i3 = 0; i3 < zzbtVar.zzym.length; i3++) {
                    if (i3 > 0) {
                        sb.append(zzd);
                    }
                    String zzd4 = zzgk.zzd(zzbtVar.zzym[i3]);
                    String zzd5 = zzgk.zzd(zzbtVar.zzyn[i3]);
                    zza(sb, zzd4, i, hashSet);
                    sb.append(zzd2);
                    zza(sb, zzd5, i, hashSet);
                }
                break;
            default:
                zza(sb, zzgk.zzd(zzbtVar), i, hashSet);
                break;
        }
        return zzgk.zzam(sb.toString());
    }
}
