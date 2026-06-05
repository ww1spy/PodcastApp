package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public class zzatd extends zzari {
    private static zzatd zzedu;

    public zzatd(zzark zzarkVar) {
        super(zzarkVar);
    }

    public static zzatd zzaat() {
        return zzedu;
    }

    private static String zzo(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (!(obj instanceof Long)) {
            return obj instanceof Boolean ? String.valueOf(obj) : obj instanceof Throwable ? obj.getClass().getCanonicalName() : "-";
        }
        Long l = (Long) obj;
        if (Math.abs(l.longValue()) < 100) {
            return String.valueOf(obj);
        }
        String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
        String valueOf = String.valueOf(Math.abs(l.longValue()));
        return str + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
    }

    public final void zza(zzasy zzasyVar, String str) {
        String zzasyVar2 = zzasyVar != null ? zzasyVar.toString() : "no hit data";
        String valueOf = String.valueOf(str);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), zzasyVar2);
    }

    public final synchronized void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(str);
        if (i < 0) {
            i = 0;
        }
        if (i >= 9) {
            i = 8;
        }
        char c = zzxz().zzzu() ? 'C' : 'c';
        char charAt = "01VDIWEA?".charAt(i);
        String str2 = zzarj.VERSION;
        String zzc = zzc(str, zzo(obj), zzo(obj2), zzo(obj3));
        StringBuilder sb = new StringBuilder(4 + String.valueOf(str2).length() + String.valueOf(zzc).length());
        sb.append("3");
        sb.append(charAt);
        sb.append(c);
        sb.append(str2);
        sb.append(":");
        sb.append(zzc);
        String sb2 = sb.toString();
        if (sb2.length() > 1024) {
            sb2 = sb2.substring(0, 1024);
        }
        zzath zzyo = zzxw().zzyo();
        if (zzyo != null) {
            zzyo.zzabf().zzem(sb2);
        }
    }

    public final void zzf(Map<String, String> map, String str) {
        String str2;
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
            str2 = sb.toString();
        } else {
            str2 = "no hit data";
        }
        String valueOf = String.valueOf(str);
        zzd(valueOf.length() != 0 ? "Discarding hit. ".concat(valueOf) : new String("Discarding hit. "), str2);
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        synchronized (zzatd.class) {
            zzedu = this;
        }
    }
}
