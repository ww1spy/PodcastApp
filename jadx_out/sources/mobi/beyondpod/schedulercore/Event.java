package mobi.beyondpod.schedulercore;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.TimeSpan;

/* loaded from: classes.dex */
public class Event {
    private boolean _IsModified;
    private int _RecurrenceInterval = 0;
    private TimeSpan _RecurrencePeriod;
    private Date _StartTime;

    public Event(Date date, int i, TimeSpan timeSpan) {
        setRecurrenceInterval(i);
        setRecurrencePeriod(timeSpan);
        setUnadjustedStartTime(date);
    }

    public Date startTime() {
        return nextStartTimeAfter(new Date());
    }

    private Date nextStartTimeAfter(Date date) {
        Date unadjustedStartTime = getUnadjustedStartTime();
        if (unadjustedStartTime == null) {
            return unadjustedStartTime;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(unadjustedStartTime);
        int i = gregorianCalendar.get(6);
        TimeSpan recurrence = recurrence();
        while (recurrence.getTotalSeconds() > 0.0d && unadjustedStartTime.compareTo(date) <= 0) {
            unadjustedStartTime = recurrence.addTo(unadjustedStartTime);
            gregorianCalendar.setTime(unadjustedStartTime);
            if (gregorianCalendar.get(6) != i) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(this._StartTime);
                gregorianCalendar.set(11, calendar.get(11));
                gregorianCalendar.set(12, calendar.get(12));
                unadjustedStartTime = gregorianCalendar.getTime();
                i = gregorianCalendar.get(6);
            }
        }
        return unadjustedStartTime;
    }

    public TimeSpan recurrence() {
        return new TimeSpan(getRecurrencePeriod().getTotalMilliseconds() * getRecurrenceInterval());
    }

    public Date getUnadjustedStartTime() {
        return this._StartTime;
    }

    private Date unadjustedStartTimeFor(Date date) {
        if (this._StartTime == null) {
            return this._StartTime;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this._StartTime);
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(11, calendar.get(11));
        gregorianCalendar.set(12, calendar.get(12));
        gregorianCalendar.set(13, 0);
        gregorianCalendar.set(14, 0);
        this._StartTime = gregorianCalendar.getTime();
        return this._StartTime;
    }

    public void setUnadjustedStartTime(Date date) {
        if (date == null) {
            this._StartTime = null;
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(date);
            gregorianCalendar.set(13, 0);
            gregorianCalendar.set(14, 0);
            this._StartTime = gregorianCalendar.getTime();
        }
        this._IsModified = true;
    }

    public boolean occursInTheFuture() {
        Date startTime = startTime();
        return startTime != null && startTime.compareTo(new Date()) > 0;
    }

    public String toString() {
        StringBuilder sb;
        String str;
        Locale currentLocale = CoreHelper.getCurrentLocale();
        Object[] objArr = new Object[3];
        objArr[0] = startTime() != null ? DateTime.toShortString(getUnadjustedStartTime()) : "[Not Set]";
        objArr[1] = Integer.valueOf(getRecurrenceInterval());
        if (getRecurrencePeriod().getTotalHours() < 1.0d) {
            sb = new StringBuilder();
            sb.append(getRecurrencePeriod().getTotalMinutes());
            str = " minutes";
        } else {
            sb = new StringBuilder();
            sb.append(getRecurrencePeriod().getTotalHours());
            str = " hours";
        }
        sb.append(str);
        objArr[2] = sb.toString();
        return String.format(currentLocale, "Start: %s and repeat every %d %s", objArr);
    }

    public boolean overlapsWith(Event event) {
        return event != null && new TimeSpan(Math.abs(startTime().getTime() - event.startTime().getTime())).getTotalMinutes() < 10.0d;
    }

    public boolean isModified() {
        return this._IsModified;
    }

    public void setIsModified(boolean z) {
        this._IsModified = z;
    }

    public void setRecurrenceInterval(int i) {
        this._RecurrenceInterval = i;
        this._IsModified = true;
    }

    public int getRecurrenceInterval() {
        return this._RecurrenceInterval;
    }

    public void setRecurrencePeriod(TimeSpan timeSpan) {
        this._RecurrencePeriod = timeSpan;
        this._IsModified = true;
    }

    public TimeSpan getRecurrencePeriod() {
        return this._RecurrencePeriod;
    }
}
