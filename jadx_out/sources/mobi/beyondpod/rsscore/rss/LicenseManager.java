package mobi.beyondpod.rsscore.rss;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Build;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.services.auto.MediaIdHelper;

/* loaded from: classes.dex */
public class LicenseManager {
    public static final int LICENSE_TYPE_AMAZON = 6;
    public static final int LICENSE_TYPE_ANDROID_MARKET = 1;
    public static final int LICENSE_TYPE_ARC = 7;
    public static final int LICENSE_TYPE_BETA = 2;
    public static final int LICENSE_TYPE_EXPIRED = 5;
    public static final int LICENSE_TYPE_IN_TRIAL = 0;
    public static final int LICENSE_TYPE_OTHER = 4;
    public static final int LICENSE_TYPE_PAYPAL = 3;
    public static final int LICENSE_TYPE_UNKNOWN = -1;
    private static final String TAG = "LicenseManager";
    private static Date _TrialStartDate;
    private static final Date _InstallStartDate = new Date(1235929600000L);
    private static Date _DefaultTrialStartDate = new Date(1235929697999L);
    public static Uri _CheckKeyUri = Uri.parse("content://beyondpod.license.manager/checkKey/" + Long.toString(new Date().getTime()));
    public static final String _Key = Integer.toOctalString(_CheckKeyUri.hashCode());
    private static final License _ProVersionLicense = new License();
    private static final ExternalLicense _ChromiumLicense = new ExternalLicense();

    public static Date trialStartDate() {
        if (_TrialStartDate == null) {
            _TrialStartDate = Configuration.getTrialStartDate();
            if (_TrialStartDate == null) {
                _TrialStartDate = _DefaultTrialStartDate;
            }
        }
        return _TrialStartDate;
    }

    public static void setTrialStartDate(Date date) {
        if (date != null) {
            _TrialStartDate = date;
            if (_TrialStartDate.equals(_InstallStartDate)) {
                _TrialStartDate = new Date();
            }
        }
        Configuration.setTrialStartDate(_TrialStartDate);
    }

    public static int trialExpiresInDays() {
        Double valueOf = Double.valueOf(new TimeSpan(trialExpirationDate().getTime() - new Date().getTime()).getTotalDays());
        if (valueOf.doubleValue() < 0.7d) {
            return 0;
        }
        return (int) Math.round(valueOf.doubleValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isUnlocked() {
        return isKeyInstalled() || pokeKey();
    }

    public static String[] getLicenseKey() {
        String type;
        String licenseKey = _ProVersionLicense.getLicenseKey(_CheckKeyUri);
        if (licenseKey != null) {
            return licenseKey.split("\\|");
        }
        String licenseKey2 = _ChromiumLicense.getLicenseKey(_CheckKeyUri);
        if (licenseKey2 != null) {
            return licenseKey2.split("\\|");
        }
        try {
            ContentResolver contentResolver = BeyondPodApplication.getInstance().getContentResolver();
            if (contentResolver == null || (type = contentResolver.getType(_CheckKeyUri)) == null) {
                return null;
            }
            return type.split("\\|");
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to get License key!");
            return null;
        }
    }

    public static boolean pokeKey() {
        String[] licenseKey = getLicenseKey();
        return licenseKey != null && licenseKey.length == 2 && _Key.equals(licenseKey[0]);
    }

    public static boolean isKeyInstalled() {
        try {
            return BeyondPodApplication.getInstance().getPackageManager().checkSignatures(Configuration.packageName(), "mobi.beyondpod.unlockkey") == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static Date trialExpirationDate() {
        Calendar gregorianCalendar = GregorianCalendar.getInstance();
        gregorianCalendar.setTime(trialExpirationWarningDate());
        gregorianCalendar.add(6, warningTrialDurationDays());
        return gregorianCalendar.getTime();
    }

    private static int freeTrialDurationDays() {
        return isPartner() ? 30 : 4;
    }

    private static int warningTrialDurationDays() {
        return isPartner() ? 15 : 3;
    }

    private static boolean isPartner() {
        return CoreHelper.isPartnerSony();
    }

    public static Date betaExpirationDate() {
        Calendar gregorianCalendar = GregorianCalendar.getInstance();
        if (CoreHelper.isRunningOnARC() && "ARC".equals(BeyondPodApplication.getInstance().appKind())) {
            gregorianCalendar.set(2016, 1, 1);
        } else {
            gregorianCalendar.set(2009, 3, 1);
        }
        return gregorianCalendar.getTime();
    }

    public static Date trialExpirationWarningDate() {
        Calendar gregorianCalendar = GregorianCalendar.getInstance();
        gregorianCalendar.setTime(trialStartDate());
        gregorianCalendar.add(6, freeTrialDurationDays());
        Date time = gregorianCalendar.getTime();
        Date betaExpirationDate = betaExpirationDate();
        return time.compareTo(betaExpirationDate) < 0 ? betaExpirationDate : time;
    }

    public static boolean ifInRestrictedMode() {
        return !isUnlocked() && new Date().compareTo(trialExpirationDate()) > 0;
    }

    public static int currentLicenseKind() {
        if (isUnlocked()) {
            String licenseTypeString = getLicenseTypeString(false);
            if (StringUtils.isNullOrEmpty(licenseTypeString)) {
                return -1;
            }
            if (licenseTypeString.equals("Beta Tester")) {
                return 2;
            }
            if (licenseTypeString.equals("Android Market") || licenseTypeString.equals("Google Play")) {
                return 1;
            }
            if (licenseTypeString.equals("Amazon Appstore")) {
                return 6;
            }
            if (licenseTypeString.equals("PayPal")) {
                return 3;
            }
            return licenseTypeString.equals(Build.MANUFACTURER) ? 7 : 4;
        }
        if (!ifInRestrictedMode()) {
            return new Date().compareTo(trialExpirationDate()) < 0 ? 0 : 4;
        }
        Configuration.setLicenseTypeString("");
        return 5;
    }

    public static String getLicenseTypeString(boolean z) {
        String[] licenseKey;
        String licenseTypeString = Configuration.licenseTypeString();
        if ((!z && !StringUtils.isNullOrEmpty(licenseTypeString)) || (licenseKey = getLicenseKey()) == null || licenseKey.length <= 1) {
            return licenseTypeString;
        }
        String str = licenseKey[1];
        Configuration.setLicenseTypeString(str);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class License {
        License() {
        }

        String getLicenseKey(Uri uri) {
            try {
                String string = BeyondPodApplication.getInstance().getResources().getString(R.string.application_licensed_to);
                if (!StringUtils.isNullOrEmpty(string) && !".".equals(string)) {
                    return Integer.toOctalString(uri.toString().hashCode()) + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR + string;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static String getShortLicenseKind() {
        switch (currentLicenseKind()) {
            case 0:
                return "t";
            case 1:
                return "m";
            case 2:
                return "b";
            case 3:
                return "P";
            case 4:
                return "o";
            case 5:
                return "x";
            case 6:
                return "a";
            case 7:
                return "c";
            default:
                return "u";
        }
    }
}
