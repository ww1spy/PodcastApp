package mobi.beyondpod.rsscore.helpers;

import java.util.Calendar;

/* loaded from: classes.dex */
public class TimeBands {
    public static final int DATE_BAND_LAST_MONTH = 5;
    public static final int DATE_BAND_LAST_WEEK = 4;
    public static final int DATE_BAND_OLDER = 6;
    public static final int DATE_BAND_THIS_MONTH = 2;
    public static final int DATE_BAND_THIS_WEEK = 1;
    public static final int DATE_BAND_THIS_YEAR = 3;
    public static final int DATE_BAND_TODAY = 0;
    Calendar LastMonthStart;
    Calendar LastWeekStart;
    Calendar ThisMonthStart;
    Calendar ThisWeekStart;
    Calendar ThisYearStart;
    Calendar TodayStart;

    public TimeBands() {
        this(Calendar.getInstance());
    }

    public TimeBands(Calendar calendar) {
        int i = calendar.get(1);
        int i2 = calendar.get(2);
        int i3 = calendar.get(5);
        this.TodayStart = Calendar.getInstance();
        this.TodayStart.set(i, i2, i3, 0, 0, 0);
        this.ThisWeekStart = Calendar.getInstance();
        this.ThisWeekStart.set(i, i2, i3, 0, 0, 0);
        this.ThisWeekStart.set(7, this.ThisWeekStart.getFirstDayOfWeek());
        this.LastWeekStart = Calendar.getInstance();
        this.LastWeekStart.set(this.ThisWeekStart.get(1), this.ThisWeekStart.get(2), this.ThisWeekStart.get(5), 0, 0, 0);
        this.LastWeekStart.add(3, -1);
        this.ThisMonthStart = Calendar.getInstance();
        this.ThisMonthStart.set(i, i2, 1, 0, 0, 0);
        this.LastMonthStart = Calendar.getInstance();
        this.LastMonthStart.set(i, i2, 1, 0, 0, 0);
        this.LastMonthStart.add(2, -1);
        this.ThisYearStart = Calendar.getInstance();
        this.ThisYearStart.set(i, 0, 1, 0, 0, 0);
    }

    public int getDateBand(Calendar calendar) {
        long timeInMillis = calendar.getTimeInMillis();
        if (timeInMillis >= this.TodayStart.getTimeInMillis()) {
            return 0;
        }
        if (timeInMillis >= this.ThisWeekStart.getTimeInMillis()) {
            return 1;
        }
        if (timeInMillis >= this.LastWeekStart.getTimeInMillis()) {
            return 4;
        }
        if (timeInMillis >= this.ThisMonthStart.getTimeInMillis()) {
            return 2;
        }
        if (timeInMillis >= this.LastMonthStart.getTimeInMillis()) {
            return 5;
        }
        return timeInMillis >= this.ThisYearStart.getTimeInMillis() ? 3 : 6;
    }
}
