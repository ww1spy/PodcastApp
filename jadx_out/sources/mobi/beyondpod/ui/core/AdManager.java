package mobi.beyondpod.ui.core;

import com.google.android.gms.ads.AdSize;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.rss.LicenseManager;

/* loaded from: classes.dex */
public class AdManager {
    public static final String Ad_Unit_ID_MyEpisodes = "ca-app-pub-1319643115400669/9972134087";
    public static final int BP_BANNER = 1;
    public static final int BP_FULL_BANNER = 4;
    public static final int BP_LARGE_BANNER = 2;
    public static final int BP_LEADERBOARD = 5;
    public static final int BP_MEDIUM_RECTANGLE = 3;
    public static final int BP_SMART_BANNER = 100;
    private static final String TAG = "AdManager";
    public static final String TestDeviceID = "9CADD452C6D4299D1639631D3E39FE87";

    public static AdSize getAdSizeForCurrentDevice() {
        BeyondPodApplication.getInstance().getResources().getDisplayMetrics();
        int deviceAdSize = deviceAdSize();
        if (deviceAdSize != 100) {
            switch (deviceAdSize) {
                case 1:
                    return AdSize.BANNER;
                case 2:
                    return AdSize.LARGE_BANNER;
                case 3:
                    return AdSize.MEDIUM_RECTANGLE;
                case 4:
                    return AdSize.FULL_BANNER;
                case 5:
                    return AdSize.LEADERBOARD;
                default:
                    return null;
            }
        }
        return AdSize.SMART_BANNER;
    }

    public static int deviceAdSize() {
        return BeyondPodApplication.getInstance().getResources().getInteger(R.integer.ad_layout_type);
    }

    public static boolean areAdsEnabled() {
        if (Configuration.DBGEnableAds() > 0) {
            return true;
        }
        if (Configuration.DBGEnableAds() >= 0 && deviceAdSize() >= 0 && LicenseManager.ifInRestrictedMode()) {
            return Configuration.isAdSupported();
        }
        return false;
    }
}
