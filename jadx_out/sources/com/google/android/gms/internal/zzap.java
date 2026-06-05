package com.google.android.gms.internal;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class zzap {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<zzl> zza(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new zzl(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> zza(List<zzl> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (zzl zzlVar : list) {
            treeMap.put(zzlVar.getName(), zzlVar.getValue());
        }
        return treeMap;
    }

    public static zzc zzb(zzp zzpVar) {
        boolean z;
        boolean z2;
        long j;
        long j2;
        long j3;
        long j4;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zzpVar.zzab;
        String str = map.get(HttpRequest.HEADER_DATE);
        long zzf = str != null ? zzf(str) : 0L;
        String str2 = map.get(HttpRequest.HEADER_CACHE_CONTROL);
        if (str2 != null) {
            z = false;
            j = 0;
            j2 = 0;
            for (String str3 : str2.split(",")) {
                String trim = str3.trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
            }
            z2 = true;
        } else {
            z = false;
            z2 = false;
            j = 0;
            j2 = 0;
        }
        String str4 = map.get(HttpRequest.HEADER_EXPIRES);
        long zzf2 = str4 != null ? zzf(str4) : 0L;
        String str5 = map.get(HttpRequest.HEADER_LAST_MODIFIED);
        long zzf3 = str5 != null ? zzf(str5) : 0L;
        String str6 = map.get(HttpRequest.HEADER_ETAG);
        if (z2) {
            long j5 = currentTimeMillis + (j * 1000);
            j3 = z ? j5 : j5 + (j2 * 1000);
            j4 = j5;
        } else if (zzf <= 0 || zzf2 < zzf) {
            j3 = 0;
            j4 = 0;
        } else {
            j4 = currentTimeMillis + (zzf2 - zzf);
            j3 = j4;
        }
        zzc zzcVar = new zzc();
        zzcVar.data = zzpVar.data;
        zzcVar.zza = str6;
        zzcVar.zze = j4;
        zzcVar.zzd = j3;
        zzcVar.zzb = zzf;
        zzcVar.zzc = zzf3;
        zzcVar.zzf = map;
        zzcVar.zzg = zzpVar.allHeaders;
        return zzcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(long j) {
        return zzo().format(new Date(j));
    }

    public static String zzb(Map<String, String> map) {
        String str = map.get(HttpRequest.HEADER_CONTENT_TYPE);
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals(HttpRequest.PARAM_CHARSET)) {
                    return split2[1];
                }
            }
        }
        return "ISO-8859-1";
    }

    private static long zzf(String str) {
        try {
            return zzo().parse(str).getTime();
        } catch (ParseException e) {
            zzaf.zza(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    private static SimpleDateFormat zzo() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
