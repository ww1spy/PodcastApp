package mobi.beyondpod.ui.core.volley;

import android.content.Context;
import android.util.AttributeSet;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;

/* loaded from: classes.dex */
public class FadingNetworkImageViewTrack extends FadingNetworkImageViewFeed {
    private RssFeedItem mRssItem;
    private Track mTrack;

    public FadingNetworkImageViewTrack(Context context) {
        super(context);
    }

    public FadingNetworkImageViewTrack(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FadingNetworkImageViewTrack(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setTrack(Track track, ImageLoader imageLoader) {
        this.mTrack = track;
        this.mFeed = track.getParentFeed();
        super.setImageUrl(getEpisodeImageUrl(track), imageLoader);
    }

    public void setRssItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader) {
        this.mRssItem = rssFeedItem;
        this.mFeed = feed;
        String generateItemImageUrl = generateItemImageUrl(rssFeedItem);
        if (StringUtils.isNullOrEmpty(generateItemImageUrl)) {
            generateItemImageUrl = generateFeedImageUrl(this.mFeed);
        }
        super.setImageUrl(generateItemImageUrl, imageLoader);
    }

    public static String getEpisodeImageUrl(Track track) {
        return String.format("episode://%s", track.trackPath());
    }

    public static String generateItemImageUrl(RssFeedItem rssFeedItem) {
        if (rssFeedItem.isItemImageUsingParentFeedImage()) {
            return null;
        }
        String selectedItemImageUrl = rssFeedItem.selectedItemImageUrl();
        if (StringUtils.isNullOrEmpty(selectedItemImageUrl) && rssFeedItem.itemImageUrls().size() > 0) {
            selectedItemImageUrl = rssFeedItem.itemImageUrls().get(0);
        }
        if (StringUtils.isNullOrEmpty(selectedItemImageUrl)) {
            rssFeedItem.setSelectedItemImageUrlToUseParentFeedImage();
            return null;
        }
        rssFeedItem.setSelectedItemImageUrl(selectedItemImageUrl);
        return selectedItemImageUrl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.ui.core.volley.FadingNetworkImageViewFeed, mobi.beyondpod.ui.core.volley.FadingNetworkImageView
    public void imageError(VolleyError volleyError) {
        if (this.mRssItem != null) {
            this.mRssItem.setSelectedItemImageUrlToUseParentFeedImage();
        }
        super.imageError(volleyError);
    }

    @Override // mobi.beyondpod.ui.core.volley.FadingNetworkImageViewFeed, mobi.beyondpod.ui.core.volley.FadingNetworkImageView
    protected ImageLoader.ImageContainer getImageContainer() {
        return ((ImageLoaderTrack) this.mImageLoader).get(this.mUrl, this.mTrack, this.mFeed, this.mImageListener, this.mMaxImageWidth, this.mMaxImageHeight);
    }

    public static int getDefaultImage(int i) {
        switch (i) {
            case -1:
            case 0:
            case 1:
                return R.drawable.podcast_list_audio_bg;
            case 2:
                return R.drawable.podcast_list_movie_bg;
            case 3:
                return R.drawable.podcast_list_image_bg;
            default:
                return 0;
        }
    }
}
