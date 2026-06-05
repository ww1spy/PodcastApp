package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zzbhp {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static <O, I> I zza(zzbhq<I, O> zzbhqVar, Object obj) {
        zzbhr zzbhrVar;
        zzbhrVar = ((zzbhq) zzbhqVar).zzgix;
        return zzbhrVar != null ? zzbhqVar.convertBack(obj) : obj;
    }

    private static void zza(StringBuilder sb, zzbhq zzbhqVar, Object obj) {
        String str;
        if (zzbhqVar.zzgio == 11) {
            str = zzbhqVar.zzgiu.cast(obj).toString();
        } else if (zzbhqVar.zzgio != 7) {
            sb.append(obj);
            return;
        } else {
            sb.append("\"");
            sb.append(com.google.android.gms.common.util.zzq.zzha((String) obj));
            str = "\"";
        }
        sb.append(str);
    }

    private static void zza(StringBuilder sb, zzbhq zzbhqVar, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, zzbhqVar, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        String str;
        String zzj;
        Map<String, zzbhq<?, ?>> zzabz = zzabz();
        StringBuilder sb = new StringBuilder(100);
        for (String str2 : zzabz.keySet()) {
            zzbhq<?, ?> zzbhqVar = zzabz.get(str2);
            if (zza(zzbhqVar)) {
                Object zza = zza(zzbhqVar, zzb(zzbhqVar));
                sb.append(sb.length() == 0 ? "{" : ",");
                sb.append("\"");
                sb.append(str2);
                sb.append("\":");
                if (zza == null) {
                    str = "null";
                } else {
                    switch (zzbhqVar.zzgiq) {
                        case 8:
                            sb.append("\"");
                            zzj = com.google.android.gms.common.util.zzc.zzj((byte[]) zza);
                            break;
                        case 9:
                            sb.append("\"");
                            zzj = com.google.android.gms.common.util.zzc.zzk((byte[]) zza);
                            break;
                        case 10:
                            com.google.android.gms.common.util.zzr.zza(sb, (HashMap) zza);
                            continue;
                        default:
                            if (zzbhqVar.zzgip) {
                                zza(sb, (zzbhq) zzbhqVar, (ArrayList<Object>) zza);
                                break;
                            } else {
                                zza(sb, zzbhqVar, zza);
                                continue;
                            }
                    }
                    sb.append(zzj);
                    str = "\"";
                }
                sb.append(str);
            }
        }
        sb.append(sb.length() > 0 ? "}" : "{}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zza(zzbhq zzbhqVar) {
        if (zzbhqVar.zzgiq != 11) {
            return zzgy(zzbhqVar.zzgis);
        }
        if (zzbhqVar.zzgir) {
            String str = zzbhqVar.zzgis;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        String str2 = zzbhqVar.zzgis;
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    public abstract Map<String, zzbhq<?, ?>> zzabz();

    /* JADX INFO: Access modifiers changed from: protected */
    public Object zzb(zzbhq zzbhqVar) {
        String str = zzbhqVar.zzgis;
        if (zzbhqVar.zzgiu == null) {
            return zzgx(zzbhqVar.zzgis);
        }
        zzgx(zzbhqVar.zzgis);
        com.google.android.gms.common.internal.zzbq.zza(true, "Concrete field shouldn't be value object: %s", zzbhqVar.zzgis);
        boolean z = zzbhqVar.zzgir;
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(4 + String.valueOf(substring).length());
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object zzgx(String str);

    protected abstract boolean zzgy(String str);
}
