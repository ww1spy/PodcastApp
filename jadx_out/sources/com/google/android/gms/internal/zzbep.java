package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbep {
    private static final zzbei zzeus = new zzbei("MetadataUtils");
    private static final String[] zzfon = {"Z", "+hh", "+hhmm", "+hh:mm"};
    private static final String zzfoo;

    static {
        String valueOf = String.valueOf("yyyyMMdd'T'HHmmss");
        String valueOf2 = String.valueOf(zzfon[0]);
        zzfoo = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public static String zza(Calendar calendar) {
        if (calendar == null) {
            zzeus.zzb("Calendar object cannot be null", new Object[0]);
            return null;
        }
        String str = zzfoo;
        if (calendar.get(11) == 0 && calendar.get(12) == 0 && calendar.get(13) == 0) {
            str = "yyyyMMdd";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        simpleDateFormat.setTimeZone(calendar.getTimeZone());
        String format = simpleDateFormat.format(calendar.getTime());
        return format.endsWith("+0000") ? format.replace("+0000", zzfon[0]) : format;
    }

    public static void zza(List<WebImage> list, JSONObject jSONObject) {
        try {
            list.clear();
            JSONArray jSONArray = jSONObject.getJSONArray("images");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException unused) {
                }
            }
        } catch (JSONException unused2) {
        }
    }

    public static void zza(JSONObject jSONObject, List<WebImage> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<WebImage> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().toJson());
        }
        try {
            jSONObject.put("images", jSONArray);
        } catch (JSONException unused) {
        }
    }

    public static Calendar zzgb(String str) {
        if (TextUtils.isEmpty(str)) {
            zzeus.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        String zzgc = zzgc(str);
        if (TextUtils.isEmpty(zzgc)) {
            zzeus.zzb("Invalid date format", new Object[0]);
            return null;
        }
        String zzgd = zzgd(str);
        String str2 = "yyyyMMdd";
        if (!TextUtils.isEmpty(zzgd)) {
            String valueOf = String.valueOf(zzgc);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(zzgd).length());
            sb.append(valueOf);
            sb.append("T");
            sb.append(zzgd);
            zzgc = sb.toString();
            str2 = zzgd.length() == 6 ? "yyyyMMdd'T'HHmmss" : zzfoo;
        }
        Calendar gregorianCalendar = GregorianCalendar.getInstance();
        try {
            gregorianCalendar.setTime(new SimpleDateFormat(str2).parse(zzgc));
            return gregorianCalendar;
        } catch (ParseException e) {
            zzeus.zzb("Error parsing string: %s", e.getMessage());
            return null;
        }
    }

    private static String zzgc(String str) {
        if (TextUtils.isEmpty(str)) {
            zzeus.zzb("Input string is empty or null", new Object[0]);
            return null;
        }
        try {
            return str.substring(0, 8);
        } catch (IndexOutOfBoundsException e) {
            zzeus.zze("Error extracting the date: %s", e.getMessage());
            return null;
        }
    }

    private static String zzgd(String str) {
        if (TextUtils.isEmpty(str)) {
            zzeus.zzb("string is empty or null", new Object[0]);
            return null;
        }
        int indexOf = str.indexOf(84);
        int i = indexOf + 1;
        if (indexOf != 8) {
            zzeus.zzb("T delimeter is not found", new Object[0]);
            return null;
        }
        boolean z = true;
        try {
            String substring = str.substring(i);
            if (substring.length() == 6) {
                return substring;
            }
            char charAt = substring.charAt(6);
            if (charAt != '+' && charAt != '-') {
                if (charAt != 'Z' || substring.length() != 6 + zzfon[0].length()) {
                    return null;
                }
                String valueOf = String.valueOf(substring.substring(0, substring.length() - 1));
                String valueOf2 = String.valueOf("+0000");
                return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
            int length = substring.length();
            if (length != zzfon[1].length() + 6 && length != zzfon[2].length() + 6 && length != 6 + zzfon[3].length()) {
                z = false;
            }
            if (z) {
                return substring.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
            }
            return null;
        } catch (IndexOutOfBoundsException e) {
            zzeus.zzb("Error extracting the time substring: %s", e.getMessage());
            return null;
        }
    }
}
