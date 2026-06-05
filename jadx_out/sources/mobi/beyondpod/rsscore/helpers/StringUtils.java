package mobi.beyondpod.rsscore.helpers;

import android.annotation.TargetApi;
import android.text.Html;
import android.text.Spanned;
import java.util.UUID;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class StringUtils {
    public static final String Empty = "";
    private static final String TAG = "StringUtils";

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static int safeParseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return i;
        }
    }

    public static long safeParseLong(String str, long j) {
        try {
            return Long.parseLong(str);
        } catch (Throwable unused) {
            return j;
        }
    }

    public static float safeParseFloat(String str, float f) {
        try {
            return Float.parseFloat(str);
        } catch (Throwable unused) {
            return f;
        }
    }

    public static boolean equalsIgnoreCase(String str, String str2) {
        return str != null && (str.equals(str2) || str.equalsIgnoreCase(str2));
    }

    public static boolean equals(String str, String str2) {
        return str != null && str.equals(str2);
    }

    public static String longToInvariantCultureString(long j) {
        return Long.valueOf(j).toString();
    }

    public static String doubleToInvariantCultureString(double d) {
        return Double.valueOf(d).toString();
    }

    public static Long tryParseLongFromString(String str, Long l) {
        if (isNullOrEmpty(str)) {
            return l;
        }
        try {
            return Long.valueOf(Long.parseLong(str));
        } catch (Throwable unused) {
            return l;
        }
    }

    public static Double tryParseDoubleFromString(String str, Double d) {
        if (isNullOrEmpty(str)) {
            return d;
        }
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (Throwable unused) {
            return d;
        }
    }

    public static boolean tryParseBooleanFromString(String str, boolean z) {
        return isNullOrEmpty(str) ? z : str.equalsIgnoreCase(NotificationPreferences.YES);
    }

    public static Integer tryParseIntFromString(String str, Integer num) {
        if (isNullOrEmpty(str)) {
            return num;
        }
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Throwable unused) {
            return num;
        }
    }

    public static UUID tryParseUUIDFromString(String str, UUID uuid) {
        if (isNullOrEmpty(str)) {
            return uuid;
        }
        try {
            return UUID.fromString(str);
        } catch (Throwable unused) {
            return uuid;
        }
    }

    public static String tryParseStringFromString(String str, String str2) {
        return isNullOrEmpty(str) ? str2 : str;
    }

    @TargetApi(24)
    public static Spanned fromHtml(String str) {
        if (CoreHelper.apiLevel() >= 24) {
            return Html.fromHtml(str, 0);
        }
        return Html.fromHtml(str);
    }
}
