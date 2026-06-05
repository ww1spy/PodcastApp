package mobi.beyondpod.services.auto;

import java.util.HashMap;
import java.util.UUID;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class MediaIdHelper {
    public static final String AUTO_MEDIA_ID_ROOT = "__ROOT__";
    public static final String AUTO_MEDIA_ID_TRIAL_EXPIRED = "___TRIALEXPIRED___";
    public static int MAX_QUEUE_WINDOW = 15;
    public static final String AUTO_MEDIA_ID_SMARTPLAYS = "__SMARTPLAYS__";
    public static final String AUTO_MEDIA_ID_SEPERATOR = "|";
    public static final String AUTO_MEDIA_ID_SMARTPLAYS_ID = "SMARTPLAYS-id";
    public static final String AUTO_MEDIA_ID_EPISODE_TRACKPATH = "EPISODE-TRACKPATH";
    public static final String AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA = AUTO_MEDIA_ID_SMARTPLAYS.concat(AUTO_MEDIA_ID_SEPERATOR).concat(AUTO_MEDIA_ID_SMARTPLAYS_ID).concat(AUTO_MEDIA_ID_SEPERATOR).concat(AUTO_MEDIA_ID_EPISODE_TRACKPATH);
    public static final String AUTO_MEDIA_ID_FEEDS = "__FEEDS__";
    public static final String AUTO_MEDIA_ID_FEED_ID = "FEED-id";
    public static final String AUTO_MEDIA_ID_FEED_SCHEMA = AUTO_MEDIA_ID_FEEDS.concat(AUTO_MEDIA_ID_SEPERATOR).concat(AUTO_MEDIA_ID_FEED_ID).concat(AUTO_MEDIA_ID_SEPERATOR).concat(AUTO_MEDIA_ID_EPISODE_TRACKPATH);
    public static final String AUTO_MEDIA_ID_CATEGORIES = "__CATEGORIES__";
    public static final String AUTO_MEDIA_ID_CATEGORY_ID = "CATEGORY-id";
    public static final String AUTO_MEDIA_ID_CATEGORY_SCHEMA = AUTO_MEDIA_ID_CATEGORIES.concat(AUTO_MEDIA_ID_SEPERATOR).concat(AUTO_MEDIA_ID_CATEGORY_ID).concat(AUTO_MEDIA_ID_SEPERATOR).concat(AUTO_MEDIA_ID_EPISODE_TRACKPATH);

    public static int maxListSize() {
        return Configuration.DBGAutoMaxListSize();
    }

    public static boolean allowBrowsingFeedsAndCategories() {
        return Configuration.DBGAutoBrowsable() > 0;
    }

    public static String buildSmartplayMediaId(String str, String str2) {
        return AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA.replace(AUTO_MEDIA_ID_SMARTPLAYS_ID, str).replace(AUTO_MEDIA_ID_EPISODE_TRACKPATH, str2);
    }

    public static String getSmartplayTrackPathFromMediaId(String str) {
        return getMapFromSchema(AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA, str).get(AUTO_MEDIA_ID_EPISODE_TRACKPATH);
    }

    public static String getSmartplayIdFromMediaId(String str) {
        return getMapFromSchema(AUTO_MEDIA_ID_SMARTPLAYS_SCHEMA, str).get(AUTO_MEDIA_ID_SMARTPLAYS_ID);
    }

    public static String buildFeedMediaId(String str, String str2) {
        return AUTO_MEDIA_ID_FEED_SCHEMA.replace(AUTO_MEDIA_ID_FEED_ID, str).replace(AUTO_MEDIA_ID_EPISODE_TRACKPATH, str2);
    }

    public static UUID getFeedUIDFromMediaId(String str) {
        try {
            return UUID.fromString(str.replace(AUTO_MEDIA_ID_FEEDS, ""));
        } catch (Exception unused) {
            return null;
        }
    }

    public static UUID getFeedIdFromMediaId(String str) {
        try {
            return UUID.fromString(getMapFromSchema(AUTO_MEDIA_ID_FEED_SCHEMA, str).get(AUTO_MEDIA_ID_FEED_ID));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getFeedTrackPathFromMediaId(String str) {
        return getMapFromSchema(AUTO_MEDIA_ID_FEED_SCHEMA, str).get(AUTO_MEDIA_ID_EPISODE_TRACKPATH);
    }

    public static String buildCategoryMediaId(String str, String str2) {
        return AUTO_MEDIA_ID_CATEGORY_SCHEMA.replace(AUTO_MEDIA_ID_CATEGORY_ID, str).replace(AUTO_MEDIA_ID_EPISODE_TRACKPATH, str2);
    }

    public static String getCategoryIdFromMediaId(String str) {
        return getMapFromSchema(AUTO_MEDIA_ID_CATEGORY_SCHEMA, str).get(AUTO_MEDIA_ID_CATEGORY_ID);
    }

    public static String getCategoryNameFromMediaId(String str) {
        return str.replace(AUTO_MEDIA_ID_CATEGORIES, "");
    }

    public static String getCategoryTrackPathFromMediaId(String str) {
        return getMapFromSchema(AUTO_MEDIA_ID_CATEGORY_SCHEMA, str).get(AUTO_MEDIA_ID_EPISODE_TRACKPATH);
    }

    private static HashMap<String, String> getMapFromSchema(String str, String str2) {
        HashMap<String, String> hashMap = new HashMap<>();
        String[] split = str.split("\\|");
        String[] split2 = str2.split("\\|");
        for (int i = 0; i < split.length; i++) {
            try {
                hashMap.put(split[i], split2[i]);
            } catch (ArrayIndexOutOfBoundsException unused) {
                hashMap.put(split[i], "");
            }
        }
        return hashMap;
    }
}
