package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
/* loaded from: classes.dex */
public final class zzasy {
    private final Map<String, String> zzbwu;
    private final List<zzasf> zzedi;
    private final long zzedj;
    private final long zzedk;
    private final int zzedl;
    private final boolean zzedm;
    private final String zzedn;

    @Hide
    public zzasy(zzarh zzarhVar, Map<String, String> map, long j, boolean z) {
        this(zzarhVar, map, j, z, 0L, 0, null);
    }

    @Hide
    public zzasy(zzarh zzarhVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(zzarhVar, map, j, z, j2, i, null);
    }

    @Hide
    public zzasy(zzarh zzarhVar, Map<String, String> map, long j, boolean z, long j2, int i, List<zzasf> list) {
        String zza;
        String zza2;
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarhVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(map);
        this.zzedk = j;
        this.zzedm = z;
        this.zzedj = j2;
        this.zzedl = i;
        this.zzedi = list != null ? list : Collections.emptyList();
        this.zzedn = zzt(list);
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (zzn(entry.getKey()) && (zza2 = zza(zzarhVar, entry.getKey())) != null) {
                hashMap.put(zza2, zzb(zzarhVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!zzn(entry2.getKey()) && (zza = zza(zzarhVar, entry2.getKey())) != null) {
                hashMap.put(zza, zzb(zzarhVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.zzedn)) {
            zzatt.zzb(hashMap, "_v", this.zzedn);
            if (this.zzedn.equals("ma4.0.0") || this.zzedn.equals("ma4.0.1")) {
                hashMap.remove("adid");
            }
        }
        this.zzbwu = Collections.unmodifiableMap(hashMap);
    }

    private static String zza(zzarh zzarhVar, Object obj) {
        if (obj == null) {
            return null;
        }
        String obj2 = obj.toString();
        if (obj2.startsWith("&")) {
            obj2 = obj2.substring(1);
        }
        int length = obj2.length();
        if (length > 256) {
            obj2 = obj2.substring(0, 256);
            zzarhVar.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), obj2);
        }
        if (TextUtils.isEmpty(obj2)) {
            return null;
        }
        return obj2;
    }

    private static String zzb(zzarh zzarhVar, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        if (length <= 8192) {
            return obj2;
        }
        String substring = obj2.substring(0, 8192);
        zzarhVar.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), substring);
        return substring;
    }

    private final String zzk(String str, String str2) {
        com.google.android.gms.common.internal.zzbq.zzgv(str);
        com.google.android.gms.common.internal.zzbq.checkArgument(!str.startsWith("&"), "Short param name required");
        String str3 = this.zzbwu.get(str);
        return str3 != null ? str3 : str2;
    }

    private static boolean zzn(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private static String zzt(List<zzasf> list) {
        String str;
        if (list != null) {
            for (zzasf zzasfVar : list) {
                if ("appendVersion".equals(zzasfVar.getId())) {
                    str = zzasfVar.getValue();
                    break;
                }
            }
        }
        str = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ht=");
        sb.append(this.zzedk);
        if (this.zzedj != 0) {
            sb.append(", dbId=");
            sb.append(this.zzedj);
        }
        if (this.zzedl != 0) {
            sb.append(", appUID=");
            sb.append(this.zzedl);
        }
        ArrayList arrayList = new ArrayList(this.zzbwu.keySet());
        Collections.sort(arrayList);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str = (String) obj;
            sb.append(", ");
            sb.append(str);
            sb.append("=");
            sb.append(this.zzbwu.get(str));
        }
        return sb.toString();
    }

    public final int zzaal() {
        return this.zzedl;
    }

    public final long zzaam() {
        return this.zzedj;
    }

    public final long zzaan() {
        return this.zzedk;
    }

    public final List<zzasf> zzaao() {
        return this.zzedi;
    }

    public final boolean zzaap() {
        return this.zzedm;
    }

    public final long zzaaq() {
        return zzatt.zzeo(zzk("_s", NotificationPreferences.NO));
    }

    public final String zzaar() {
        return zzk("_m", "");
    }

    public final Map<String, String> zzjq() {
        return this.zzbwu;
    }
}
