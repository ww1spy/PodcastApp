package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfkh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzbd(zzfgs zzfgsVar) {
        String str;
        char c;
        zzfki zzfkiVar = new zzfki(zzfgsVar);
        StringBuilder sb = new StringBuilder(zzfkiVar.size());
        for (int i = 0; i < zzfkiVar.size(); i++) {
            byte zzld = zzfkiVar.zzld(i);
            if (zzld == 34) {
                str = "\\\"";
            } else if (zzld == 39) {
                str = "\\'";
            } else if (zzld != 92) {
                switch (zzld) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (zzld < 32 || zzld > 126) {
                            sb.append('\\');
                            sb.append((char) (((zzld >>> 6) & 3) + 48));
                            sb.append((char) (((zzld >>> 3) & 7) + 48));
                            c = (char) (48 + (zzld & 7));
                        } else {
                            c = (char) zzld;
                        }
                        sb.append(c);
                        continue;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
