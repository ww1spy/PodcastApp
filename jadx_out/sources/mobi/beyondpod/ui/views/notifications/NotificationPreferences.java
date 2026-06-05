package mobi.beyondpod.ui.views.notifications;

import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.auto.MediaIdHelper;

/* loaded from: classes.dex */
public class NotificationPreferences {
    public static final String NO = "0";
    public static final int SHOW_GUIDED_TOUR = 1;
    public static final int SHOW_GUIDED_TOUR_VERSION_UPGRADE = 2;
    public static final int TIP_HOW_TO_EXPAND_CATEGORY = 16;
    public static final int TIP_HOW_TO_MULTI_SELECT = 18;
    public static final int TIP_HOW_TO_SELECT_COMPACT_CARD = 17;
    public static final int TIP_HOW_TO_USE_DRAG_DROP_CATEGORY = 8;
    public static final int TIP_HOW_TO_USE_DRAG_DROP_PLAYLIST = 6;
    public static final int TIP_INTRODUCE_CHROMECAST = 15;
    public static final int TIP_INTRODUCE_SMART_PLAY = 19;
    public static final int TIP_NOW_TO_EXPAND_PLAYER = 12;
    public static final int TIP_NOW_TO_USE_SMART_PLAY = 13;
    public static final int TIP_TAP_TO_ADD_REMOVE_PLAYLIST = 7;
    public static final int WARN_INSTALLED_ON_SD_CARD = 3;
    public static final int WARN_MARK_ALL_PLAYED = 11;
    public static final int WARN_MARK_ALL_READ = 4;
    public static final int WARN_PLAY_EXTERNAL_PLAYER = 0;
    public static final int WARN_REPLACE_PLAYLIST = 10;
    public static final int WARN_START_EPISODE_DOWNLOAD = 9;
    public static final int WARN_START_UPDATE_DOWNLOAD = 5;
    public static final int WARN_TRIAL_EXPIRED = 14;
    public static final String YES = "1";
    private String[] _Prefs = new String[20];

    public NotificationPreferences() {
        resetDefaultPrefs();
        String userNotificationPreferences = Configuration.userNotificationPreferences();
        if (StringUtils.isNullOrEmpty(userNotificationPreferences)) {
            return;
        }
        String[] split = userNotificationPreferences.split("\\|");
        for (int i = 0; i != split.length; i++) {
            if (i < this._Prefs.length) {
                this._Prefs[i] = split[i];
            }
        }
    }

    public void resetDefaultPrefs() {
        this._Prefs[0] = YES;
        this._Prefs[1] = NO;
        this._Prefs[2] = NO;
        this._Prefs[3] = YES;
        this._Prefs[4] = YES;
        this._Prefs[5] = YES;
        this._Prefs[6] = YES;
        this._Prefs[7] = YES;
        this._Prefs[8] = YES;
        this._Prefs[9] = YES;
        this._Prefs[10] = YES;
        this._Prefs[11] = YES;
        this._Prefs[12] = YES;
        this._Prefs[13] = YES;
        this._Prefs[14] = YES;
        this._Prefs[15] = YES;
        this._Prefs[16] = YES;
        this._Prefs[17] = YES;
        this._Prefs[18] = YES;
        this._Prefs[19] = YES;
    }

    public void save() {
        String str = "";
        for (String str2 : this._Prefs) {
            str = str + str2 + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR;
        }
        Configuration.setUserNotificationPreferences(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPreference(int i, String str) {
        return i < this._Prefs.length ? this._Prefs[i] : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPreference(int i, String str) {
        if (i < this._Prefs.length) {
            this._Prefs[i] = str;
            save();
        }
    }
}
