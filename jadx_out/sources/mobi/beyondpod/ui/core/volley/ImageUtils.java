package mobi.beyondpod.ui.core.volley;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;
import mobi.beyondpod.rsscore.Track;

/* loaded from: classes.dex */
public class ImageUtils {
    public static Bitmap loadEpisodeImage(Track track, int i, int i2) {
        ImageRequestTrack imageRequestTrack;
        if (track == null) {
            return null;
        }
        int min = Math.min(i, i2);
        if (!track.isFullyDownloaded() || track.contentType() == 2) {
            imageRequestTrack = new ImageRequestTrack(FadingNetworkImageViewTrack.generateFeedImageUrl(track.getParentFeed()), null, min, min, null, null, null, track.getParentFeed());
        } else {
            imageRequestTrack = new ImageRequestTrack(FadingNetworkImageViewTrack.getEpisodeImageUrl(track), null, min, min, null, null, track, track.getParentFeed());
        }
        return imageRequestTrack.getEpisodeImageQuick();
    }

    public static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        double min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), false);
    }

    public static Bitmap scaleBitmap(int i, InputStream inputStream) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = i;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }
}
