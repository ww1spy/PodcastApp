package mobi.beyondpod.rsscore.helpers;

import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class TimeSpan implements Comparable<TimeSpan> {
    private long duration;

    public TimeSpan(long j) {
        this.duration = j < 0 ? j * (-1) : j;
    }

    public TimeSpan(long j, long j2, long j3) {
        this(0L, j, j2, j3, 0L);
    }

    public TimeSpan(long j, long j2, long j3, long j4) {
        this(j, j2, j3, j4, 0L);
    }

    public TimeSpan(long j, long j2, long j3, long j4, long j5) {
        long j6;
        this.duration = 0L;
        if (j > 0) {
            this.duration += j * 1000 * 60 * 60 * 24;
            j6 = 0;
        } else {
            j6 = 0;
        }
        if (j2 > j6) {
            this.duration += j2 * 1000 * 60 * 60;
        }
        if (j3 > j6) {
            this.duration += j3 * 1000 * 60;
        }
        if (j4 > j6) {
            this.duration += j4 * 1000;
        }
        this.duration += j5;
    }

    public long getYears() {
        return (this.duration / 86400000) / 365;
    }

    public long getDays() {
        return this.duration / 86400000;
    }

    public long getHours() {
        return (this.duration / 3600000) % 24;
    }

    public long getMinutes() {
        return (this.duration / 60000) % 60;
    }

    public long getSeconds() {
        return (this.duration / 1000) % 60;
    }

    public long getMilliseconds() {
        return this.duration % 1000;
    }

    public double getTotalDays() {
        return ((float) this.duration) / 8.64E7f;
    }

    public double getTotalHours() {
        return ((float) this.duration) / 3600000.0f;
    }

    public double getTotalMinutes() {
        return ((float) this.duration) / 60000.0f;
    }

    public double getTotalSeconds() {
        return ((float) this.duration) / 1000.0f;
    }

    public long getTotalMilliseconds() {
        return this.duration;
    }

    public TimeSpan add(TimeSpan timeSpan) {
        return new TimeSpan(this.duration + timeSpan.duration);
    }

    public static TimeSpan fromDays(double d) {
        return new TimeSpan(((long) d) * 86400000);
    }

    public static TimeSpan fromHours(double d) {
        return new TimeSpan(((long) d) * 3600000);
    }

    public static TimeSpan fromMinutes(double d) {
        return new TimeSpan(((long) d) * 60000);
    }

    public static TimeSpan fromSeconds(double d) {
        return new TimeSpan(((long) d) * 1000);
    }

    @Override // java.lang.Comparable
    public int compareTo(TimeSpan timeSpan) {
        return (int) (this.duration - timeSpan.duration);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TimeSpan) && ((TimeSpan) obj).duration == this.duration;
    }

    public int hashCode() {
        return (int) (this.duration ^ (this.duration >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getDays() > 0) {
            sb.append(getDays());
            sb.append(".");
        }
        sb.append(String.format(Locale.ROOT, "%02d:%02d:%02d", Long.valueOf(getHours()), Long.valueOf(getMinutes()), Long.valueOf(getSeconds())));
        if (getMilliseconds() > 0) {
            sb.append(String.format(Locale.ROOT, ".%03d", Long.valueOf(getMilliseconds())));
        }
        return sb.toString();
    }

    public Date subtractFrom(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        double totalDays = getTotalDays();
        calendar.add(1, ((int) (totalDays > 365.0d ? totalDays / 365.0d : 0.0d)) * (-1));
        calendar.add(6, (int) (getDays() * (-1)));
        calendar.add(10, (int) (getHours() * (-1)));
        calendar.add(12, (int) (getMinutes() * (-1)));
        calendar.add(13, (int) (getSeconds() * (-1)));
        return calendar.getTime();
    }

    public Date addTo(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        double totalDays = getTotalDays();
        calendar.add(1, (int) (totalDays > 365.0d ? totalDays / 365.0d : 0.0d));
        calendar.add(6, (int) getDays());
        calendar.add(10, (int) getHours());
        calendar.add(12, (int) getMinutes());
        calendar.add(13, (int) getSeconds());
        return calendar.getTime();
    }
}
