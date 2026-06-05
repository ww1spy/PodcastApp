package com.google.android.gms.tagmanager;

import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Hide
/* loaded from: classes.dex */
public final class zzgk {
    private static final Object zzkuk = null;
    private static Long zzkul = new Long(0);
    private static Double zzkum = new Double(0.0d);
    private static zzgj zzkun = zzgj.zzbi(0);
    private static String zzkuo = new String("");
    private static Boolean zzkup = new Boolean(false);
    private static List<Object> zzkuq = new ArrayList(0);
    private static Map<Object, Object> zzkur = new HashMap();
    private static com.google.android.gms.internal.zzbt zzkus = zzam(zzkuo);

    private static double getDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        zzdj.e("getDouble received non-Number");
        return 0.0d;
    }

    private static String zzal(Object obj) {
        return obj == null ? zzkuo : obj.toString();
    }

    public static com.google.android.gms.internal.zzbt zzam(Object obj) {
        String obj2;
        com.google.android.gms.internal.zzbt zzbtVar = new com.google.android.gms.internal.zzbt();
        if (obj instanceof com.google.android.gms.internal.zzbt) {
            return (com.google.android.gms.internal.zzbt) obj;
        }
        boolean z = false;
        if (!(obj instanceof String)) {
            if (obj instanceof List) {
                zzbtVar.type = 2;
                List list = (List) obj;
                ArrayList arrayList = new ArrayList(list.size());
                Iterator it = list.iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    com.google.android.gms.internal.zzbt zzam = zzam(it.next());
                    if (zzam == zzkus) {
                        return zzkus;
                    }
                    z2 = z2 || zzam.zzyu;
                    arrayList.add(zzam);
                }
                zzbtVar.zzyl = (com.google.android.gms.internal.zzbt[]) arrayList.toArray(new com.google.android.gms.internal.zzbt[0]);
                z = z2;
            } else if (obj instanceof Map) {
                zzbtVar.type = 3;
                Set<Map.Entry> entrySet = ((Map) obj).entrySet();
                ArrayList arrayList2 = new ArrayList(entrySet.size());
                ArrayList arrayList3 = new ArrayList(entrySet.size());
                boolean z3 = false;
                for (Map.Entry entry : entrySet) {
                    com.google.android.gms.internal.zzbt zzam2 = zzam(entry.getKey());
                    com.google.android.gms.internal.zzbt zzam3 = zzam(entry.getValue());
                    if (zzam2 == zzkus || zzam3 == zzkus) {
                        return zzkus;
                    }
                    z3 = z3 || zzam2.zzyu || zzam3.zzyu;
                    arrayList2.add(zzam2);
                    arrayList3.add(zzam3);
                }
                zzbtVar.zzym = (com.google.android.gms.internal.zzbt[]) arrayList2.toArray(new com.google.android.gms.internal.zzbt[0]);
                zzbtVar.zzyn = (com.google.android.gms.internal.zzbt[]) arrayList3.toArray(new com.google.android.gms.internal.zzbt[0]);
                z = z3;
            } else if (zzan(obj)) {
                zzbtVar.type = 1;
                obj2 = obj.toString();
            } else if (zzao(obj)) {
                zzbtVar.type = 6;
                zzbtVar.zzyq = zzap(obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    String valueOf = String.valueOf(obj == null ? "null" : obj.getClass().toString());
                    zzdj.e(valueOf.length() != 0 ? "Converting to Value from unknown object type: ".concat(valueOf) : new String("Converting to Value from unknown object type: "));
                    return zzkus;
                }
                zzbtVar.type = 8;
                zzbtVar.zzyr = ((Boolean) obj).booleanValue();
            }
            zzbtVar.zzyu = z;
            return zzbtVar;
        }
        zzbtVar.type = 1;
        obj2 = (String) obj;
        zzbtVar.string = obj2;
        zzbtVar.zzyu = z;
        return zzbtVar;
    }

    private static boolean zzan(Object obj) {
        if ((obj instanceof Double) || (obj instanceof Float)) {
            return true;
        }
        return (obj instanceof zzgj) && ((zzgj) obj).zzbid();
    }

    private static boolean zzao(Object obj) {
        if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long)) {
            return true;
        }
        return (obj instanceof zzgj) && ((zzgj) obj).zzbie();
    }

    private static long zzap(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        zzdj.e("getInt64 received non-Number");
        return 0L;
    }

    public static Object zzbif() {
        return null;
    }

    public static Long zzbig() {
        return zzkul;
    }

    public static Double zzbih() {
        return zzkum;
    }

    public static Boolean zzbii() {
        return zzkup;
    }

    public static zzgj zzbij() {
        return zzkun;
    }

    public static String zzbik() {
        return zzkuo;
    }

    public static com.google.android.gms.internal.zzbt zzbil() {
        return zzkus;
    }

    public static String zzd(com.google.android.gms.internal.zzbt zzbtVar) {
        return zzal(zzi(zzbtVar));
    }

    public static zzgj zze(com.google.android.gms.internal.zzbt zzbtVar) {
        Object zzi = zzi(zzbtVar);
        return zzi instanceof zzgj ? (zzgj) zzi : zzao(zzi) ? zzgj.zzbi(zzap(zzi)) : zzan(zzi) ? zzgj.zzb(Double.valueOf(getDouble(zzi))) : zzmj(zzal(zzi));
    }

    public static Long zzf(com.google.android.gms.internal.zzbt zzbtVar) {
        long longValue;
        Object zzi = zzi(zzbtVar);
        if (zzao(zzi)) {
            longValue = zzap(zzi);
        } else {
            zzgj zzmj = zzmj(zzal(zzi));
            if (zzmj == zzkun) {
                return zzkul;
            }
            longValue = zzmj.longValue();
        }
        return Long.valueOf(longValue);
    }

    public static Double zzg(com.google.android.gms.internal.zzbt zzbtVar) {
        double doubleValue;
        Object zzi = zzi(zzbtVar);
        if (zzan(zzi)) {
            doubleValue = getDouble(zzi);
        } else {
            zzgj zzmj = zzmj(zzal(zzi));
            if (zzmj == zzkun) {
                return zzkum;
            }
            doubleValue = zzmj.doubleValue();
        }
        return Double.valueOf(doubleValue);
    }

    public static Boolean zzh(com.google.android.gms.internal.zzbt zzbtVar) {
        Object zzi = zzi(zzbtVar);
        if (zzi instanceof Boolean) {
            return (Boolean) zzi;
        }
        String zzal = zzal(zzi);
        return "true".equalsIgnoreCase(zzal) ? Boolean.TRUE : "false".equalsIgnoreCase(zzal) ? Boolean.FALSE : zzkup;
    }

    public static Object zzi(com.google.android.gms.internal.zzbt zzbtVar) {
        String str;
        if (zzbtVar == null) {
            return null;
        }
        int i = 0;
        switch (zzbtVar.type) {
            case 1:
                return zzbtVar.string;
            case 2:
                ArrayList arrayList = new ArrayList(zzbtVar.zzyl.length);
                com.google.android.gms.internal.zzbt[] zzbtVarArr = zzbtVar.zzyl;
                int length = zzbtVarArr.length;
                while (i < length) {
                    Object zzi = zzi(zzbtVarArr[i]);
                    if (zzi == null) {
                        return null;
                    }
                    arrayList.add(zzi);
                    i++;
                }
                return arrayList;
            case 3:
                if (zzbtVar.zzym.length != zzbtVar.zzyn.length) {
                    String valueOf = String.valueOf(zzbtVar.toString());
                    zzdj.e(valueOf.length() != 0 ? "Converting an invalid value to object: ".concat(valueOf) : new String("Converting an invalid value to object: "));
                    return null;
                }
                HashMap hashMap = new HashMap(zzbtVar.zzyn.length);
                while (i < zzbtVar.zzym.length) {
                    Object zzi2 = zzi(zzbtVar.zzym[i]);
                    Object zzi3 = zzi(zzbtVar.zzyn[i]);
                    if (zzi2 == null || zzi3 == null) {
                        return null;
                    }
                    hashMap.put(zzi2, zzi3);
                    i++;
                }
                return hashMap;
            case 4:
                str = "Trying to convert a macro reference to object";
                break;
            case 5:
                str = "Trying to convert a function id to object";
                break;
            case 6:
                return Long.valueOf(zzbtVar.zzyq);
            case 7:
                StringBuilder sb = new StringBuilder();
                com.google.android.gms.internal.zzbt[] zzbtVarArr2 = zzbtVar.zzys;
                int length2 = zzbtVarArr2.length;
                while (i < length2) {
                    String zzd = zzd(zzbtVarArr2[i]);
                    if (zzd == zzkuo) {
                        return null;
                    }
                    sb.append(zzd);
                    i++;
                }
                return sb.toString();
            case 8:
                return Boolean.valueOf(zzbtVar.zzyr);
            default:
                int i2 = zzbtVar.type;
                StringBuilder sb2 = new StringBuilder(46);
                sb2.append("Failed to convert a value of type: ");
                sb2.append(i2);
                str = sb2.toString();
                break;
        }
        zzdj.e(str);
        return null;
    }

    public static com.google.android.gms.internal.zzbt zzmi(String str) {
        com.google.android.gms.internal.zzbt zzbtVar = new com.google.android.gms.internal.zzbt();
        zzbtVar.type = 5;
        zzbtVar.zzyp = str;
        return zzbtVar;
    }

    private static zzgj zzmj(String str) {
        try {
            return zzgj.zzmh(str);
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(33 + String.valueOf(str).length());
            sb.append("Failed to convert '");
            sb.append(str);
            sb.append("' to a number.");
            zzdj.e(sb.toString());
            return zzkun;
        }
    }
}
