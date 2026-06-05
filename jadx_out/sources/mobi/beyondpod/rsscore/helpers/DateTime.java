package mobi.beyondpod.rsscore.helpers;

import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class DateTime {
    Date _date;
    private static final String TODAY = CoreHelper.loadResourceString(R.string.date_time_today);
    static TimeZone TZ_GMT = TimeZone.getTimeZone("GMT");
    public static final SimpleDateFormat[] rfc822DateFormats = {new SimpleDateFormat("EEE, d MMM yy kk:mm:ss z", Locale.US), new SimpleDateFormat("EEE, d MMM yyyy kk:mm:ss z", Locale.US), new SimpleDateFormat("yyyy-MM-dd'T'kk:mm:ss'Z'", Locale.ROOT), new SimpleDateFormat("yyyy-MM-dd'T'kk:mm:ssz", Locale.ROOT), new SimpleDateFormat("yyyy-MM-dd'T'kk:mm:ss", Locale.ROOT), new SimpleDateFormat("EEE MMM  d kk:mm:ss zzz yyyy", Locale.US), new SimpleDateFormat("EEE, dd MMMM yyyy kk:mm:ss", Locale.US), new SimpleDateFormat("EEE, dd MMM yyyy kk:mm Z", Locale.US), new SimpleDateFormat("d MMM yy kk:mm:ss z", Locale.US), new SimpleDateFormat("yyyy-MM-dd kk:mm:ss.0", Locale.ROOT), new SimpleDateFormat("-yy-MM", Locale.ROOT), new SimpleDateFormat("-yyMM", Locale.ROOT), new SimpleDateFormat("yy-MM-dd", Locale.ROOT), new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT), new SimpleDateFormat("yyyy-MM", Locale.ROOT), new SimpleDateFormat("yyyy-D", Locale.ROOT), new SimpleDateFormat("-yyMM", Locale.ROOT), new SimpleDateFormat("yyyyMMdd", Locale.ROOT), new SimpleDateFormat("yyMMdd", Locale.ROOT), new SimpleDateFormat("yyyy", Locale.ROOT), new SimpleDateFormat("yyD", Locale.ROOT)};
    public static final Date MaxValue = new Date();
    public static SimpleDateFormat RFC822DATEFORMATUTC = new SimpleDateFormat("EEE', 'dd' 'MMM' 'yyyy' 'HH:mm:ss' 'z", Locale.US);
    public static SimpleDateFormat MONTHDAYFORMAT = new SimpleDateFormat("MMM d", Locale.ROOT);
    public static SimpleDateFormat RFC822DATEFORMAT = new SimpleDateFormat("EEE', 'dd' 'MMM' 'yyyy' 'HH:mm:ss' 'z", Locale.US);
    public static SimpleDateFormat HOURMINAMPMFORMAT = new SimpleDateFormat("H:mm", Locale.ROOT);
    public static SimpleDateFormat HOURMINSECFORMAT = new SimpleDateFormat("HH:mm:ss", Locale.ROOT);

    static {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TZ_GMT);
        gregorianCalendar.set(2050, 1, 1, 0, 0, 0);
        MaxValue.setTime(gregorianCalendar.getTime().getTime());
        RFC822DATEFORMATUTC.setCalendar(gregorianCalendar);
        rfc822DateFormats[2].setTimeZone(TZ_GMT);
        for (int length = rfc822DateFormats.length - 12; length != rfc822DateFormats.length; length++) {
            rfc822DateFormats[length].setTimeZone(TZ_GMT);
        }
    }

    public static String formatTime(Date date) {
        Context applicationContext = BeyondPodApplication.getInstance().getApplicationContext();
        return DateUtils.formatDateTime(applicationContext, date.getTime(), DateFormat.is24HourFormat(applicationContext) ? NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED : 1);
    }

    public static String format24HourTime(Date date) {
        return DateUtils.formatDateTime(BeyondPodApplication.getInstance().getApplicationContext(), date.getTime(), NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED);
    }

    public static String formatDateTimeToday(Date date) {
        if (DateUtils.isToday(date.getTime())) {
            return TODAY;
        }
        return formatDateTime(date);
    }

    public static String formatDateTime(Date date) {
        int i;
        if (date == null) {
            return "";
        }
        Context applicationContext = BeyondPodApplication.getInstance().getApplicationContext();
        Time time = new Time();
        time.set(date.getTime());
        Time time2 = new Time();
        time2.setToNow();
        if (time.year != time2.year) {
            i = 526868;
        } else {
            i = time.yearDay != time2.yearDay ? 526864 : 526849;
        }
        return DateUtils.formatDateTime(applicationContext, date.getTime(), i);
    }

    public static String toRFC822String(Date date) {
        return RFC822DATEFORMAT.format(date);
    }

    public static String toRFC822UTCString(Date date) {
        return RFC822DATEFORMATUTC.format(date);
    }

    public static String formatDate(Date date) {
        if (date == null) {
            return "";
        }
        if (DateUtils.isToday(date.getTime())) {
            return TODAY;
        }
        return DateUtils.formatDateTime(BeyondPodApplication.getInstance().getApplicationContext(), date.getTime(), 65544);
    }

    public static String toLongString(Date date) {
        return Long.toString(date.getTime());
    }

    public static String toShortString(Date date) {
        return SimpleDateFormat.getDateTimeInstance(3, 2).format(date);
    }

    public static Date tryParseDateTime(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        try {
            long longValue = StringUtils.tryParseLongFromString(str, 0L).longValue();
            if (longValue == 0) {
                return null;
            }
            return new Date(longValue);
        } catch (NumberFormatException unused) {
            return tryParseRFC822Time(str, null);
        }
    }

    public static SimpleDateFormat tryFindFormatOfRFC822Time(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        for (SimpleDateFormat simpleDateFormat : rfc822DateFormats) {
            if (tryParseDateTimeWithFormat(str, simpleDateFormat) != null) {
                return simpleDateFormat;
            }
        }
        return null;
    }

    public static Date tryParseRFC822Time(String str, SimpleDateFormat simpleDateFormat) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        Date tryParseDateTimeWithFormat = simpleDateFormat != null ? tryParseDateTimeWithFormat(str, simpleDateFormat) : null;
        if (tryParseDateTimeWithFormat != null) {
            return tryParseDateTimeWithFormat;
        }
        for (SimpleDateFormat simpleDateFormat2 : rfc822DateFormats) {
            Date tryParseDateTimeWithFormat2 = tryParseDateTimeWithFormat(str, simpleDateFormat2);
            if (tryParseDateTimeWithFormat2 != null) {
                return tryParseDateTimeWithFormat2;
            }
        }
        return null;
    }

    public static Date tryParseDateTimeWithFormat(String str, SimpleDateFormat simpleDateFormat) {
        try {
            return simpleDateFormat.parse(str);
        } catch (ParseException unused) {
            return null;
        }
    }

    public static void primeTimeZones() {
        try {
            RFC822DATEFORMATUTC.parse("Wed, 28 Jan 2009 11:03:42 -0500");
        } catch (ParseException unused) {
        }
    }

    public static CharSequence formatTimeRelative(Date date) {
        long currentTimeMillis = System.currentTimeMillis();
        long time = currentTimeMillis - date.getTime();
        if (time <= 60000) {
            return BeyondPodApplication.getInstance().getResources().getString(R.string.navigator_updated_now);
        }
        return DateUtils.getRelativeTimeSpanString(date.getTime(), currentTimeMillis, time < 3600000 ? 60000L : 3600000L);
    }
}
