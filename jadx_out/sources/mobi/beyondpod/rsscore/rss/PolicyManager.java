package mobi.beyondpod.rsscore.rss;

import android.os.Looper;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class PolicyManager {
    public static boolean ifMultipleDownloadRestricted() {
        return !Configuration.freeMultiDownloads() && ifNotUnlocked();
    }

    public static boolean ifSchedulingRestricted() {
        return !Configuration.freeScheduling() && ifNotUnlocked();
    }

    public static boolean ifWearRestricted() {
        return ifNotUnlocked();
    }

    public static boolean ifAutoRestricted() {
        return !Configuration.freeAuto() && ifNotUnlocked();
    }

    public static boolean ifPlaybackSpeedRestricted() {
        return !Configuration.freeSpeed() && ifNotUnlocked();
    }

    public static boolean ifChromecastRestricted() {
        return !Configuration.freeChromecast() && ifNotUnlocked();
    }

    public static boolean ifCDSRestricted() {
        return !Configuration.freeCDS() && ifNotUnlocked();
    }

    public static boolean checkAndNotifyIfInDownloadRestrictedMode() {
        if (!ifMultipleDownloadRestricted()) {
            return false;
        }
        toastNotify(R.string.limited_mode_message);
        return true;
    }

    public static boolean checkAndNotifyIfInScheduleRestrictedMode() {
        if (!ifSchedulingRestricted()) {
            return false;
        }
        toastNotify(R.string.limited_mode_message);
        return true;
    }

    public static String licenseType() {
        return isTagUnlocked() ? "TAG" : LicenseManager.getLicenseTypeString(false);
    }

    public static boolean isUnlocked() {
        return LicenseManager.isUnlocked() || isTagUnlocked();
    }

    public static boolean isTagUnlocked() {
        return Configuration.freeScheduling() && Configuration.freeMultiDownloads() && Configuration.freeSpeed() && Configuration.freeChromecast() && Configuration.freeAuto() && Configuration.freeCDS();
    }

    private static void toastNotify(int i) {
        try {
            if (Looper.myLooper() != null) {
                Toast.makeText(BeyondPodApplication.getInstance(), i, 1).show();
            }
        } catch (Exception unused) {
        }
    }

    private static boolean ifNotUnlocked() {
        return LicenseManager.ifInRestrictedMode();
    }

    public static String dump() {
        return String.format("ADS: %s,\nSCH: %s, DLN: %s,\nSPD: %s, CC: %s, AUT: %s, CDS: %s", Boolean.valueOf(Configuration.isAdSupported()), Boolean.valueOf(Configuration.freeScheduling()), Boolean.valueOf(Configuration.freeMultiDownloads()), Boolean.valueOf(Configuration.freeSpeed()), Boolean.valueOf(Configuration.freeChromecast()), Boolean.valueOf(Configuration.freeAuto()), Boolean.valueOf(Configuration.freeCDS()));
    }
}
