package mobi.beyondpod.ui.views.notifications;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.Version;

/* loaded from: classes.dex */
public abstract class MessageExpirationPolicy {

    /* loaded from: classes.dex */
    public static class NeverExpireExpirationPolicy extends MessageExpirationPolicy {
        @Override // mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy
        boolean isExpired() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isExpired();

    public static MessageExpirationPolicy buildPolicy(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return new NeverExpireExpirationPolicy();
        }
        if (str.startsWith(VersionLessExpirationPolicy.TAG)) {
            return new VersionLessExpirationPolicy(extractData(str, VersionLessExpirationPolicy.TAG));
        }
        if (str.startsWith(VersionMoreExpirationPolicy.TAG)) {
            return new VersionMoreExpirationPolicy(extractData(str, VersionMoreExpirationPolicy.TAG));
        }
        if (str.startsWith(VersionEqualExpirationPolicy.TAG)) {
            return new VersionEqualExpirationPolicy(extractData(str, VersionEqualExpirationPolicy.TAG));
        }
        if (str.startsWith(DateExpirationPolicy.TAG)) {
            return new DateExpirationPolicy(extractData(str, DateExpirationPolicy.TAG));
        }
        return new NeverExpireExpirationPolicy();
    }

    private static String extractData(String str, String str2) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        return str.substring(str2.length()).trim();
    }

    /* loaded from: classes.dex */
    public static class VersionLessExpirationPolicy extends MessageExpirationPolicy {
        public static final String TAG = "SHOW_IF_VERSION_LESS_THAN:";
        protected Version _TargetVersion;

        public VersionLessExpirationPolicy(String str) {
            this._TargetVersion = new Version("0.0.0.0");
            if (StringUtils.isNullOrEmpty(str)) {
                return;
            }
            this._TargetVersion = new Version(str);
        }

        @Override // mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy
        boolean isExpired() {
            return Version.compare(Configuration.currentProductVersion(), this._TargetVersion) >= 0;
        }
    }

    /* loaded from: classes.dex */
    public static class VersionMoreExpirationPolicy extends VersionLessExpirationPolicy {
        public static final String TAG = "SHOW_IF_VERSION_MORE_THAN:";

        public VersionMoreExpirationPolicy(String str) {
            super(str);
        }

        @Override // mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy.VersionLessExpirationPolicy, mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy
        boolean isExpired() {
            return Version.compare(Configuration.currentProductVersion(), this._TargetVersion) <= 0;
        }
    }

    /* loaded from: classes.dex */
    public static class VersionEqualExpirationPolicy extends VersionLessExpirationPolicy {
        public static final String TAG = "SHOW_IF_VERSION:";

        public VersionEqualExpirationPolicy(String str) {
            super(str);
        }

        @Override // mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy.VersionLessExpirationPolicy, mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy
        boolean isExpired() {
            return Version.compare(Configuration.currentProductVersion(), this._TargetVersion) != 0;
        }
    }

    /* loaded from: classes.dex */
    public static class DateExpirationPolicy extends MessageExpirationPolicy {
        public static final String TAG = "SHOW_BEFORE:";
        Date _TargetDate;

        public DateExpirationPolicy(String str) {
            Date tryParseDateTimeWithFormat;
            this._TargetDate = new GregorianCalendar(2100, 1, 1).getTime();
            if (StringUtils.isNullOrEmpty(str) || (tryParseDateTimeWithFormat = DateTime.tryParseDateTimeWithFormat(str, new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT))) == null) {
                return;
            }
            this._TargetDate = tryParseDateTimeWithFormat;
        }

        @Override // mobi.beyondpod.ui.views.notifications.MessageExpirationPolicy
        boolean isExpired() {
            return new Date().after(this._TargetDate);
        }
    }
}
