package mobi.beyondpod.ui.views.base;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.widget.ListView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.ImageUtils;

/* loaded from: classes.dex */
public class UIUtils {
    public static Bitmap getMediaBrowserEpisodeAlbumArt(Track track) {
        Bitmap loadEpisodeImage = ImageUtils.loadEpisodeImage(track, 100, 100);
        if (loadEpisodeImage == null) {
            loadEpisodeImage = FeedImageCache.getSizedFeedImageFor(track.getParentFeed(), 100, 100);
        }
        return loadEpisodeImage == null ? BitmapFactory.decodeResource(BeyondPodApplication.getInstance().getResources(), R.drawable.ic_media_browser_unknown_track) : loadEpisodeImage;
    }

    public static Bitmap getMediaBrowserFeedImage(Feed feed) {
        if (feed.getType() == 1) {
            return BitmapFactory.decodeResource(BeyondPodApplication.getInstance().getResources(), R.drawable.ic_media_browser_virtual_feed);
        }
        Bitmap sizedFeedImageFor = FeedImageCache.getSizedFeedImageFor(feed, 100, 100);
        return sizedFeedImageFor == null ? BitmapFactory.decodeResource(BeyondPodApplication.getInstance().getResources(), R.drawable.ic_media_browser_unknown_feed) : sizedFeedImageFor;
    }

    public static String buildTrackSubtitle(Context context, Track track) {
        String formatEpisodeTimeAsRemaining = formatEpisodeTimeAsRemaining(context, track);
        String formatDateTimeToday = DateTime.formatDateTimeToday(track.getLastModifiedDate());
        return StringUtils.isNullOrEmpty(formatEpisodeTimeAsRemaining) ? formatDateTimeToday : String.format("%s • %s", formatDateTimeToday, formatEpisodeTimeAsRemaining);
    }

    public static String formatEpisodeTimeAsRemaining(Context context, Track track) {
        if (track.getTotalTime() <= 0) {
            return "";
        }
        long totalTime = track.getTotalTime() - track.getPlayedTime();
        if (track.getPlayedTime() <= 0 || totalTime <= 0) {
            return track.totalTimeAsMinuteString();
        }
        return totalTime < 30 ? context.getString(R.string.minute_remaining, CoreHelper.formatSecondsAsMinutes(30L)) : context.getString(R.string.minutes_remaining, CoreHelper.formatSecondsAsMinutes(totalTime));
    }

    public static int setColorAlpha(int i, float f) {
        return Color.argb(Math.min(Math.max((int) (f * 255.0f), 0), 255), Color.red(i), Color.green(i), Color.blue(i));
    }

    public static int scaleColor(int i, float f, float f2) {
        return Color.argb(Math.round(Color.alpha(i) * f2), Math.round(Color.red(i) * f), Math.round(Color.green(i) * f), Math.round(Color.blue(i) * f));
    }

    public static int createStatusBarColorFromCategoryColor(int i) {
        return scaleColor(i, 0.8f, 0.9f);
    }

    @TargetApi(21)
    public static void setStatusBarColor(Activity activity, int i) {
        if (CoreHelper.apiLevel() < 21) {
            return;
        }
        activity.getWindow().setStatusBarColor(i);
    }

    public static boolean isScrollable(ListView listView) {
        if (listView == null) {
            return false;
        }
        int childCount = listView.getChildCount() - 1;
        if (listView.getChildCount() == 0) {
            return false;
        }
        return listView.getChildAt(childCount).getBottom() > listView.getHeight() || listView.getChildAt(0).getTop() < 0 || listView.getChildCount() != listView.getCount();
    }
}
